--
-- Base de données :  `location`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id_avis` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`id_avis`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id_avis`, `user_id`, `message`, `etat`) VALUES
(1, 1, 'Agent professionnel, jovial et serviable, je recommande votre agence aux professionnels ', 1),
(2, 2, 'Top ! Rien à dire. Disponibilité, gentillesse du personnel ainsi que etat de la voiture. Je reviend.', 1),
(3, 3, 'Excellent loueur ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `modele_voiture`
--

DROP TABLE IF EXISTS `modele_voiture`;
CREATE TABLE IF NOT EXISTS `modele_voiture` (
  `id_modele` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `climatisation` varchar(255) NOT NULL,
  `nbre_places` int(11) NOT NULL,
  `coffre` varchar(255) NOT NULL,
  `boite` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`id_modele`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modele_voiture`
--

INSERT INTO `modele_voiture` (`id_modele`, `titre`, `climatisation`, `nbre_places`, `coffre`, `boite`, `prix`) VALUES
(1, 'Grande Punto', 'Oui', 5, '297 dm3', 'Manuelle', 80),
(2, 'Citroen c3', 'oui', 5, '305 dm3', 'Manuelle', 85),
(3, 'Polo 7', 'oui', 5, '290 dm3', 'Manuelle', 85),
(4, 'Renault clio', 'oui', 5, '300 dm3', 'Manuelle', 87),
(5, 'Peugeot PARTNER', 'non', 4, '664 dm3', 'Manuelle', 95),
(6, 'Renault Megane', 'oui', 5, '330 dm3', 'Manuelle', 100),
(7, 'Citroen C-Elysée', 'oui', 5, '506 L', 'Manuelle', 100),
(8, 'Peugeot 308 CC', 'oui', 5, '224 dm3', 'Manuelle', 110),
(9, 'Toyota RAV4 4x4', 'oui', 8, '500 dm3', 'Manuelle', 180),
(10, 'Mercedes E200', 'oui', 5, '430 dm3', 'Automatique', 210),
(11, 'Mitsubishi PAJERO', 'oui', 7, '225 dm3', 'Manuelle', 210),
(12, 'Mercedes E220', 'oui', 5, '520 dm3', 'Automatique', 220);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id_promo` int(11) NOT NULL AUTO_INCREMENT,
  `modele_id` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_promo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id_promo`, `modele_id`, `prix`, `etat`) VALUES
(1, 6, 90, 1),
(2, 10, 190, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voiture_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ville_depart` varchar(255) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `prix_jour` int(11) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `nameuser` varchar(255) NOT NULL,
  `prenomuser` varchar(255) NOT NULL,
  `emailuser` varchar(255) NOT NULL,
  `passworduser` varchar(255) NOT NULL,
  `dateaccess` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `etatuser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iduser`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `nameuser`, `prenomuser`, `emailuser`, `passworduser`, `dateaccess`, `role`, `etatuser`) VALUES
(1, 'Ben Salah', 'Ali', 'ali@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '03-03-2020 10:03:46', 'client', 1),
(2, 'Ben Salah', 'Aya', 'aya@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '03-03-2020 10:03:46', 'client', 1),
(3, 'Ben Salah', 'Anis', 'anis@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '03-03-2020 10:03:46', 'client', 1),
(4, 'Ben Salah', 'Lotfi', 'lotfi@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '', 'admin', 1),
(5, 'Ben Salah', 'Amira', 'amira@essat.tn', '$2y$10$trx1neApto5O1SzQiYdz0u.hhJqVxGF.pSydpjfGFx2BbRkpjYqWq', '03-03-2020 10:03:46', 'client', 1);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id_voiture` int(11) NOT NULL AUTO_INCREMENT,
  `modele_id` int(11) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `annee` int(11) NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_voiture`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id_voiture`, `modele_id`, `matricule`, `annee`, `couleur`, `etat`) VALUES
(1, 1, '1923TUN180', 2017, 'noir', 1),
(2, 1, '3625TUN189', 2018, 'rouge', 1),
(3, 1, '2850TUN192', 2019, 'blanc', 1),
(4, 2, '8553TUN201', 2019, 'blanc', 1),
(5, 2, '1520TUN210', 2020, 'noir', 1),
(6, 3, '1850TUN211', 2020, 'noir', 1),
(7, 3, '5482TUN208', 2019, 'rouge', 1),
(8, 4, '8521TUN189', 2018, 'noir', 1),
(9, 4, '6325TUN200', 2019, 'vert', 1),
(10, 5, '3652TUN210', 2019, 'noir', 1),
(11, 5, '6235TUN207', 2019, 'blanc', 1),
(12, 6, '3625TUN208', 2019, 'blanc', 1),
(13, 6, '7458TUN202', 2019, 'noir', 1),
(14, 7, '9632TUN209', 2019, 'noir', 1),
(15, 7, '6327TUN210', 2020, 'blanc', 1),
(16, 8, '1297TUN211', 2020, 'blanc', 1),
(17, 8, '5986TUN210', 2020, 'noir', 1),
(18, 9, '6338TUN203', 2019, 'noir', 1),
(19, 9, '9852TUN210', 2020, 'blanc', 1),
(20, 10, '8524TUN201', 2019, 'noir', 1),
(21, 10, '4570TUN202', 2019, 'blanc', 1),
(22, 11, '1967TUN207', 2020, 'blanc', 1),
(23, 11, '8591TUN212', 2020, 'noir', 1),
(24, 12, '3491TUN210', 2020, 'noir', 1),
(25, 12, '8632TUN211', 2020, 'noir', 1);


