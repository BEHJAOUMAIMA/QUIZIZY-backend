-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 déc. 2022 à 17:22
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quizizy`
--

-- --------------------------------------------------------

--
-- Structure de la table `choice`
--

CREATE TABLE `choice` (
  `id` int(11) NOT NULL,
  `answers` text NOT NULL,
  `status` int(11) NOT NULL,
  `question _id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `choice`
--

INSERT INTO `choice` (`id`, `answers`, `status`, `question _id`) VALUES
(1, 'Amazon EC2 costs are billed on a monthly basis', 0, 1),
(2, 'Users retain full administrative access to their Amazon EC2 instances', 0, 1),
(3, 'Amazon EC2 instances can be launched on demand when needed.', 1, 1),
(4, 'Users can permanently run enough instances to handle peak workloads', 0, 1),
(5, 'AWS Storage Gateway', 0, 2),
(6, 'AWS Database Migration Service (AWS DMS)', 1, 2),
(7, 'Amazon EC2.', 0, 2),
(8, 'Amazon AppStream 2.0', 0, 2),
(9, 'AWS Config', 0, 3),
(10, 'AWS OpsWorks', 0, 3),
(11, 'AWS SDK', 0, 3),
(12, 'AWS Marketplace', 1, 3),
(13, 'AWS Config', 0, 4),
(14, 'Amazon Route 53', 0, 4),
(15, 'AWS Direct Connect', 0, 4),
(16, 'Amazon Virtual Private Cloud (Amazon VPC)', 1, 4),
(17, 'Configuring third-party applications', 0, 5),
(18, 'Maintaining physical hardware ', 1, 5),
(19, 'Securing application access and data', 0, 5),
(20, 'Managing guest operating systems', 0, 5),
(21, 'AWS Regions', 0, 6),
(22, 'Edge locations', 1, 6),
(23, 'Availability Zones', 0, 6),
(24, 'Virtual Private Cloud (VPC)', 0, 6),
(25, 'Use Amazon Cloud Directory', 0, 7),
(26, 'Audit AWS Identity and Access Management (IAM) roles', 0, 7),
(27, 'Enable multi-factor authentication', 1, 7),
(28, 'Enable AWS CloudTrail', 0, 7),
(29, 'AWS Trusted Advisor', 0, 8),
(30, 'AWS CloudTrail', 1, 8),
(31, 'AWS X-Ray', 0, 8),
(32, 'AWS Identity and Access Management (AWS IAM)', 0, 8),
(33, 'Amazon Simple Notification Service (Amazon SNS)', 0, 9),
(34, 'AWS CloudTrail', 0, 9),
(35, 'AWS Trusted Advisor', 0, 9),
(36, 'Amazon Route 53', 1, 9),
(37, 'AWS Trusted Advisor', 0, 10),
(38, 'AWS Identity and Access Management (IAM)', 0, 10),
(39, 'AWS Billing Console', 0, 10),
(40, 'AWS Acceptable Use Policy', 1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL,
  `explication` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `questions`, `explication`) VALUES
(1, 'Why is AWS more economical than traditional data centers for applications with varying compute workloads?', 'The ability to launch instances on demand when needed allows users to launch and terminate instances in response to a varying workload. This is a more economical practice than purchasing enough on-premises servers to handle the peak load.'),
(2, 'Which AWS service would simplify the migration of a database to AWS ?', 'AWS DMS helps users migrate databases to AWS quickly and securely. The source database remains fully operational during the migration, minimizing downtime to applications that rely on the database. AWS DMS can migrate data to and from most widely used commercial and open-source databases'),
(3, 'Which AWS offering enables users to find, buy, and immediately start using software solutions in theirAWS environment?', 'AWS Marketplace is a digital catalog with thousands of software listings from independent software vendors that makes it easy to find, test, buy, and deploy software that runs on AWS to applications that rely on the database. AWS DMS can migrate data to and from most widely used commercial and open-source databases'),
(4, 'Which AWS networking service enables a company to create a virtual network within AWS?', 'Amazon VPC lets users provision a logically isolated section of the AWS Cloud where users can launch AWS resources in a virtual network that they define.'),
(5, 'Which of the following is an AWS responsibility under the AWS shared responsibility model?', 'Maintaining physical hardware is an AWS responsibility under the AWS shared responsibility model.'),
(6, 'Which component of the AWS global infrastructure does Amazon CloudFront use to ensure low-latency delivery?', 'To deliver content to users with lower latency, Amazon CloudFront uses a global network of points of presence (edge locations and regional edge caches) worldwide. '),
(7, 'How would a system administrator add an additional layer of login security to a user`s AWS Management Console?', 'Multi-factor authentication (MFA) is a simple best practice that adds an extra layer of protection on top of a username and password. With MFA enabled, when a user signs in to an AWS Management Console, they will be prompted for their username and password (the first factor—what they know), as well as for an authentication code from their MFA device (the second factor—what they have). Taken together, these multiple factors provide increased security for AWS account settings and resources.'),
(8, 'Which service can identify the user that made the API call when an Amazon EC2 instance is terminated?', 'AWS CloudTrail helps users enable governance, compliance, and operational and risk auditing of their AWS accounts. Actions taken by a user, role, or an AWS service are recorded as events in CloudTrail. Events include actions taken in the AWS Management Console, AWS Command Line Interface (CLI), and AWS SDKs and APIs.'),
(9, 'Which service would be used to send alerts based on Amazon CloudWatch alarms?', 'Amazon SNS and Amazon CloudWatch are integrated so users can collect, view, and analyze metrics for every active SNS. Once users have configured CloudWatch for Amazon SNS, they can gain better insight into the performance of their Amazon SNS topics, push notifications, and SMS deliveries'),
(10, ' Where can a user find information about prohibited actions on the AWS infrastructure?', 'The AWS Acceptable Use Policy provides information regarding prohibited actions on the AWS infrastructure. ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question _id` (`question _id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
