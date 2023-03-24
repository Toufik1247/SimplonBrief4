-- -----------------------------------------------------------------------------
-- 
-- OpenQuizzDB
-- Fournisseur de contenu libre
--
-- Quizz : Culture générale 3
-- [ La culture ne s'hérite pas, elle se conquiert ]
-- Difficulté du quizz : 2 / 5
-- Rédacteur : Philippe Bresoux
-- 
-- https://www.openquizzdb.org
--  
-- -----------------------------------------------------------------------------

-- 
-- Structure de la table openquizzdb
--

DROP TABLE IF EXISTS openquizzdb;
CREATE TABLE IF NOT EXISTS openquizzdb (
  quizz_id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  langue varchar(2) NOT NULL default 'fr',
  theme varchar(100) NOT NULL default '',
  question varchar(255) NOT NULL default '',
  prop1 varchar(40) NOT NULL default '',
  prop2 varchar(40) NOT NULL default '',
  prop3 varchar(40) NOT NULL default '',
  prop4 varchar(40) NOT NULL default '',
  niveau char(1) NOT NULL default '',
  anecdote varchar(255) NOT NULL default '',
  wiki varchar(255) NOT NULL default '',
  PRIMARY KEY (quizz_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table openquizzdb
--

INSERT INTO
  openquizzdb (langue,theme,question,prop1,prop2,prop3,prop4,niveau,anecdote,wiki)
VALUES
  ('fr', 'Culture générale 3', 'Dans quel domaine artistique le français Jacques Majorelle a-t-il exercé ses talents ?', 'Peinture', 'Cinéma', 'Théâtre', 'Photographie', '1', 'En 1937, Jacques Majorelle a peint sa villa de couleurs vives, dominées par le bleu auquel il donnera son nom.', 'https://fr.wikipedia.org/wiki/Jacques_Majorelle'),
  ('fr', 'Culture générale 3', 'Quelle est la nationalité du talentueux coureur cycliste Eddy Merckx ?', 'Belge', 'Autrichienne', 'Hollandaise', 'Suisse', '1', 'Professionnel de 1965 à 1978, Eddy Merckx est souvent considéré comme le plus grand cycliste de l\'histoire de ce sport.', 'https://fr.wikipedia.org/wiki/Eddy_Merckx'),
  ('fr', 'Culture générale 3', 'À quel historien et pédagogue français doit-on les Jeux olympiques modernes ?', 'Pierre de Coubertin', 'Napoléon Bonaparte', 'Duc de Windsor', 'Pie XI', '1', 'La médaille Pierre-de-Coubertin, attribuée par le CIO, démontre aux Jeux olympiques un véritable esprit sportif.', 'https://fr.wikipedia.org/wiki/Pierre_de_Coubertin'),
  ('fr', 'Culture générale 3', 'À quel insecte la marque Volkswagen a-t-elle emprunté le nom pour une des ses voitures ?', 'Coccinelle', 'Libellule', 'Sauterelle', 'Papillon', '1', 'Produite en 1938, la Coccinelle fut conçue par l\'ingénieur Ferdinand Porsche à la demande du chancelier Adolf Hitler.', 'https://fr.wikipedia.org/wiki/Volkswagen_Coccinelle'),
  ('fr', 'Culture générale 3', 'Quel petit animal porte parfois le nom vernaculaire de rainette ?', 'Grenouille', 'Tortue', 'Hérisson', 'Libellule', '1', 'Les rainettes les plus connues en Europe sont la rainette verte (aux yeux d\'or et arboricoles) et la rainette méridionale.', 'https://fr.wikipedia.org/wiki/Rainette'),
  ('fr', 'Culture générale 3', 'Quel reptile africain fait en sorte que sa peau prenne la couleur du milieu où il évolue ?', 'Caméléon', 'Crotale', 'Genette', 'Lézard', '1', 'Avec plus de 200 espèces, les plus anciens fossiles de caméléons connus datent d\'il y a environ 65 millions d\'années.', 'https://fr.wikipedia.org/wiki/Chamaeleonidae'),
  ('fr', 'Culture générale 3', 'Selon une expression bien connue, avec quoi ne mélange-t-on pas les serviettes ?', 'Les torchons', 'Les balais', 'Les brosses', 'Les éponges', '1', 'La serpillière est un morceau de toile grossière et résistante, de forme plus ou moins régulière, servant à laver les sols.', 'https://fr.wikipedia.org/wiki/Serpillière'),
  ('fr', 'Culture générale 3', 'Le sens du mot capharnaüm désigne en français un lieu considéré comme...', 'En désordre', 'Inexistant', 'Perdu', 'Secret', '1', 'Le mot se rapproche phonétiquement de cafourniau, petite pièce à côté de la maison servant de débarras obscur.', 'https://fr.wikipedia.org/wiki/Capharnaüm'),
  ('fr', 'Culture générale 3', 'Quel est le métier exercé par Dick Tracy, personnage créé par Chester Gould ?', 'Détective', 'Journaliste', 'Photographe', 'Informaticien', '1', 'Dick Tracy incarne un détective très intelligent de la culture pop américaine qui combat divers méchants.', 'https://fr.wikipedia.org/wiki/Dick_Tracy'),
  ('fr', 'Culture générale 3', 'Qui aurait murmuré cette phrase en 1633 : « Et pourtant elle tourne » ?', 'Galilée', 'De Vinci', 'Copernic', 'Newton', '1', 'Galilée est considéré comme fondateur de la physique, qui s\'est imposée comme la première des sciences exactes modernes.', 'https://fr.wikipedia.org/wiki/Galilée_(savant)'),
  ('fr', 'Culture générale 3', 'Dans quel pays se situe la Kabylie, région historique et ethnolinguistique ?', 'Algérie', 'Tunisie', 'Maroc', 'Irak', '2', 'Dénuée d\'existence administrative globale, la Kabylie tient son nom d\'une population de culture et de traditions berbères.', 'https://fr.wikipedia.org/wiki/Kabylie'),
  ('fr', 'Culture générale 3', 'Quel sport fut créé par Jigoro Kano, alors éducateur dans l\'enseignement primaire ?', 'Judo', 'Karaté', 'Sumo', 'Tae kwon do', '2', 'Jigoro Kano, père de neuf enfants, est le seul judoka à avoir reçu la ceinture blanche après la ceinture rouge.', 'https://fr.wikipedia.org/wiki/Jigoro_Kano'),
  ('fr', 'Culture générale 3', 'Quel célèbre compositeur et musicien allemand est devenu sourd à 27 ans ?', 'Beethoven', 'Wagner', 'Bach', 'Mozart', '2', 'Aujourd\'hui encore, l\'oeuvre de Ludwig van Beethoven est reprise dans de nombreux films et génériques d\'émissions.', 'https://fr.wikipedia.org/wiki/Ludwig_van_Beethoven'),
  ('fr', 'Culture générale 3', 'Situé au nord du continent africain, sur combien de pays le Sahara est-il étendu ?', 'Dix', 'Cinq', 'Huit', 'Treize', '2', 'Des analyses de pollen pratiquées par des scientifiques montrent que des zones forestières ont bel et bien existé au Sahara.', 'https://fr.wikipedia.org/wiki/Sahara'),
  ('fr', 'Culture générale 3', 'Quel poisson prédateur commun vivant en eaux douces possède environ 700 dents ?', 'Brochet', 'Carpe', 'Truite', 'Goujon', '2', 'Partiellement protégé en France, le brochet est un excellent régulateur de population des lacs et des étangs.', 'https://fr.wikipedia.org/wiki/Grand_Brochet'),
  ('fr', 'Culture générale 3', 'Qui a réalisé le film « The Pledge » avec Jack Nicholson et Robin Wright Penn ?', 'Sean Penn', 'Sam Mendes', 'John Astin', 'Tom Hanks', '2', 'Le film « The Pledge » sera un échec au box-office, ne récoltant qu\'environ 29 millions de dollars pour un budget de 35 millions.', 'https://fr.wikipedia.org/wiki/The_Pledge'),
  ('fr', 'Culture générale 3', 'En quelle année Philippe Noiret se fit-il connaître avec le film « Zazie dans le métro » ?', '1960', '1950', '1970', '1980', '2', 'Philippe Noiret a écrit son autobiographie intitulée « Mémoire cavalière », avec la collaboration d\'Antoine de Meaux.', 'https://fr.wikipedia.org/wiki/Zazie_dans_le_métro_(film)'),
  ('fr', 'Culture générale 3', 'Aux côtés de quel musicien Élodie Frégé a-t-elle sorti « Le jeu des 7 erreurs » ?', 'Benjamin Biolay', 'Pascal Obispo', 'Laurent Voulzy', 'Etienne Daho', '2', 'Le deuxième album d\'Élodie Frégé, sorti en 2006 et certifié disque d\'or, tranche avec le premier, le souhaitant plus à son image.', 'https://fr.wikipedia.org/wiki/Élodie_Frégé'),
  ('fr', 'Culture générale 3', 'Quel auteur belge de bandes dessinées est le scénariste de « Kid Paddle » ?', 'Midam', 'Midem', 'Modem', 'Mudim', '2', 'Fan absolu de jeux vidéo, le jeune Kid Paddle a tendance à confondre les univers de ces jeux avec le monde réel.', 'https://fr.wikipedia.org/wiki/Kid_Paddle'),
  ('fr', 'Culture générale 3', 'Dans quel continent trouve-t-on le mandrill, apparenté au babouin ?', 'Afrique', 'Asie', 'Océanie', 'Europe', '2', '75 des 188 espèces de primates sont aujourd\'hui menacées de disparition, victimes de la déforestation et du braconnage.', 'https://fr.wikipedia.org/wiki/Mandrillus_sphinx'),
  ('fr', 'Culture générale 3', 'Combien de temps environ dura l\'impressionnant règne de la reine Victoria ?', '64 ans', '47 ans', '53 ans', '39 ans', '3', 'Son règne de 63 ans et sept mois est le second plus long de toute l\'histoire du Royaume-Uni, après celui d\'Élisabeth II.', 'https://fr.wikipedia.org/wiki/Victoria_(reine)'),
  ('fr', 'Culture générale 3', 'Combien y avait-il de candidats au premier tour des présidentielles de 2007 en France ?', 'Douze', 'Onze', 'Dix', 'Treize', '3', 'Le déroulement de l\'élection présidentielle est fixé par les articles 6, 7 et 58 de la Constitution française.', 'https://fr.wikipedia.org/wiki/Élection_présidentielle_en_France'),
  ('fr', 'Culture générale 3', 'Le futurisme est un mouvement littéraire et artistique originaire de quel pays ?', 'Italie', 'France', 'Royaume-Uni', 'Allemagne', '3', 'Le futurisme est un mouvement qui rejette la tradition esthétique et exalte le monde moderne et les machines.', 'https://fr.wikipedia.org/wiki/Futurisme'),
  ('fr', 'Culture générale 3', 'De symbole T, que vaut le préfixe téra, extrait du système international ?', '10 exposant 12', '10 exposant 9', '10 exposant 15', '10 exposant 20', '3', 'Dans le domaine des ondes électromagnétiques, on parle de térahertz tandis qu\'en astronomie, on parle de téramètres.', 'https://fr.wikipedia.org/wiki/Téra'),
  ('fr', 'Culture générale 3', 'À qui doit-on le canal de Suez, percé entre 1859 et 1869 ?', 'F. de Lesseps', 'L. Massine', 'A. Jackson', 'F. Charles', '3', 'Le canal de Suez permet aux navires d\'aller d\'Europe en Asie sans devoir contourner l\'Afrique par le cap de Bonne-Espérance.', 'https://fr.wikipedia.org/wiki/Canal_de_Suez'),
  ('fr', 'Culture générale 3', 'Quelle plante à la racine comestible est utilisée pour la fabrication du tapioca ?', 'Manioc', 'Guarana', 'Ginseng', 'Gingembre', '3', 'Le tapioca est une fécule produite à partir des racines du manioc amer (toxique avant traitement) séchées puis traitées.', 'https://fr.wikipedia.org/wiki/Tapioca'),
  ('fr', 'Culture générale 3', 'Quelle unité monétaire est principalement utilisée au Paraguay ?', 'Guarani', 'Couronne', 'Peso', 'Franc', '3', 'La Banco Central del Paraguay a annoncé l\'adoption en 2011 du nuevo guarani, valant 1 000 guaranies actuels.', 'https://fr.wikipedia.org/wiki/Guarani_(monnaie)'),
  ('fr', 'Culture générale 3', 'Quel est le prénom de la fille du musicien brésilien Joao Gilberto ?', 'Bebel', 'Rosanna', 'Felicia', 'Hanne', '3', 'Joao Gilberto, né au Brésil en 1931 et maîtrisant le français, est considéré comme le principal créateur de la bossa nova.', 'https://fr.wikipedia.org/wiki/Bebel_Gilberto'),
  ('fr', 'Culture générale 3', 'Quel guitariste a fondé le groupe de heavy-metal Kiss, en 1973 ?', 'Paul Stanley', 'Dave Mustaine', 'Kirk Hammett', 'Mick Mars', '3', 'Le groupe Kiss est devenu célèbre entre autres avec leurs costumes extravagants et la très grande langue de Gene Simmons.', 'https://fr.wikipedia.org/wiki/Kiss'),
  ('fr', 'Culture générale 3', 'Les félins ont tous des griffes rétractiles sauf lequel de ces carnivores ?', 'Guépard', 'Léopard', 'Panthère', 'Lion', '3', 'Les félins sont digitigrades : ils marchent en appuyant sur leurs doigts, la plante du pied ne se posant pas sur le sol.', 'https://fr.wikipedia.org/wiki/Felidae'),
