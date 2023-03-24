import { firebaseConfig } from '../ts/firebaseConfig';
import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";
import {
  getAuth, setPersistence,
  browserLocalPersistence,
  signInWithEmailAndPassword,
  signInAnonymously,
  updateProfile
} from "firebase/auth";
import bgImagePlay from '../assets/playBG.png';
import { gameInterface } from '../ts/gameInterface';


// Definition des variables

const button: HTMLButtonElement | null = document.querySelector('button');
const homeContent: HTMLElement | null = document.getElementById('homeContent');
const loginFrame: HTMLElement | null = document.getElementById('loginFrame');
const cross: HTMLElement | null = document.getElementById('cross');
const loginButton = document.querySelector('.btnLogin');
const emailInput = document.querySelector<HTMLInputElement>('#userEmail');
const passwordInput = document.querySelector<HTMLInputElement>('#userPassword');
const pseudoInput = document.querySelector<HTMLInputElement>('#anonUser');
const background = document.querySelector<HTMLImageElement>('.background')
const stoneElements = document.querySelectorAll<HTMLImageElement>(".stones img");




// Animation du BG et des pierres flottantes 

document.addEventListener("DOMContentLoaded", () => {

  const backgroundElement = document.querySelector(".background");


  if (backgroundElement) {
    backgroundElement.classList.add("animatedBackground");
  }

  stoneElements.forEach((stone) => {
    const x = Math.random() * 100;
    const y = Math.random() * 100;

    stone.style.left = `${x}%`;
    stone.style.top = `${y}%`;
  });
});


// Initialisation du systeme d'authentification et du storage

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);


export { app, db };

// Definition de la persistence pour garder l'utilisateur connecté
// en cas d'actualisation ou retour à l'accueil

setPersistence(auth, browserLocalPersistence)



if (button && homeContent && loginFrame && cross && background) {
  button.addEventListener("click", () => {
    const currentUser = auth.currentUser;
    if (currentUser) {
      // Si l'utilisateur est connecté, le rediriger vers le jeu
      showGame();
    } else {
      // Si l'utilisateur n'est pas connecté, affichez le formulaire de connexion
      background.classList.add("blur");
      homeContent.classList.add("blur");
      stoneElements.forEach((stone) => {
        stone.classList.add("blur");
      });
      loginFrame.classList.add("show");
      cross?.classList.add("show");

      // Si l'utilisateur clique sur la croix, fermer le formulaire de connexion
      cross.addEventListener("click", () => {
        stoneElements.forEach((stone) => {
          stone.classList.remove("blur");
        });
        background.classList.remove("blur");
        homeContent.classList.remove("blur");
        loginFrame.classList.remove("show");
      })
    }
  });
}

function showGame() {
  if (homeContent && loginFrame) {
    homeContent.classList.add('hide');
    homeContent.classList.remove('blur');
    background?.classList.remove("blur");
    stoneElements.forEach((stone) => {
      stone.classList.remove("blur");
    });
    if (background) {
      background.style.backgroundImage = `url(${bgImagePlay})`;
      background.style.width = '100%'
    }

    document.body.style.backgroundPosition = 'center center';
    document.body.style.backgroundRepeat = 'no-repeat';
    document.body.style.backgroundSize = 'cover';
    loginFrame.classList.remove('show');
    gameInterface(auth);
  }
}


if (loginButton && emailInput && passwordInput && pseudoInput && homeContent && loginFrame) {
  loginButton.addEventListener("click", () => {
    const emailValue = emailInput.value.trim();
    const passwordValue = passwordInput.value.trim();
    const pseudoValue = pseudoInput.value.trim();




    if (emailValue && passwordValue && !pseudoValue) {
      // Connecter l'utilisateur avec son email et mot de passe
      signInWithEmailAndPassword(auth, emailValue, passwordValue)
        .then((userCredential) => {
          const user = userCredential.user;
          showGame();
          emailInput.value = '';
          passwordInput.value = '';
          pseudoInput.value = '';
        })
        .catch((error) => {
          const errorCode = error.code;
          const errorMessage = error.message;
          alert(errorMessage);
          console.error(errorMessage);
        });
    } else if (!emailValue && !passwordValue && pseudoValue) {
      if (pseudoInput.value.trim() !== "") {
        signInAnonymously(auth)
          .then(async (userCredential) => {
            const user = userCredential.user;

            // Mettre à jour le profil de l'utilisateur avec le pseudo choisi
            await updateProfile(user, {
              displayName: pseudoValue,
            });


            // Enregistrez l'ID utilisateur et le jeton d'authentification dans le stockage local
            localStorage.setItem("anonymousUserId", user.uid);
            user.getIdToken().then((token) => {
              localStorage.setItem("anonymousUserToken", token);
            });
            showGame();
          })
          .catch((error) => {
            const errorCode = error.code;
            const errorMessage = error.message;
            console.error(errorMessage);
          });
      }
    } else if (!emailValue && !passwordValue && !pseudoValue) {
      alert("Veuillez entrer un pseudo OU un email et un mot de passe.");
    } else {
      alert("Veuillez remplir soit un pseudo, soit un email et un mot de passe, mais pas les deux.");
    }
  });
}


document.addEventListener('keydown', (event) => {
  if (event.key === 'Enter') {
    if (loginFrame && getComputedStyle(loginFrame).visibility == "visible") {
      (loginButton as HTMLButtonElement).click();
    }
  }
});