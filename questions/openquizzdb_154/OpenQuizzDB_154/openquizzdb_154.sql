-- -----------------------------------------------------------------------------
-- 
-- OpenQuizzDB
-- Fournisseur de contenu libre
--
-- Quizz : Culture générale 2
-- [ Il faut cultiver notre jardin ]
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
  ('fr', 'Culture générale 2', 'Quel arbre est connu pour atteindre les volumes les plus importants ?', 'Séquoia', 'Chêne', 'Pin', 'Hêtre', '1', 'Le séquoia géant a une croissance rapide annuelle moyenne de cinquante cm dans ses premières années, puis un mètre par an.', 'https://fr.wikipedia.org/wiki/Séquoia_géant'),
  ('fr', 'Culture générale 2', 'Quelles sont les trois couleurs fondamentales pour le peintre ?', 'Rouge, bleu et jaune', 'Blanc, bleu et rouge', 'Vert, rouge et jaune', 'Rouge, bleu et vert', '1', 'La couleur et la tonalité sont l\'essence même de la peinture, comme le sont la hauteur et le rythme pour la musique.', 'https://fr.wikipedia.org/wiki/Peinture'),
  ('fr', 'Culture générale 2', 'Dans quelle ville peut-on admirer le très touristique pont des Soupirs ?', 'Venise', 'Avignon', 'Prague', 'Londres', '1', 'Le pont des Soupirs, suggérant le soupir des prisonniers, est l\'un des lieux touristiques les plus célèbres de la ville de Venise.', 'https://fr.wikipedia.org/wiki/Pont_des_Soupirs'),
  ('fr', 'Culture générale 2', 'Quel métier exerçait le sportif argentin Juan Manuel Fangio ?', 'Pilote', 'Nageur', 'Boxeur', 'Coureur', '1', 'Juan Manuel Fangio a littéralement dominé la discipline reine du sport automobile dans les années cinquante.', 'https://fr.wikipedia.org/wiki/Juan_Manuel_Fangio'),
  ('fr', 'Culture générale 2', 'Quelle personne a pour mission principale de gérer un site internet ?', 'Webmaster', 'Webcontroler', 'Websiter', 'Webcleaner', '1', 'Un webmaster est un professionnel d\'internet entendu comme responsable d\'un site web, de sa conception à sa maintenance.', 'https://fr.wikipedia.org/wiki/Webmestre'),
  ('fr', 'Culture générale 2', 'Avant de devenir chevalier, quel est le rang pour un apprenti Jedi ?', 'Padawan', 'Novice', 'Jawas', 'Hutts', '1', 'Les chevaliers Jedi du monde de la saga « Star Wars » forment un ordre d\'individus qui maîtrisent la Force.', 'https://fr.wikipedia.org/wiki/Jedi'),
  ('fr', 'Culture générale 2', 'Dans quelle aventure Tintin se retrouve-t-il face à un impressionnant Yeti ?', '« Tintin au Tibet »', '« Tintin au Congo »', '« Le Lotus bleu »', '« Coke en Stock »', '1', 'Le film « La Neige en deuil », d\'Edward Dmytryk, comporte des séquences qui ont probablement dû marquer la mémoire d\'Hergé.', 'https://fr.wikipedia.org/wiki/Tintin_au_Tibet'),
  ('fr', 'Culture générale 2', 'Comment se prénomment les frères de William et Averell Dalton dans « Lucky Luke » ?', 'Joe et Jack', 'Jim et John', 'John et Joe', 'Jack et Jim', '1', 'Les frères Dalton ont inspiré maintes histoires, dont la bande dessinée « Lucky Luke » de Morris et René Goscinny.', 'https://fr.wikipedia.org/wiki/Frères_Dalton'),
  ('fr', 'Culture générale 2', 'Dans quel sport Rocco Francis Marchegiano dit Rocky Marciano était-il imbattable ?', 'Boxe', 'Tennis', 'Natation', 'Catch', '1', 'Rocky Marciano est le premier boxeur blanc à avoir repris la couronne des poids lourds aux afro-américains en 1952.', 'https://fr.wikipedia.org/wiki/Rocky_Marciano'),
  ('fr', 'Culture générale 2', 'Quels muscles du corps humain peuvent être qualifiés de tablettes de chocolat ?', 'Abdominaux', 'Adducteurs', 'Triceps', 'Biceps', '1', 'Au nombre de cinq paires, les abdominaux sont des muscles qui s\'étendent du thorax au bord supérieur du bassin.', 'https://fr.wikipedia.org/wiki/Muscles_abdominaux_antérolatéraux'),
  ('fr', 'Culture générale 2', 'Durant quelle période Philippe Pétain assura-t-il le gouvernement de la France ?', 'De 1940 à 1944', 'De 1939 à 1945', 'De 1941 à 1944', 'De 1941 à 1945', '2', 'Militaire de carrière, le maréchal Pétain est généralement présenté comme le vainqueur de la bataille de Verdun.', 'https://fr.wikipedia.org/wiki/Philippe_Pétain'),
  ('fr', 'Culture générale 2', 'Quel est le prénom de Kate Winslet dans le film « Titanic » de James Cameron ?', 'Rose', 'Liz', 'Carla', 'Jeanne', '2', '« Titanic » est le second plus grand succès de l\'histoire du cinéma après « Avatar » (également réalisé par James Cameron).', 'https://fr.wikipedia.org/wiki/Titanic_(film,_1997)'),
  ('fr', 'Culture générale 2', 'Sur quelle espérance de vie moyenne une girafe peut-elle compter ?', '25 ans', '55 ans', '15 ans', '75 ans', '2', 'Les Grecs pensaient que la girafe résultait de l\'union du chameau et du léopard, d\'où le nom scientifique « camelopardalis ».', 'https://fr.wikipedia.org/wiki/Girafe'),
  ('fr', 'Culture générale 2', 'Quel célèbre Claude a réalisé en 1985 le film « Poulet au vinaigre » ?', 'Claude Chabrol', 'Claude Berri', 'Claude Miller', 'Claude Piéplu', '2', 'Le film « Poulet au vinaigre » a été tourné en quelques semaines seulement à Forges-les-Eaux avec un budget très réduit.', 'https://fr.wikipedia.org/wiki/Poulet_au_vinaigre'),
  ('fr', 'Culture générale 2', 'Quel archipel appartenant au Portugal est constitué de neuf îles et de plusieurs îlots ?', 'Açores', 'Baléares', 'Canaries', 'Îles Caïman', '2', 'L\'origine volcanique de toutes les îles des Açores est démontrée par l\'existence de très nombreux cônes de scories.', 'https://fr.wikipedia.org/wiki/Açores'),
  ('fr', 'Culture générale 2', 'En combien de provinces le Canada est-il divisé, en plus des trois territoires fédéraux ?', 'Dix provinces', 'Quatre provinces', 'Six provinces', 'Cinquante provinces', '2', 'Les provinces sont des États fédérés possédant des pouvoirs souverains, indépendamment du gouvernement fédéral.', 'https://fr.wikipedia.org/wiki/Provinces_et_territoires_du_Canada'),
  ('fr', 'Culture générale 2', 'Quelle faille des États-Unis est la cause de nombreux tremblements de terre ?', 'San Andreas', 'San Francisco', 'Nouveau Mexique', 'Los Angeles', '2', 'Le système des failles de San Andreas s\'étend sur environ 1 300 kilomètres de long et 140 kilomètres de large.', 'https://fr.wikipedia.org/wiki/Faille_de_San_Andreas'),
  ('fr', 'Culture générale 2', 'Quel groupe hollandais des années 1990 était composé de Ray et Anita ?', '2 Unlimited', 'Enigma', 'Scorpions', 'Ace of base', '2', 'Le temps de leur contrat, le duo du groupe 2 Unlimited est devenu populaire à travers le monde durant cinq années consécutives.', 'https://fr.wikipedia.org/wiki/2_Unlimited'),
  ('fr', 'Culture générale 2', 'Quel titre donnait-on à Simon Bolivar, général et homme d\'État vénézuélien ?', 'Libertador', 'Conquistador', 'Dictator', 'Volador', '2', 'Le bolivarisme est un courant politique que l\'on retrouve en Amérique du Sud, se revendiquant de certaines idées de Bolivar.', 'https://fr.wikipedia.org/wiki/Simon_Bolivar'),
  ('fr', 'Culture générale 2', 'Qui a écrit et composé le deuxième album de Vanessa Paradis ?', 'Serge Gainsbourg', 'Lenny Kravitz', 'Johnny Depp', 'Alain Bashung', '2', 'Vanessa Paradis, née en France en 1972, est la nièce de Didier Pain et la soeur de l\'actrice Alysson Paradis.', 'https://fr.wikipedia.org/wiki/Vanessa_Paradis'),
  ('fr', 'Culture générale 2', 'Quelle est la couleur du cercle figurant sur le drapeau du Laos ?', 'Blanche', 'Rouge', 'Bleue', 'Jaune', '3', 'Les montagnes et les plateaux du Laos, confinés au centre de la péninsule indochinoise, occupent plus de 70 % de sa superficie.', 'https://fr.wikipedia.org/wiki/Laos'),
  ('fr', 'Culture générale 2', 'Hô-Chi-Minh-Ville est le nouveau nom de quel poumon économique ?', 'Saigon', 'Pékin', 'Vientiane', 'Tokyo', '3', 'Située près du delta du Mékong, Hô-Chi-Minh-Ville est la métropole et la plus grande ville du sud du Viêt Nam.', 'https://fr.wikipedia.org/wiki/Hô-Chi-Minh-Ville'),
  ('fr', 'Culture générale 2', 'Dans quel pays les falaises de Moher sont-elles une attraction touristique importante ?', 'Irlande', 'Australie', 'Argentine', 'Grèce', '3', 'Les falaises de Moher, qui s\'élèvent jusqu\'à 214 m sur 8 km, fascinent par leur beauté et leurs pentes vertigineuses.', 'https://fr.wikipedia.org/wiki/Falaises_de_Moher'),
  ('fr', 'Culture générale 2', 'Qui débute un de ses romans par : « Longtemps, je me suis couché de bonne heure » ?', 'Proust', 'Zola', 'Flaubert', 'Gide', '3', 'Oeuvre majeure en sept tomes, « La Recherche » analysa d\'une manière souvent impitoyable la société de son temps.', 'https://fr.wikipedia.org/wiki/À_la_recherche_du_temps_perdu'),
  ('fr', 'Culture générale 2', 'Dans quel domaine est utilisé le terme propylée, apparu bien avant Jésus-Christ ?', 'Architecture', 'Botanique', 'Littérature', 'Généalogie', '3', 'À l\'origine un vestibule conduisant à un sanctuaire, le plus célèbre exemple de propylée est celui de l\'Acropole d\'Athènes.', 'https://fr.wikipedia.org/wiki/Propylée_(architecture)'),
  ('fr', 'Culture générale 2', 'De quelle plante de la famille des Liliacées le nom signifie-t-il turban en perse ?', 'Tulipe', 'Digitale', 'Jonquille', 'Renoncule', '3', 'Les tulipes sont des plantes vivaces bulbeuses à tige longues, dures et solitaires, parfois tendues vers le haut.', 'https://fr.wikipedia.org/wiki/Tulipe'),
  ('fr', 'Culture générale 2', 'Qui a inspiré à Ian Fleming le nom de James Bond pour son célèbre personnage ?', 'Ornithologue', 'Sportif', 'Géologue', 'Marin', '3', 'Les nombreux romans mettant en scène le séduisant agent 007 ont connu un succès mondial, également au cinéma.', 'https://fr.wikipedia.org/wiki/Ian_Fleming'),
  ('fr', 'Culture générale 2', 'Quelles festivités étaient célébrées à Sparte en hommage à Apollon ?', 'Karneia', 'Mounichies', 'Septéries', 'Thalysies', '3', 'Ce sont les Karneia qui retardèrent l\'arrivée des Spartiates à Marathon, ainsi que celle des renforts aux Thermopyles.', 'https://fr.wikipedia.org/wiki/Karneia'),
  ('fr', 'Culture générale 2', 'Combien existe-t-il de manières différentes de commencer une partie aux échecs ?', '20', '10', '24', '32', '3', 'La composition échiquéenne, la forme artistique du jeu, a produit des milliers de problèmes dans de multiples genres.', 'https://fr.wikipedia.org/wiki/Échecs'),
  ('fr', 'Culture générale 2', 'Quelle girafe en caoutchouc était destinée à être mordillée par les nourrissons en 1961 ?', 'Sophie', 'Barbie', 'Noémie', 'Mimie', '3', 'La girafe Sophie connaît encore un fort succès dans l\'hexagone avec déjà plus de 816 000 exemplaires vendus en France.', 'https://fr.wikipedia.org/wiki/Sophie_la_girafe'),
