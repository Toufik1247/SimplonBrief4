-- -----------------------------------------------------------------------------
-- 
-- OpenQuizzDB
-- Fournisseur de contenu libre
--
-- Quizz : Culture générale 4
-- [ La culture, c'est l'expression du vivant ]
-- Difficulté du quizz : 3 / 5
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
  ('fr', 'Culture générale 4', 'Dans « Les Bijoux de la Castafiore », quel journal annonce les noces de la diva ?', '« Paris-Flash »', '« Jours de Paris »', '« Stars de France »', '« Ici Pour Vous »', '1', 'Trois ans après le succès de « Tintin au Tibet », Hergé semble ici être à l\'apogée de son oeuvre sur le plan narratif.', 'https://fr.wikipedia.org/wiki/Les_Bijoux_de_la_Castafiore'),
  ('fr', 'Culture générale 4', 'Comment se prénomme la copine de Popeye le marin, héros des dessins animés d\'antan ?', 'Olive', 'Myrtille', 'Mimosa', 'Framboise', '1', 'Dans le dessin animé, Olive se fait régulièrement séduire et kidnapper par Brutus avant d\'être sauvée par Popeye.', 'https://fr.wikipedia.org/wiki/Popeye'),
  ('fr', 'Culture générale 4', 'Quel jeu de dés populaire porte le nom de sa combinaison gagnante ?', '421', '666', '325', '210', '1', 'On joue au 421 (ou à zanzibar) à l\'aide de trois dés et d\'un certain nombre de jetons ou fiches (souvent 11 ou 21).', 'https://fr.wikipedia.org/wiki/421_(jeu)'),
  ('fr', 'Culture générale 4', 'Quel film est désormais célèbre pour sa scène de la tarte aux pommes ?', '« American Pie »', '« 40 jours/40 nuits »', '« Cross roads »', '« Midnight Kitchen »', '1', 'Quatre adolescents font le pacte de perdre leur virginité avant d\'entrer en fac, ce qui amènera de nombreuses mésaventures.', 'https://fr.wikipedia.org/wiki/American_Pie_(film)'),
  ('fr', 'Culture générale 4', 'Dans la mythologie, combien de travaux Héraclès fut-il condamné à effectuer ?', 'Douze', 'Sept', 'Dix', 'Seize', '1', 'La mythologie grecque lui prête un très grand nombre d\'aventures qui le feront voyager à travers le monde connu des Doriens.', 'https://fr.wikipedia.org/wiki/Héraclès'),
  ('fr', 'Culture générale 4', 'Que symbolisent les cinq anneaux du drapeau olympique ?', 'Les 5 continents', 'Les 5 doigts', 'Les 5 médailles', 'Les 5 épreuves', '1', 'Durant la cérémonie d\'ouverture, le drapeau olympique fait son entrée dans le stade porté horizontalement par des athlètes.', 'https://fr.wikipedia.org/wiki/Drapeau_olympique'),
  ('fr', 'Culture générale 4', 'Quels abats prépare-t-on généralement à la mode de Caen ?', 'Tripes', 'Rognons', 'Ris de veau', 'Andouillettes', '1', 'Cette préparation culinaire normande est réalisée avec les quatre parties de l\'estomac d\'un ruminant et un pied de boeuf.', 'https://fr.wikipedia.org/wiki/Tripes_à_la_mode_de_Caen'),
  ('fr', 'Culture générale 4', 'Combien de doigts possède le gant tricoté par Thérèse dans « Le père Noël est une ordure » ?', 'Trois', 'Quatre', 'Cinq', 'Six', '1', '« Le père Noël est une ordure » est à l\'origine (1979) une pièce de théâtre interprétée par la troupe du Splendid.', 'https://fr.wikipedia.org/wiki/Le_Père_Noël_est_une_ordure'),
  ('fr', 'Culture générale 4', 'Si vous faites un baby-foot à 4 par équipes de 2, combien de barres maniera chaque joueur ?', 'Deux', 'Une', 'Trois', 'Quatre', '1', 'En France, le baby-foot est principalement un jeu de café (on estime à 500 000 unités) où on lui adjoint un monnayeur.', 'https://fr.wikipedia.org/wiki/Baby-foot'),
  ('fr', 'Culture générale 4', 'Dans les jeux vidéos, comment se prénomme le compagnon champignon de Mario ?', 'Toad', 'Luigi', 'Peach', 'Toop', '1', 'Les Toad des jeux vidéo Nintendo, serviteurs de la Princesse Peach, ont la forme de champignons anthropomorphiques.', 'https://fr.wikipedia.org/wiki/Mario_(personnage)'),
  ('fr', 'Culture générale 4', 'Sur quelle partie du corps du serpent à lunettes les lunettes sont-elles situées ?', 'Derrière la tête', 'Sous les yeux', 'Dans la bouche', 'Sur la queue', '2', 'Dans l\'imagerie populaire, le serpent à lunettes (ou le cobra égyptien) est associé au fakir charmeur de serpents.', 'https://fr.wikipedia.org/wiki/Cobra'),
  ('fr', 'Culture générale 4', 'Quel est le nom du chanteur leader du groupe Depeche Mode ?', 'David Gahan', 'Martin Gore', 'Andrew Fletcher', 'Alan Wilder', '2', 'Depuis 2005, enhardi par son succès en solo, le chanteur Dave Gahan participe à l\'écriture de certains morceaux.', 'https://fr.wikipedia.org/wiki/Depeche_Mode'),
  ('fr', 'Culture générale 4', 'Sur quel continent retrouve-t-on la Papouasie-Nouvelle-Guinée ?', 'Océanie', 'Afrique', 'Asie', 'Amérique', '2', 'Colonisée par l\'Australie, la Papouasie-Nouvelle-Guinée est indépendante au sein du Commonwealth depuis 1975.', 'https://fr.wikipedia.org/wiki/Papouasie-Nouvelle-Guinée'),
  ('fr', 'Culture générale 4', 'En combien de points se joue un set de badminton depuis 2007 ?', '21 points', '15 points', '9 points', '7 points', '2', 'Le badminton nécessite une excellente condition physique ainsi que de très bonnes qualités techniques et tactiques.', 'https://fr.wikipedia.org/wiki/Badminton'),
  ('fr', 'Culture générale 4', 'Par quelle locution peut-on traduire la phrase swahilie hakuna matata ?', 'Aucun souci', 'Je crois en moi', 'Tout est possible', 'La vie est un soleil', '2', 'L\'expression a surtout été grandement popularisée en 1994 par le film d\'animation des studios Disney « Le Roi lion ».', 'https://fr.wikipedia.org/wiki/Hakuna_matata'),
  ('fr', 'Culture générale 4', 'Quelles villes françaises sont reliées par la célèbre route nationale 7 ?', 'Paris et Nice', 'Paris et Sète', 'Paris et Troyes', 'Paris et Foix', '2', 'La route nationale 7, ou RN7, est parfois également appelée la route des vacances ou encore la route Bleue.', 'https://fr.wikipedia.org/wiki/Route_nationale_7_(France_métropolitaine)'),
  ('fr', 'Culture générale 4', 'Le jeans est un vêtement universel qui doit son nom à quelle ville ?', 'Gênes', 'Jersey', 'Giens', 'Genève', '2', 'Le bleu du jeans provenait d\'une teinture (blu di genova) correspondant à la couleur originelle des bleus de travail rivetés.', 'https://fr.wikipedia.org/wiki/Jeans'),
  ('fr', 'Culture générale 4', 'Comment un quartier de mandarine est-il aussi parfois appelé ?', 'Cuisse', 'Fesse', 'Jambe', 'Bras', '2', 'Une mandarine se divise généralement en une dizaine de quartiers qui peuvent aisément être séparés sans perdre de jus.', 'https://fr.wikipedia.org/wiki/Mandarine'),
  ('fr', 'Culture générale 4', 'Quelle était la nationalité du compositeur Piotr Ilitch Tchaïkovski ?', 'Russe', 'Autrichienne', 'Roumaine', 'Polonaise', '2', 'Tchaïkovski s\'illustra particulièrement par ses onze opéras, ses huit symphonies, ses suites pour orchestre et ses ballets.', 'https://fr.wikipedia.org/wiki/Piotr_Ilitch_Tchaïkovski'),
  ('fr', 'Culture générale 4', 'Coluche avait annoncé sa candidature aux élections présidentielles de quelle année ?', '1981', '1974', '1988', '1995', '2', 'Son principal slogan était le suivant : « Avant moi, la France était coupée en deux. Maintenant, elle sera pliée en quatre ».', 'https://fr.wikipedia.org/wiki/Coluche'),
  ('fr', 'Culture générale 4', 'Combien de pattes au maximum peut avoir un mille-pattes ?', '750', '950', '1150', '1350', '3', 'Le diplopode vit sous les pierres, dans le sol, dans le bois en décomposition et dans les endroits humides.', 'https://fr.wikipedia.org/wiki/Diplopoda'),
  ('fr', 'Culture générale 4', 'Quel est le nom du fils de Végéta dans le manga « Dragon Ball » ?', 'Trunks', 'Son Gohan', 'Yamcha', 'Vegeto', '3', 'Ce personnage a la particularité d\'exister deux fois dans l\'histoire, Trunks du présent et Trunks du futur.', 'https://fr.wikipedia.org/wiki/Trunks'),
  ('fr', 'Culture générale 4', 'Quelle ville de Tunisie est réputée pour ses tapis artisanaux ?', 'Kairouan', 'Sousse', 'Gabès', 'Bizerte', '3', 'Kairouan est souvent désignée comme la quatrième ville sainte de l\'islam et la première ville sainte du Maghreb.', 'https://fr.wikipedia.org/wiki/Kairouan'),
  ('fr', 'Culture générale 4', 'Quelle reine était représentée sur le tout premier timbre-poste émis ?', 'Victoria', 'Astrid', 'Marie', 'Blanche', '3', 'La collection et l\'étude des timbres postaux et fiscaux, précieux et populaires pour des collectionneurs, est appelée la philatélie.', 'https://fr.wikipedia.org/wiki/Timbre_postal'),
  ('fr', 'Culture générale 4', 'Quel est le plus grand satellite naturel de notre système solaire ?', 'Ganymède', 'Titan', 'Umbriel', 'La Lune', '3', 'Sur l\'échelle des distances au centre de Jupiter, il s\'agit du septième satellite naturel connu de la planète.', 'https://fr.wikipedia.org/wiki/Ganymède_(lune)'),
  ('fr', 'Culture générale 4', 'Pendant la Seconde Guerre mondiale, quel allemand surnommait-on le Renard du désert ?', 'Erwin Rommel', 'Friedrich Fromm', 'Fritz von Lossberg', 'Walter Brehmer', '3', 'Rommel a reçu ce surnom, par ses compatriotes et ses adversaires, suite à sa campagne en Afrique du Nord.', 'https://fr.wikipedia.org/wiki/Erwin_Rommel'),
  ('fr', 'Culture générale 4', 'Quel système informatique libre, basé sur la sécurité, est représenté par un poisson globe ?', 'OpenBSD', 'MacOS X', 'Gentoo', 'Debian', '3', 'Le projet OpenBSD est réputé pour son intransigeance sur la liberté du logiciel et du code source ainsi que sur la cryptographie.', 'https://fr.wikipedia.org/wiki/OpenBSD'),
  ('fr', 'Culture générale 4', 'En 1963, un mystérieux cerveau organisa le hold-up du train postal reliant quelles villes ?', 'Glasgow à Londres', 'Liverpool à Brighton', 'Manchester à York', 'Cambridge à Oxford', '3', 'Considéré à l\'époque comme le casse du siècle, le gang de 15 personnes s\'empara d\'un butin de 68 millions de dollars actuels.', 'https://fr.wikipedia.org/wiki/Attaque_du_train_postal_Glasgow-Londres'),
  ('fr', 'Culture générale 4', 'Qui a reçu la première étoile sur le Walk of Fame de Los Angeles ?', 'Joanne Woodward', 'Judy Garland', 'Charlie Chaplin', 'Tod Browning', '3', 'Le Walk of Fame (littéralement Promenade de la célébrité) est un hommage aux différents acteurs du show business.', 'https://fr.wikipedia.org/wiki/Walk_of_Fame_(Hollywood)'),
  ('fr', 'Culture générale 4', 'Comment peut-on traduire le mot goupil en vieux français ?', 'Renard', 'Lièvre', 'Corbeau', 'Hérisson', '3', 'Cette désignation est devenue majoritaire par l\'influence de Renart le goupil, héros du « Roman de Renart ».', 'https://fr.wikipedia.org/wiki/Goupil'),
