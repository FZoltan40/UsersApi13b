-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 08. 12:11
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newuser`
--

CREATE TABLE `newuser` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Age` int(11) NOT NULL,
  `License` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `newuser`
--

INSERT INTO `newuser` (`Id`, `Name`, `Age`, `License`) VALUES
('01896c80-9572-41f9-a99d-42070c33bf01', 'Nicholle Fernao', 65, 1),
('023b83d7-5895-4e12-9fc7-a9f672cb436b', 'Dolorita Satteford', 63, 1),
('076803d1-3ae3-4fb3-888c-0f8d10473e43', 'Kass Tretter', 84, 1),
('08261f0b-b390-4ba7-bbe9-1571e05e8dc5', 'Gifford Hardson', 56, 0),
('0856c9c9-5894-4c41-ae8b-7bd212c42b23', 'Lorrie Liddell', 94, 1),
('0cb8ff01-f0ed-493f-8b72-46e9a0a006ac', 'Vina England', 73, 0),
('0e1b0783-cae4-42e5-a5c6-b7598485d7d6', 'Noble Lothlorien', 28, 0),
('14cd83f0-023d-44d5-a633-9ad23caa20ab', 'Domeniga Luberti', 33, 1),
('178406f8-ecd2-45cb-846f-30bd8d5582cc', 'Manon Jerred', 34, 0),
('1ac0eae8-cec6-44e8-a7cb-b68bb7d5d470', 'Vassili Laflin', 73, 1),
('1afbc2ec-d3a7-4627-978a-46a0ac51e064', 'Ethelind Setch', 55, 1),
('1b941bad-e753-48b1-b38c-612a7fe702b4', 'Orlan Duester', 66, 1),
('1ca38f9d-73f8-4a60-a76f-82ebe3ead63b', 'Uriel Van der Kruijs', 22, 1),
('1d6f30c1-1978-4522-9142-f9326a75a760', 'Romy Bruineman', 57, 1),
('1dea5a44-5259-4e1d-9365-0506a9bdb401', 'Bobby Brislen', 26, 1),
('2206e203-1c16-41d2-ad04-5dbce2d7f8b9', 'Valentino Alenikov', 56, 1),
('2b2af0ea-ae03-44cf-9697-ac6e157dce0e', 'Germaine Foister', 9, 0),
('2c6d9453-8b94-4dde-a2f8-9835c0107f2c', 'Kristoffer Czaja', 83, 1),
('2d7cbafd-b494-42df-bc31-b60f04db2367', 'Giuseppe Barck', 36, 1),
('2d81ea9e-1947-4491-9a37-6aa84e0786b3', 'Kimberly McKinie', 73, 0),
('2de6cd4f-7ccb-4b4d-b2d2-88a3ab775f99', 'Berkley Rheubottom', 76, 0),
('2fe40200-e102-481b-b68e-08bb24d65cbd', 'Clarita Denyakin', 57, 0),
('3100b82b-b068-42d1-8ded-398a72e15120', 'Eddy Andreasen', 85, 1),
('310c8d86-2404-4b2b-a2f5-fc9d451517b2', 'Elwin Lambart', 19, 0),
('374f8c05-0aef-4f2d-81da-a176054ab7ee', 'Ced Keatley', 100, 0),
('3a07175a-95b7-4b22-84fe-e06169941d3a', 'Koren Worboys', 6, 1),
('40e85d40-e616-4591-8bc7-5d3464ec9192', 'Anna-maria Fosdyke', 37, 0),
('4506be57-013b-4d9d-a0ba-41f115a280c7', 'Bendix Bellany', 83, 0),
('479fc6c2-88a7-4974-9f16-ccbb8dc1d66c', 'Frayda Dumbellow', 0, 1),
('4d5881f2-2368-4831-8e59-2b493094e290', 'Obediah Assiratti', 61, 1),
('4e184641-5e7a-461e-84d6-04b1cf154d2d', 'Shirlene Ximenez', 70, 1),
('4e7b0573-c4e5-40d7-8772-5d99b76e007e', 'Reena Phillipps', 81, 1),
('50339205-8873-47ed-be32-18fb928985ea', 'Vikki Leal', 14, 0),
('50943931-8e55-48f0-9b73-964349eb65fe', 'Paten Merit', 53, 0),
('5626e781-1d23-4035-934a-626f4fa9543b', 'Carena Foltin', 60, 1),
('577a1c62-4894-4255-a2d2-6ed471d3d17c', 'Kristoforo Kegley', 1, 1),
('594b44e9-87df-478b-bc36-4d7c08b6800c', 'Bennie Honywill', 35, 1),
('59a4b99e-69e4-4fa6-9386-b3ea4e0cd971', 'Norma Hillam', 75, 0),
('5dadef6b-6706-48be-b868-7dafef39d821', 'Merridie Prynne', 36, 1),
('5efdb94c-8045-438f-bce5-ea7d90a350c5', 'Honor Titchmarsh', 33, 0),
('67efe6ec-00d2-4ce3-b6b9-f734103414a1', 'Lainey Monahan', 28, 1),
('6ef2057f-3d72-4c49-8766-1f2e6fc1010e', 'Othella Goodrich', 84, 0),
('706ee037-cdb2-4a4b-b29d-f58ba6fb9607', 'Freddie Middleditch', 84, 0),
('722e7372-e95f-4a66-894c-77dfe1befccb', 'Duky Handmore', 19, 0),
('78111794-685a-429e-add5-44ae18f3b1f5', 'Elisabet Vasilyonok', 44, 1),
('79f84881-87b5-48e6-a249-0287cb39b839', 'Pembroke Gomes', 66, 1),
('7b7c474e-7adb-4bf5-ae30-1eec245dd2a4', 'Gustav Gerg', 9, 0),
('7cd22f1c-b9d2-4573-9b28-4306b324603f', 'Tessie Carbett', 67, 1),
('7d20739b-ff3b-4f9e-a4f8-59477ac91e8a', 'Leah Kenealy', 23, 1),
('7fc4bff5-3065-4857-8b6a-dfc2b443f934', 'Hagen Beesey', 74, 0),
('8047a70d-17f9-4a33-aacd-e850ae36bcbc', 'Donovan Pretswell', 88, 0),
('813efde4-0dea-45e2-ae4c-d83f0cf80ec3', 'Celisse Wedderburn', 89, 0),
('83a5ae8e-d0da-4583-9887-37a5c849088d', 'Nappie Haller', 1, 1),
('8485d91a-2945-4419-a836-82479cf81351', 'Sampson Mellem', 77, 1),
('84c4afb1-d6df-432d-af71-ab3e75f56536', 'Ramon Edds', 88, 0),
('86584d98-675c-4bf0-83ec-22c1221cd263', 'Ephraim Philo', 70, 0),
('867a5c1c-5507-4b47-87f5-352893231838', 'Jimmy Ganford', 56, 1),
('87287057-afc5-4ad5-a927-b183454a6b49', 'Ezequiel Mooreed', 97, 1),
('88e60093-f8a7-417f-8df4-422d728a0272', 'Fletcher Sherborne', 20, 1),
('8963a491-d945-4a3c-91be-6eb2b2324bb2', 'Emelia Sallarie', 10, 1),
('8a854fa3-b058-4273-976e-b735a38065d5', 'Harmony Woodwing', 67, 1),
('8adcab47-81a3-4360-833f-b15d5da6dbac', 'Ingeborg Enrrico', 79, 1),
('8c935b22-85b6-4f33-9a26-4c2c80512d75', 'Eduino Ulster', 25, 1),
('913378a3-31bb-45d9-aea0-24f66b9853ef', 'Beret Wing', 1, 1),
('9223417e-6bdc-47a0-85bf-4012ed482b09', 'Saundra Padgett', 68, 0),
('949c0492-afe4-4774-abcc-4bd8330b5f08', 'Felicio Mountney', 23, 1),
('9cb68b14-9ab0-43cd-bae4-ee088e443449', 'Corri Hollingsby', 63, 0),
('9eed9aa5-c8b0-41c2-953a-44a48d83144b', 'Mischa Adnam', 39, 0),
('b023b8f5-9b68-4ffb-bb26-453ce0ed9ab9', 'Benny Brickham', 27, 0),
('b1b6129d-8ce6-42bf-93a5-9cf72ace48f8', 'Scottie Andreou', 47, 0),
('b3349ace-8f21-46ea-8ec2-d3b7ef647281', 'Sabrina Sapp', 31, 1),
('b42a4e3c-7ec6-4c86-adae-80b695babaf7', 'Reid Hardwell', 53, 0),
('b4788591-3bbb-4fc5-a41f-e2b10dc645fc', 'Cyndy Cluer', 64, 0),
('b6abdc6a-7f30-46c4-a7d1-2773fe4bd6df', 'Weidar Skaif', 75, 1),
('b77bf130-b38c-42fd-8655-1f8c12479bba', 'Joy Rennix', 85, 1),
('bc422d01-203d-4f24-af52-c54efc1f2f97', 'Gilbertina Iacoboni', 41, 0),
('bfc8b9a0-2029-4d5d-8b2d-1151a48a592e', 'Celisse Sherrum', 45, 1),
('c0f38504-ab98-4e41-8abb-a7c451732d8e', 'Keefer Beddon', 34, 1),
('c18a08e3-a7ca-4e52-84c0-a157d8bc6c85', 'Simone Glassford', 52, 0),
('c3083318-ab8c-49f2-94f1-392accbd35d7', 'Nataniel Lebrun', 51, 0),
('c73e557a-03d9-473b-b7de-97ca0befe394', 'Christian Brant', 86, 0),
('c895dc24-9955-4b77-bf07-a49bd370fb12', 'Margaux Fotherby', 96, 0),
('cf13d85f-78d1-4f3d-b258-ab1b0eadf740', 'Koressa O\'Dowd', 26, 1),
('cf3c3e6e-2f43-46a4-b739-727e21668a8e', 'Abdul Viggers', 2, 0),
('cf4d2fc9-68e6-4457-9852-e338d7c6e914', 'Daniela Kitson', 54, 1),
('d1b3d5db-b373-41e7-8902-8b4719e78236', 'Dulcinea Woodroffe', 64, 1),
('d528ecf9-69a4-4799-a20f-ddb3d2012c80', 'Jacquie Canacott', 83, 0),
('d543ffba-a322-4c10-be08-b4062cc0a815', 'Brook Dumbar', 57, 0),
('d65d1e3f-ba9a-41a3-9d80-51efb6a1e72d', 'Fernando Craxford', 25, 1),
('dcce4ee1-ced9-4d22-8878-dbd192c5740d', 'Yorker Easton', 71, 0),
('dfee0bf7-6857-477c-8db9-9fb9ef109630', 'Nike Chamney', 82, 1),
('e183e957-4d27-4d49-8b3d-743feb7d1443', 'Eddy Borthe', 20, 0),
('e49dd50a-aec7-45bc-ae84-ba6c3b10e108', 'Erich Castro', 10, 1),
('e60fed10-c582-402f-bd4f-70cf00590aac', 'Julita Janicki', 88, 0),
('ec04c56b-2456-453d-a9fd-499683d2eb75', 'Luella Colyer', 67, 1),
('f0ea9c53-6b18-43a3-95cf-76f3bc7e358d', 'Clare Trevascus', 92, 1),
('f1577141-ee75-4058-a42b-b9e9ea5491a5', 'Beale Basilio', 37, 1),
('f330fa7c-fcc8-46be-8740-72df36c1d2d2', 'Johan Nudde', 0, 1),
('f493f452-3bff-4ed1-9afa-8caa754f090f', 'Brendon Rummer', 77, 1),
('f8094e76-82ca-41f9-9b84-68c62ec3e376', 'Marysa Negri', 12, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241008094926_InitialCreate', '8.0.8');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
