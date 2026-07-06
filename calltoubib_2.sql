-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 mai 2024 à 11:03
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `calltoubib`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `note` text NOT NULL,
  `date` datetime NOT NULL,
  `redacteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

CREATE TABLE `rendez_vous` (
  `id` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `description` text NOT NULL,
  `le_concerne` int(11) NOT NULL,
  `le_specialiste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `specialite` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`, `specialite`) VALUES
(1, 'ronaldo', 'dentiste'),
(2, 'roni', 'generaliste');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `adresse` text NOT NULL,
  `numero` int(11) NOT NULL,
  `naissance` date NOT NULL,
  `type` int(11) NOT NULL,
  `specialite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `adresse`, `numero`, `naissance`, `type`, `specialite`) VALUES
(1, 'jude', 'belligoal', 'jude@gmail.com', '000', '2 rue madrid', 0, '2014-05-13', 1, 'dentiste'),
(2, 'vini', 'jr', 'vini@gmail.com', '111', '3 rue madrid', 111111, '2003-05-22', 2, ''),
(3, 'rostou', 'resto', 'rostou@gmail.com', '$2y$10$FRMj9eXY01w3GLm17mOjoO/Br08SywaZVD3GVxpgPq.Xn6Nf5WLMe', '2 rue paris', 10203, '0000-00-00', 2, ''),
(8, 'Jeremy', 'Doku', 'doku@gmail.com', '$2y$10$zR1qAzzk5caORHml./F7deCFRp86i4UHUebFdPpsC4shpGdeqg9ny', '3 rue manchester', 20304, '2002-08-02', 2, ''),
(9, 'balla', 'diene', 'diene@gmail.com', '$2y$10$/iu0NOO2x/stOXjRMWmxweYuWn7x/pGngtfa2LvHWW4Q6mBL7vlMa', '5 rue thiaroye', 5555, '2004-06-01', 2, ''),
(13, 'jean', 'françois', 'jean@gmail.com', '$2y$10$PXuSqPAx44HC/DNvc2ZWJu29G68qsHcm.sDAQ1izPRpzQc48KKt26', '8 rue paris', 70908, '2000-01-15', 2, ''),
(17, 'kylian', 'mbappe', 'kysk@gmail.com', '$2y$10$.vbNGnwi3YmI0XWbTN0t.ORvo41xE7AG60FgYtuOXiqkaSucxaFsu', '8 rue paris', 707, '1998-12-20', 2, ''),
(18, 'Pablo', 'gavi', 'gavi@gmail.com', '$2y$10$uAFmKPMRFVF4prg.w1yacOOXiZHfsXRFnbwChJruKcfqtYq14vz.W', '6 rue barcelone', 606, '2004-07-25', 1, 'orthopediste'),
(20, 'Lionel', 'Messi', 'leomessi@gmail.com', '$2y$10$ark/9.FclxFNpqPUubBPWenNGdjd2DeHdR/zNICTQ0j/E0.GkLspO', '5 rue miami', 101010, '1988-06-26', 2, ''),
(21, 'rafael', 'leao', 'leao@gmail.com', '$2y$10$nfOR7ODETop/rBEWuzRt.uuJISOiGs23W2UPmuYqUC/2Jkme3WOqS', '6 rue milan', 1515, '2000-10-10', 1, 'généraliste'),
(26, 'Julien', 'Renard', 'julien.renard@example.com', 'password123', '2323 Rue du Bac', 1234567825, '1983-02-14', 1, 'Chirurgie dentaire'),
(27, 'Louise', 'Faure', 'louise.faure@example.com', 'password123', '2424 Rue de Vaugirard', 1234567826, '1988-07-19', 1, 'Immunologie'),
(28, 'Thierry', 'Girard', 'thierry.girard@example.com', 'password123', '2525 Avenue Victor Hugo', 1234567827, '1984-03-27', 1, 'Pneumologie'),
(29, 'Sandrine', 'Bonnet', 'sandrine.bonnet@example.com', 'password123', '2626 Rue de Passy', 1234567828, '1991-11-11', 1, 'Médecine légale'),
(30, 'Georges', 'Masson', 'georges.masson@example.com', 'password123', '2727 Rue de la Convention', 1234567829, '1978-04-15', 1, 'Médecine nucléaire'),
(31, 'Patricia', 'Garnier', 'patricia.garnier@example.com', 'password123', '2828 Rue Lecourbe', 1234567830, '1987-09-03', 1, 'Neurochirurgie'),
(32, 'Dominique', 'Gauthier', 'dominique.gauthier@example.com', 'password123', '2929 Rue de Sévres', 1234567831, '1981-12-17', 1, 'Médecine tropicale'),
(33, 'Martine', 'Marchand', 'martine.marchand@example.com', 'password123', '3030 Boulevard Garibaldi', 1234567832, '1986-08-23', 1, 'Addictologie'),
(34, 'René', 'Chevalier', 'rene.chevalier@example.com', 'password123', '3131 Avenue de Suffren', 1234567833, '1982-05-09', 1, 'Angiologie'),
(35, 'Laure', 'Barbier', 'laure.barbier@example.com', 'password123', '3232 Rue de la Croix Nivert', 1234567834, '1990-01-29', 1, 'Gynécologie obstétrique'),
(36, 'Michel', 'Leclerc', 'michel.leclerc@example.com', 'password123', '3333 Rue Blomet', 1234567835, '1979-11-20', 1, 'Génétique médicale'),
(37, 'Frédérique', 'Dumas', 'frederique.dumas@example.com', 'password123', '3434 Rue Saint Charles', 1234567836, '1985-06-05', 1, 'Médecine physique'),
(38, 'Nicolas', 'Perrot', 'nicolas.perrot@example.com', 'password123', '3535 Rue de la Procession', 1234567837, '1992-10-10', 1, 'Médecine palliative'),
(39, 'Catherine', 'Colin', 'catherine.colin@example.com', 'password123', '3636 Rue de l\'Eglise', 1234567838, '1988-02-28', 1, 'Réanimation médicale'),
(40, 'Bernard', 'Poirier', 'bernard.poirier@example.com', 'password123', '3737 Rue Lecourbe', 1234567839, '1984-08-15', 1, 'Chirurgie thoracique'),
(41, 'Lucie', 'Fischer', 'lucie.fischer@example.com', 'password123', '3838 Avenue de Breteuil', 1234567840, '1993-01-31', 1, 'Chirurgie vasculaire'),
(42, 'Christophe', 'Olivier', 'christophe.olivier@example.com', 'password123', '3939 Avenue de Saxe', 1234567841, '1980-04-11', 1, 'Neurologie pédiatrique'),
(43, 'Agnès', 'Renaud', 'agnes.renaud@example.com', 'password123', '4040 Rue de Varenne', 1234567842, '1977-09-22', 1, 'Radiothérapie'),
(44, 'Philippe', 'Delattre', 'philippe.delattre@example.com', 'password123', '4141 Rue de Babylone', 1234567843, '1989-05-06', 1, 'Médecine préventive'),
(45, 'Suzanne', 'Granger', 'suzanne.granger@example.com', 'password123', '4242 Boulevard des Invalides', 1234567844, '1983-07-13', 1, 'Stomatologie'),
(46, 'Bruno', 'Morin', 'bruno.morin@example.com', 'password123', '4343 Rue de l\'Université', 1234567845, '1990-09-04', 1, 'Néphrologie pédiatrique'),
(47, 'Charlotte', 'Guerin', 'charlotte.guerin@example.com', 'password123', '4444 Avenue Rapp', 1234567846, '1978-12-18', 1, 'Maladies infectieuses'),
(48, 'Laurent', 'Roche', 'laurent.roche@example.com', 'password123', '4545 Rue Saint Dominique', 1234567847, '1985-03-10', 1, 'Santé publique'),
(49, 'Valérie', 'Hubert', 'valerie.hubert@example.com', 'password123', '4646 Avenue de la Motte Picquet', 1234567848, '1981-11-01', 1, 'Gynécologie médicale'),
(50, 'Vincent', 'Lambert', 'vincent.lambert@example.com', 'password123', '4747 Rue Cler', 1234567849, '1991-08-02', 1, 'Toxicologie'),
(51, 'mamadou', 'fll', 'fll@gmail.com', '$2y$10$38sg/s5S5wMILZOyDo40ruwZx33sGKgD.YGUzMuFW18wNgFPuIqAi', '2 rue senegal', 444, '2024-05-29', 2, ''),
(52, 'mamadou', 'fll', 'fll@gmail.com', '$2y$10$vzy0I59dnd01zB5GoGTWdu9PWNCP8wOe54SBGzeAtY5hLadMVK0gG', '2 rue senegal', 444, '2024-05-29', 2, ''),
(53, 'neymar', 'junior', 'jr@mail.com', '$2y$10$XdOghrCrsUJ/TQHdw3HcJuJsrfoEFRQlPxAyOymcCLXPxFM5aVYaK', '8 rue paris', 0, '2003-04-20', 2, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_commentaire_users` (`redacteur`);

--
-- Index pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rendez_vous` (`le_concerne`),
  ADD KEY `fk_specialiste` (`le_specialiste`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_type_users` (`type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_commentaire_users` FOREIGN KEY (`redacteur`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD CONSTRAINT `fk_rendez_vous` FOREIGN KEY (`le_concerne`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_specialiste` FOREIGN KEY (`le_specialiste`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_type_users` FOREIGN KEY (`type`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
