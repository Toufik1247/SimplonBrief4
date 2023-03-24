import questions from "../questions/openquizzdb_20/OpenQuizzDB_020/openquizzdb_20.json";
import { Auth } from 'firebase/auth';
import { collection, orderBy, limit, addDoc, getFirestore, query, where, getDocs, doc } from "firebase/firestore";
import { db } from "./index"
import bgGoodAnswer from '../assets/answer.svg';
import bgBadAnswer from '../assets/bgBadAnswer.svg'
import answer from '../assets/answer.svg'
import anecdoteDashBg from '../assets/anecdoteDash.svg'
import questionDashBg from '../assets/questionDash.svg'



interface Attributes {
    [key: string]: string;
}

function createElement(tag: string, className?: string, attributes?: Attributes, children?: HTMLElement[]): HTMLElement {
    const element = document.createElement(tag);
    if (className) {
        element.className = className;
    }
    if (attributes) {
        for (const attr in attributes) {
            if (attr === 'textContent') {
                element.textContent = attributes[attr];
            } else {
                element.setAttribute(attr, attributes[attr]);
            }
        }
    }
    if (children) {
        for (const child of children) {
            element.appendChild(child);
        }
    }
    return element;
}

function gameInterface(auth: Auth) {
    const oldPlaycontent = document.querySelector('.playcontent');
    if (oldPlaycontent) {
        oldPlaycontent.remove();
    }
    const logoutButton = createElement('button', 'logoutButton', { id: 'logoutButton' });
    const question = createElement('span', '', { id: 'question' });

    const proposition1 = createElement('span', 'answerSpan', { id: 'proposition1' });
    proposition1.textContent = '';
    const proposition2 = createElement('span', 'answerSpan', { id: 'proposition2' });
    proposition2.textContent = '';
    const proposition3 = createElement('span', 'answerSpan', { id: 'proposition3' });
    proposition3.textContent = '';
    const proposition4 = createElement('span', 'answerSpan', { id: 'proposition4' });
    proposition4.textContent = '';

    const playcontent = createElement('div', 'playcontent');
    playcontent.append(
        createElement('div', 'row1', {}, [
            createElement('div', 'homeIconBox', {}, [
                createElement('div', 'homeIcon')
            ]),
            createElement('div', 'userInfoBox', {}, [
                createElement('div', 'userName'),
                createElement('div', 'userScore'),
                createElement('div', 'userBestScore'),
                createElement('div', 'userAccount'),
                createElement('div', 'userLogout'),
                logoutButton
            ]),
        ]),
        createElement('div', 'row2', {}, [
            createElement('div', 'timerBox', {}, [
                createElement('div', 'timerIcon')
            ]),
            createElement('div', 'questionBox', {}, [
                createElement('div', 'questionDash', {}, [
                    question
                ])
            ]),

            createElement('div', 'nextQuestionBox', {}, [
                createElement('div', 'nextQuestionBubble'),
                createElement('div', 'narrow')
            ])
        ]),
        createElement('div', 'row3', {}, [
            createElement('div', 'column1', {}, [
                createElement('div', 'question1Box', {}, [
                    proposition1
                ]),
                createElement('div', 'question3Box', {}, [
                    proposition2
                ])
            ]),
            createElement('div', 'column2', {}, [
                createElement('div', 'question2Box', {}, [
                    proposition3
                ]),
                createElement('div', 'question4Box', {}, [
                    proposition4
                ])
            ])
        ])
    );

    document.body.appendChild(playcontent);
    loadQuestions(questions, question, proposition1, proposition2, proposition3, proposition4);

    const homeIcon = playcontent.querySelector('.homeIcon')

    if (homeIcon) {
        homeIcon.addEventListener('click', () => {
            window.location.href = '/';
        });
    }


    logoutButton.addEventListener('click', () => {
        auth.signOut().then(() => {
            window.location.replace("/");
        }).catch((error: Error) => {
            console.error(error);
        });
    });

    interface QuizData {
        quizz: {
            fr: {
                débutant: {
                    question: string;
                    propositions: string[];
                    réponse: string;
                    anecdote: string;
                }[];
                confirmé: {
                    question: string;
                    propositions: string[];
                    réponse: string;
                    anecdote: string;
                }[];
                expert: {
                    question: string;
                    propositions: string[];
                    réponse: string;
                    anecdote: string;
                }[];
            };
        };
    }


    function resetAnswerStyles(): void {
        proposition1.style.background = '';
        proposition2.style.background = '';
        proposition3.style.background = '';
        proposition4.style.background = '';
    }


    function loadQuestions(
        questionsData: QuizData,
        question: HTMLElement,
        proposition1: HTMLElement,
        proposition2: HTMLElement,
        proposition3: HTMLElement,
        proposition4: HTMLElement
    ): void {

        const quizDebutant = questionsData.quizz.fr.expert;
        let i = 1;
        let answered = false;
        let correctAnswers = 0;
        let incorrectAnswers = 0;
        const timerIcon = playcontent.querySelector('.timerIcon') as HTMLElement;
        let timerId: ReturnType<typeof setTimeout>;
        const userName = document.querySelector('.userName') as HTMLElement;
        const userScore = document.querySelector('.userScore') as HTMLElement;
        const userBestScore = document.querySelector('.userBestScore') as HTMLElement;
        const questionsCountBox = document.querySelector('.questionsCountBox') as HTMLElement;
        const narrow = playcontent.querySelector('.narrow');
        const nextQuestionBubble = document.querySelector('.nextQuestionBubble') as HTMLElement;
        const questionDash = document.querySelector('.questionDash') as HTMLElement;

        updateScore()

        if (question && proposition1 && proposition2 && proposition3 && proposition4) {
            question.innerText = quizDebutant[0].question;
            proposition1.innerText = quizDebutant[0].propositions[0];
            proposition2.innerText = quizDebutant[0].propositions[1];
            proposition3.innerText = quizDebutant[0].propositions[2];
            proposition4.innerText = quizDebutant[0].propositions[3];
        }

        async function handleQuizStart() {
            const userId = auth.currentUser?.uid;
            if (userId) {
                const bestScore = await getBestScoreByUserId(userId);
                if (bestScore !== null) {
                    if (bestScore > 1) {
                        userBestScore.innerHTML = `Meilleur Score: ${bestScore}`;
                    }
                }
            }
        }

        function handleQuizEnd() {
            console.log("handleQuizEnd called");
            const userId = auth.currentUser?.uid;
            if (userId) {
                saveScore(userId, correctAnswers);
            }

            // Gérer ici la fin du quiz
        }

        async function saveScore(userId: string, score: number) {
            try {
                const scoresCollection = collection(db, "scores");
                const newScore = {
                    userId: userId,
                    score: score,
                    timestamp: new Date(),
                };
                const docRef = await addDoc(scoresCollection, newScore);
            } catch (error) {
                console.error("Erreur lors de l'enregistrement du score: ", error);
            }
        }

        interface ScoreData {
            userId: string;
            score: number;
            timestamp: Date;
        }

        async function getBestScoreByUserId(userId: string): Promise<number | null> {
            try {
                const scoresCollection = collection(db, "scores");
                const q = query(scoresCollection, where("userId", "==", userId), orderBy("score", "desc"), limit(1));
                const querySnapshot = await getDocs(q);

                if (!querySnapshot.empty) {
                    let bestScore: number | null = null;

                    querySnapshot.forEach((doc) => {
                        const scoreData = doc.data() as ScoreData;
                        bestScore = scoreData.score;
                    });

                    return bestScore;
                }
            } catch (error) {
                console.error("Erreur lors de la récupération du meilleur score :", error);
            }
            return null;
        }

        function changeBackground() {
            questionDash.style.backgroundImage = `url(${anecdoteDashBg})`;
            questionDash.classList.remove('rotateY');
        }

        function updateScore(isCorrect: boolean | null = null): void {
            if (isCorrect !== null) {
                if (isCorrect) {
                    correctAnswers++;
                } else {
                    incorrectAnswers++;
                }
            }
            userScore.innerHTML = `Bonnes réponses: ${correctAnswers}`;


        }

        function startTimer(): NodeJS.Timeout {

            if (questionDash) {
                questionDash.style.backgroundImage = `url(${questionDashBg})`;
            }

            clearInterval(timerId);

            let time: number = 5;
            timerIcon.innerHTML = "";
            timerIcon.innerText = time.toString();

            timerId = setInterval(() => {
                time -= 1;
                timerIcon.innerText = time.toString();

                if (time <= 0) {
                    clearInterval(timerId);
                    showCorrectAnswerAndAnecdote();
                    incorrectAnswers++;
                    updateScore()
                }
            }, 1000);

            return timerId;
        }

        function disableAnswerButtons(): void {
            (proposition1 as HTMLButtonElement).disabled = true;
            (proposition2 as HTMLButtonElement).disabled = true;
            (proposition3 as HTMLButtonElement).disabled = true;
            (proposition4 as HTMLButtonElement).disabled = true;
        }

        function enableAnswerButtons(): void {
            (proposition1 as HTMLButtonElement).disabled = false;
            (proposition2 as HTMLButtonElement).disabled = false;
            (proposition3 as HTMLButtonElement).disabled = false;
            (proposition4 as HTMLButtonElement).disabled = false;
        }

        function showCorrectAnswerAndAnecdote(): void {
            const correctAnswer = quizDebutant[i - 1].réponse;

            if (proposition1.innerText === correctAnswer) {
                proposition1.style.background = `url(${answer})`;
                proposition1.style.backgroundSize = '100% 100%'
            } else if (proposition2.innerText === correctAnswer) {
                proposition2.style.background = `url(${answer})`;
                proposition2.style.backgroundSize = '100% 100%'
            } else if (proposition3.innerText === correctAnswer) {
                proposition3.style.background = `url(${answer})`;
                proposition3.style.backgroundSize = '100% 100%'
            } else if (proposition4.innerText === correctAnswer) {
                proposition4.style.background = `url(${answer})`;
                proposition4.style.backgroundSize = '100% 100%'
            }

            if (questionDash) {
                questionDash.classList.add('rotateY');
                setTimeout(changeBackground, 400);
                question.innerText = quizDebutant[i - 1].anecdote;
            }

            disableAnswerButtons();
            updateScore();
        }

        handleQuizStart();
        startTimer();

        const user = auth.currentUser;
        if (user) {
            const pseudo = user.displayName;
            userName.innerHTML = `${pseudo}`;
        }

        narrow?.addEventListener('mouseenter', () => {
            nextQuestionBubble.style.visibility = 'visible';
            nextQuestionBubble.style.transform = 'translate(-50%, -10px)';
            nextQuestionBubble.style.opacity = '1';
        });

        narrow?.addEventListener('mouseleave', () => {
            nextQuestionBubble.style.visibility = 'hidden';
            nextQuestionBubble.style.transform = 'translate(-50%, 10px)';
            nextQuestionBubble.style.opacity = '0';
        });

        narrow?.addEventListener('click', () => {
            const timeLeft = parseInt(timerIcon.innerText);

            if (!answered && timeLeft > 0) return;
            if (i >= quizDebutant.length) {
                // Gérer la fin du quiz
                console.log("FIN");
                handleQuizEnd();
                return;
            }

            resetAnswerStyles();
            enableAnswerButtons();
            question.innerText = quizDebutant[i].question;
            proposition1.innerText = quizDebutant[i].propositions[0];
            proposition2.innerText = quizDebutant[i].propositions[1];
            proposition3.innerText = quizDebutant[i].propositions[2];
            proposition4.innerText = quizDebutant[i].propositions[3];
            i += 1;
            answered = false;
            clearInterval(timerId);
            timerId = startTimer();
        });

        function checkAnswer(answer: string, answerElement: HTMLElement, timerId: ReturnType<typeof setTimeout>): void {
            const timeLeft = parseInt(timerIcon.innerText);

            if (answered || timeLeft <= 0) return;

            if (answer === quizDebutant[i - 1].réponse) {
                answerElement.style.background = `url(${bgGoodAnswer})`;
                answerElement.style.backgroundSize = '100% 100%';
                updateScore(true);
            } else {
                answerElement.style.background = `url(${bgBadAnswer})`;
                answerElement.style.backgroundSize = '100% 100%'
                showCorrectAnswerAndAnecdote();
                updateScore(false);
            }

            if (questionDash) {
                questionDash.classList.add('rotateY');
                setTimeout(changeBackground, 400);
                question.innerText = quizDebutant[i - 1].anecdote;
            }

            answered = true;
            clearInterval(timerId);
        }

        proposition1.addEventListener("click", () => {
            checkAnswer(proposition1.innerText, proposition1, timerId);
        });

        proposition2.addEventListener("click", () => {
            checkAnswer(proposition2.innerText, proposition2, timerId);
        });

        proposition3.addEventListener("click", () => {
            checkAnswer(proposition3.innerText, proposition3, timerId);
        });

        proposition4.addEventListener("click", () => {
            checkAnswer(proposition4.innerText, proposition4, timerId);
        });
    }
    return logoutButton;
}

export { gameInterface };