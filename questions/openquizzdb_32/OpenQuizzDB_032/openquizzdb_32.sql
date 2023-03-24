-- -----------------------------------------------------------------------------
-- 
-- OpenQuizzDB
-- Fournisseur de contenu libre
--
-- Quizz : Applications web
-- [ L'informatique simplifiée ]
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
  ('fr', 'Applications web', 'Quel logiciel de traitement de texte a été mis au point par la société Microsoft ?', '« Word »', '« Excel »', '« PowerPoint »', '« Access »', '1', 'Microsoft a déjà publié plusieurs logiciels de traitement de texte, mais « Word » en reste la « vedette ».', 'https://fr.wikipedia.org/wiki/Microsoft_Word'),
  ('fr', 'Applications web', 'Le logiciel « Excel », extrait de la suite bureautique Microsoft Office, est un...', 'Tableur', 'Traitement de texte', 'Navigateur internet', 'Messagerie', '1', 'Excel a été plusieurs fois critiqué pour ses problèmes de précision sur calculs à virgule flottante.', 'https://fr.wikipedia.org/wiki/Microsoft_Excel'),
  ('fr', 'Applications web', 'En informatique, comment appelle-t-on une erreur de programmation encore non localisée ?', 'Bug', 'Crack', 'Spam', 'Virus', '1', 'La gravité d\'un dysfonctionnement informatique peut aller de bénigne à majeure.', 'https://fr.wikipedia.org/wiki/Bug_(informatique)'),
  ('fr', 'Applications web', 'Quelle version de Windows Microsoft a-t-il lancée le vendredi 26 octobre 2012 ?', '« Windows 8 »', '« Windows 7 »', '« Windows CE »', '« Windows Mobile »', '1', 'La version de Windows 8.1 est une mise à jour gratuite de Windows 8, disponible depuis 2013.', 'https://fr.wikipedia.org/wiki/Windows_8'),
  ('fr', 'Applications web', 'Comment est communément abrégée la publication assistée par ordinateur ?', 'PAO', 'USB', 'VGA', 'CIO', '1', 'La PAO consiste à créer des documents imprimés en travaillant la composition et la typographie de documents.', 'https://fr.wikipedia.org/wiki/Publication_assistée_par_ordinateur'),
  ('fr', 'Applications web', 'Quelle application informatique de la société Apple permet de gérer facilement un iPod ?', '« iTunes »', '« QuickTime »', '« FileMaker »', '« HyperCard »', '1', '« iTunes » faisait partie de la suite logicielle d\'Apple « iLife » jusqu\'à la version \'06.', 'https://fr.wikipedia.org/wiki/ITunes'),
  ('fr', 'Applications web', 'En informatique, quel logiciel permet de créer des calculs automatiques ?', 'Tableur', 'Débogueur', 'Navigateur', 'Explorateur', '1', 'Une feuille de calcul est une table d\'informations, la plupart du temps financières.', 'https://fr.wikipedia.org/wiki/Tableur'),
  ('fr', 'Applications web', 'Quel pirate informatique casse les systèmes informatiques et les logiciels protégés ?', 'Hacker', 'Blagueur', 'Forceur', 'Pirateur', '1', 'Certains utilisent ce savoir-faire dans un cadre légal, d\'autres étant le plus souvent hors-la-loi.', 'https://fr.wikipedia.org/wiki/Hacker_(sécurité_informatique)'),
  ('fr', 'Applications web', 'Quels logiciels permettent de surfer sur Internet, sur PC, tablette ou smartphone ?', 'Navigateurs', 'Tableurs', ' Éditeurs', ' Émulateurs', '1', 'Le premier navigateur stable et largement diffusé fut « NCSA Mosaic », en 1993.', 'https://fr.wikipedia.org/wiki/Navigateur_Web'),
  ('fr', 'Applications web', 'Quel outil développé par le géant Google permet de gérer son emploi du temps ?', '« Google Agenda »', '« Google TimeLine »', '« Google Tempo »', '« Google Mobile »', '1', '« Google Agenda » permet de partager des événements et des agendas et de les publier sur internet ou sur un site Web.', 'https://fr.wikipedia.org/wiki/Google_Agenda'),
  ('fr', 'Applications web', 'Quelle grande société a reçu le feu vert en  2011 pour le rachat de « Skype » ?', 'Microsoft', 'Google', 'Apple', 'Facebook', '2', '« Skype » est un logiciel gratuit qui permet de passer des appels téléphoniques et vidéo via Internet, ainsi que le partage d\'écran.', 'https://fr.wikipedia.org/wiki/Skype'),
  ('fr', 'Applications web', 'Quel est probablement le plus connu des systèmes informatiques dits libres ?', 'Linux', 'Windows', 'MS-DOS', 'Mac OS', '2', 'Linux est un système informatique qui fonctionne sur du matériel allant du téléphone portable au supercalculateur.', 'https://fr.wikipedia.org/wiki/Linux'),
  ('fr', 'Applications web', 'Quelle est le nom de la solution professionnelle de services Google ?', '« Google Apps »', '« Google Pro »', '« Google Serve »', '« Google Mac »', '2', 'Ce site Web au service des entreprises met en ligne de nombreuses applications.', 'https://fr.wikipedia.org/wiki/Google_Apps'),
  ('fr', 'Applications web', 'Quel type de logiciel est mis gratuitement et librement à disposition par son créateur ?', 'Freeware', 'Malware', 'Adware', 'Software', '2', 'Il ne faut toutefois pas confondre freeware (gratuiciel) et shareware (partagiciel).', 'https://fr.wikipedia.org/wiki/Freeware'),
  ('fr', 'Applications web', 'En avril 2012, quelle start-up Facebook a-t-il rachetée pour plus d\'un milliard de dollars ?', '« Instagram »', '« Globalnet »', '« Valve »', '« Backelite »', '2', '« Instagram » est une application  co-fondée et lancée par l\'américain Kevin Systrom et le Brésilien Michel Mike Krieger en octobre 2010.', 'https://fr.wikipedia.org/wiki/Instagram'),
  ('fr', 'Applications web', 'Au Québec, quel mot est souvent utilisé pour désigner le courrier électronique ?', 'Courriel', 'Emel', 'Lettrinter', 'Copitel', '2', 'Le courriel tend à être reconnu comme moyen valide de contacter une personne.', 'https://fr.wikipedia.org/wiki/Courrier_électronique'),
  ('fr', 'Applications web', 'Quel logiciel racheté par Microsoft a remplacé « Windows Live Messenger » en 2013 ?', '« Skype »', '« Instagram »', '« QuickTime »', '« Pidgin »', '2', '« Skype » a été fondé en Estonie par Niklas Zennström et Janus Friis en 2003 et développé par trois Estoniens à l\'origine du logiciel « KaZaA ».', 'https://fr.wikipedia.org/wiki/Skype'),
  ('fr', 'Applications web', 'Quel nom portait le précédent navigateur Internet devenu « Microsoft Edge » ?', '« Internet Explorer »', '« Safari »', '« Chrome »', '« Firefox »', '2', 'La version 11 du navigateur « Internet Explorer » sera toujours présente dans Windows 10 avant le passage progressif à « Microsoft Edge ».', 'https://fr.wikipedia.org/wiki/Internet_Explorer'),
  ('fr', 'Applications web', 'Quel logiciel est indispensable pour protéger votre ordinateur sur Internet ?', 'Antivirus', 'Chat', 'Navigateur', 'Messagerie', '2', 'Les antivirus peuvent balayer le contenu d\'un disque dur ainsi que la mémoire vive de l\'ordinateur.', 'https://fr.wikipedia.org/wiki/Logiciel_antivirus'),
  ('fr', 'Applications web', 'Qui est le tout premier pape à avoir envoyé un message sur « Twitter » ?', 'Benoît XVI', 'François', 'Jean-Paul II', 'Paul VI', '2', 'Réputé conservateur, le cardinal Ratzinger a été élu le 19 avril 2005 pour succéder à Jean-Paul II.', 'https://fr.wikipedia.org/wiki/Benoît_XVI'),
  ('fr', 'Applications web', 'Quel courrielleur créé par Mozilla est le compagnon idéal du navigateur « Firefox » ?', '« Thunderbird »', '« Incredimail »', '« Sylpheed »', '« Foxmail »', '3', 'Tout comme « Firefox », « Thunderbird » et son interface en XUL est basé sur le moteur Gecko.', 'https://fr.wikipedia.org/wiki/Mozilla_Thunderbird'),
  ('fr', 'Applications web', 'Quel nom porte la suite bureautique en ligne proposée par Microsoft ?', '« Office 365 »', '« KOffice »', '« OpenOffice »', '« StarOffice »', '3', 'Les abonnements « Office 365 » pour les particuliers permettent de bénéficier de la version complète de la suite Office que l\'on connaît.', 'https://fr.wikipedia.org/wiki/Microsoft_Office_365'),
  ('fr', 'Applications web', 'Quel était le nom de code de la version 3.1 de Microsoft Windows ?', 'Janus', 'Startus', 'Uranus', 'Opus', '3', 'La version 3 a été la première à connaître un large succès, permettant à Microsoft de rivaliser avec l\'Apple Macintosh.', 'https://fr.wikipedia.org/wiki/Windows_3.x'),
  ('fr', 'Applications web', 'Quel nom porte le service de stockage en ligne de Windows Live ?', '« Onedrive »', '« Dropbox »', '« RapidShare »', '« MediaFire »', '3', 'Ce service en ligne de stockage et d\'applications, créé en 2007, est une manifestation du concept de cloud computing.', 'https://fr.wikipedia.org/wiki/OneDrive'),
  ('fr', 'Applications web', 'Quel est le nouveau nom du logiciel gratuit de messagerie instantanée « Gaim » ?', '« Pidgin »', '« Connect »', '« iShare »', '« Komunity »', '3', '« Gaim » a été renommé en « Pidgin » en 2007 en raison de plaintes de la société AOL et de sa marque AIM.', 'https://fr.wikipedia.org/wiki/Pidgin_(logiciel)'),
  ('fr', 'Applications web', 'Quelle suite logicielle équivaut à Microsoft Office chez le géant Google ?', '« Google Documents »', '« OpenOffice »', '« Google Sites »', '« Works »', '3', '« Google Documents » est une suite des évolutions de « Google Spreadsheets » et de « Writely », logiciel de traitement de texte.', 'https://fr.wikipedia.org/wiki/Google_Documents'),
  ('fr', 'Applications web', 'De quel pays la suite logicielle gratuite « Opera » est-elle originaire ?', 'Norvège', 'France', 'Italie', 'Autriche', '3', '« Opera » est un navigateur Web développé par la société norvégienne Opera Software, qui propose plusieurs logiciels relatifs à Internet.', 'https://fr.wikipedia.org/wiki/Opera'),
  ('fr', 'Applications web', 'Lequel de ces outils ne permet pas de visionner des pages web ?', '« Acrobat Reader »', '« Mozilla Firefox »', '« Google Chrome »', '« Internet Explorer »', '3', 'Adobe change régulièrement le nom des produits de la famille Acrobat et cela en subdivisant sa gamme.', 'https://fr.wikipedia.org/wiki/Adobe_Acrobat_DC'),
  ('fr', 'Applications web', 'Combien de téléchargements dénombrait-on sur le célèbre « App Store » fin 2012 ?', '35 milliards', '25 milliards', '15 milliards', '5 milliards', '3', 'Depuis la mise à jour du système d\'exploitation d\'Apple iOS 7 en septembre 2013, l\'« App Store » possède un tout nouveau design.', 'https://fr.wikipedia.org/wiki/App_Store'),
  ('fr', 'Applications web', 'Quelle est la date officielle de création de « Wikipédia » en Français ?', '23 mars 2001', '2 janvier 1999', '15 janvier 2002', '8 décembre 2000', '3', 'Plusieurs moyens de consulter l\'encyclopédie existent, tels que des sites web miroirs ou des applications pour smartphone.', 'https://fr.wikipedia.org/wiki/Wikipédia_en_français'),
