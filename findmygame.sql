-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Jul 2018 um 23:06
-- Server-Version: 10.1.33-MariaDB
-- PHP-Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `findmygame`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ban`
--

CREATE TABLE `ban` (
  `B_ID` int(11) NOT NULL,
  `B_Status` tinyint(1) DEFAULT NULL,
  `B_Duration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ban`
--

INSERT INTO `ban` (`B_ID`, `B_Status`, `B_Duration`) VALUES
(1, 1, '2017-03-29'),
(2, 0, '2016-07-18'),
(3, 0, '2017-10-19'),
(4, 0, '2016-06-21'),
(5, 0, '2018-04-13'),
(6, 1, '2015-07-10'),
(7, 1, '2016-01-02'),
(8, 0, '2017-04-18'),
(9, 0, '2018-07-01'),
(10, 0, '2016-03-03'),
(11, 1, '2016-06-13'),
(12, 1, '2016-05-25'),
(13, 0, '2017-07-18'),
(14, 1, '2016-06-18'),
(15, 1, '2017-02-12'),
(16, 1, '2015-11-20'),
(17, 0, '2016-01-11'),
(18, 0, '2017-08-30'),
(19, 0, '2016-12-03'),
(20, 0, '2018-02-26');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game`
--

CREATE TABLE `game` (
  `GA_ID` int(11) NOT NULL,
  `GA_Name` varchar(255) DEFAULT NULL,
  `GA_Description` varchar(555) DEFAULT NULL,
  `GA_Platform` varchar(255) DEFAULT NULL,
  `GA_Image` varchar(255) DEFAULT NULL,
  `GA_Genre` enum('Shooter','FPS','Action','RPG','Action','Racing','Sports','Fighting') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `game`
--

INSERT INTO `game` (`GA_ID`, `GA_Name`, `GA_Description`, `GA_Platform`, `GA_Image`, `GA_Genre`) VALUES
(1, 'Fortnite', 'Fortnite is a 2017 video game developed by Epic Games which has been released as different software packages featuring different game modes that otherwise share the same general gameplay and game engine. The game modes include Fortnite: Save the World, a cooperative shooter-survival game for up to four players to fight off zombie-like husks and defend objects with fortifications they can build, and Fortnite Battle Royale, a free-to-play battle royale game where up to 100 players fight in increasingly-smaller spaces to be the last person standing.', 'PC, PS4, XBox One, iOS, Android', 'https://blogs-images.forbes.com/erikkain/files/2018/07/Season-5-skins.jp', 'Shooter'),
(2, 'Destiny 2', 'Destiny 2 is an online-only multiplayer first-person shooter video game developed by Bungie and published by Activision. It was released for PlayStation 4 and Xbox One on September 6, 2017, followed by a Microsoft Windows version the following month. It is the sequel to 2014´s Destiny and its subsequent expansions. Set in a \"mythic science fiction\" world, the game features a multiplayer \"shared-world\" environment with elements of role-playing games, such as live events.', 'PC, PS4, XBox One', 'https://am23.akamaized.net/tms/cnt/uploads/2017/09/F83YpiMXCUkeyE6JQ4TXki.jpg ', 'FPS'),
(3, 'Sea of Thieves', 'Sea of Thieves is an action-adventure video game developed by Rare and published by Microsoft Studios for Windows 10 and Xbox One. The game allows players to take the role of a pirate sailing the seas of a fantastical world either solo or as part of a crew of up to four players. The game features both co-operative and player versus player combat. It was released to a limited selection of countries on 20 March 2018 and received mixed reviews from critics.', 'PC, XBOX One', 'https://blogs-images.forbes.com/erikkain/files/2018/03/sea-of-thieves-4.jpg', 'Action'),
(4, 'Overwatch', 'Overwatch is a team-based multiplayer first-person shooter video game developed and published by Blizzard Entertainment, which released on May 24, 2016 for PlayStation 4, Xbox One, and Windows. Described as a \"hero shooter\", Overwatch assigns players into two teams of six, with each player selecting from a roster of over 20 characters, known as \"heroes\", each with a unique style of play whose roles are divided into three general categories that fit their role.', 'PC, XBOX One, PS4', 'https://image.redbull.com/rbcom/010/2015-11-16/1331759970098_2/0100/0/1/overwatch-is-the-new-esports-shooter-game-from-blizzard.jpg', 'FPS'),
(5, 'Call of Duty Black Ops III', 'Call of Duty: Black Ops II is a first-person shooter developed by Treyarch and published by Activision. It was released for Microsoft Windows, PlayStation 3, and the Xbox 360 on November 13, 2012, and for the Wii U on November 18 in North America and November 30 elsewhere. Black Ops II is the ninth game in the Call of Duty franchise of video games.', 'PC, XBOX One, PS4, Wii-U', 'https://i.ytimg.com/vi/pj_q9JhyxUg/maxresdefault.jpg', 'FPS'),
(6, 'Battlefield 1', 'Battlefield 1 is a first-person shooter video game developed by EA DICE and published by Electronic Arts. Battlefield 1 is the fifteenth installment in the Battlefield series, and the first main entry in the series since Battlefield 4. It was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on October 21, 2016', 'PC, XBOX One, PS4', 'http://dice-wp-prd.s3.amazonaws.com/wp-content/uploads/2016/05/06204818/unnamed1.jpg', 'FPS'),
(7, 'Call of Duty: WWII', 'WWII is a first-person shooter video game developed by Sledgehammer Games and published by Activision. It was released worldwide on November 3, 2017 for Microsoft Windows, PlayStation 4 and Xbox One. It is the fourteenth main installment in the Call of Duty series and the first title in the series to be set primarily during World War II since Call of Duty: World at War in 2008.', 'PC, XBOX One, PS4', 'https://blackfridayhits.com/wp-content/uploads/2017/09/Call-of-Duty-WWII-Black-Friday.jpg', 'FPS'),
(8, 'Elder Scrolls Online', 'As with other games in The Elder Scrolls franchise, the game is set in the continent of Tamriel and features a storyline indirectly connected with the other games. The Elder Scrolls Online had been in development for seven years before its release in 2014. It initially received mixed reviews, but these improved significantly with the re-release and rebranding as The Elder Scrolls Online: Tamriel Unlimited, with critics praising the changes.', 'PC, OSX', 'https://esosslfiles-a.akamaihd.net/cms/2018/03/2910589b3911d9fcaef7531386f35036.jpg', 'RPG'),
(9, 'Rainbow Six Siege', 'Rainbow Six Siege is a tactical shooter video game developed by Ubisoft Montreal and published by Ubisoft. Each player assumes control of an attacker or a defender in different gameplay modes such as rescuing a hostage and defusing a bomb. The title has no campaign but features a series of short missions that can be played solo.', 'PC, PS4, OSX', 'https://compass-ssl.xbox.com/assets/fc/9e/fc9e45bd-29b6-4a82-a43b-6f0b0b0d91cb.jpg?n=RSS-MWF_GLP-Page-Hero-1084_1920x600_02.jpg', 'FPS'),
(10, 'Rocket League', 'Described as \"soccer, but with rocket-powered cars\", Rocket League has one to four players assigned to each of the two teams, using rocket-powered vehicles to hit a ball into their opponent´s goal and score points over the course of a match. The game includes single-player and multiplayer modes which can be played both locally and online.', 'PC, PS4, XBOX One, Wii-U', 'https://media.nintendo.com/nintendo/bin/kCKdDGy3o4pKSZMvmaf2rsaJCelSFo5Y/0paV3L7PPQjm0npoQF1B68_pL4O1FTWo.jpg', 'Sports'),
(11, 'FIFA 18', 'FIFA 18 is a football simulation video game in the FIFA series of video games, developed and published by Electronic Arts and was released worldwide on 29 September 2017.', 'PC, PS4, XBOX One', 'https://media.contentapi.ea.com/content/dam/ea/easports/fifa/home/2018/world-cup-april30/top/f18wc-homepage-top-hero-bg-xs.jpg ', 'Sports'),
(12, 'For Honor', 'For Honor is a video game developed and published by Ubisoft for Microsoft Windows, PlayStation 4, and Xbox One. The game allows players to play the roles of historical forms of soldiers and warriors, including knights, samurai, and vikings within a medieval setting, controlled using a third-person perspective.', 'PC, PS4, XBOX One', 'https://i.ytimg.com/vi/sp3NKQlJPuo/maxresdefault.jpg', 'Action'),
(13, 'Ghost Recon Wildlands', 'Ghost Recon Wildlands is a tactical shooter video game developed by Ubisoft Paris and published by Ubisoft. The game moves away from the futuristic setting introduced in Ghost Recon Advanced Warfighter and instead feature a setting similar to the original Ghost Recon. Ubisoft described it as one of the biggest open world games that they have published, with the game world including a wide variety of environments such as mountains, forests, deserts, and salt flats.', 'PC, PS4, XBOX One', 'https://www.windowscentral.com/sites/wpcentral.com/files/styles/xlarge/public/field/image/2018/07/ghost%20recon%20wildlands.jpg?itok=-8C1U0SA', 'Shooter'),
(14, 'Halo 5', 'Halo 5: Guardians is a first-person shooter video game developed by 343 Industries and published by Microsoft Studios for the Xbox One home video game console. The tenth installment and fifth main entry in the Halo series of video games, it was released worldwide on October 27, 2015. The game´s plot follows two fireteams of human supersoldiers: Blue Team, led by Master Chief, and Fireteam Osiris, led by Spartan Locke.', 'PC, XBOX One', 'http://www.hdbilder.eu/pictures/2015/0909/1/guardian-in-halo-5-guardians-retina-wallpapers-235492.jpg', 'FPS'),
(15, 'Borderlands 2', 'Borderlands 2 allows players to complete a campaign consisting of central quests and optional side-missions as one of four (six including downloadable content) treasure seekers, \"Vault Hunters\", on the planet Pandora. Key gameplay features from its predecessor, such as online collaborative campaign gameplay, randomly generated loot, such as weapons and shields and character-building elements commonly found in role-playing video games are in Borderlands 2.', 'PC, PS4, XBOX One', 'https://i.ytimg.com/vi/HDsTrzzMWxY/maxresdefault.jpg', 'RPG'),
(16, 'Player Unknown Battlegrounds', 'PlayerUnknown´s Battlegrounds (PUBG) is an online multiplayer battle royale game. In the game, up to one hundred players parachute onto an island and scavenge for weapons and equipment to kill others while avoiding getting killed themselves. The available safe area of the game´s map decreases in size over time, directing surviving players into tighter areas to force encounters. The last player or team standing wins the round.', 'PC, XBox One, iOS, Android', 'https://upload.wikimedia.org/wikipedia/commons/6/62/PlayerUnknowns-Battlegrounds-1024x576.jpg', 'FPS'),
(17, 'The Division', 'Set in a near future New York City in the aftermath of a smallpox pandemic; the player, who is a Special Agent of the eponymous Strategic Homeland Division, commonly referred to simply as \"Division\", is tasked with helping the group rebuild its operations in Manhattan, investigate the nature of the outbreak, and combating criminal activity in its wake. The Division is structured with elements of role-playing games, as well as cooperative and player versus player online multiplayer.', 'PC, PS4, XBOX One', 'https://i.ytimg.com/vi/pwUGFb-hALk/maxresdefault.jpg', 'RPG'),
(18, 'GTA V', 'Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three criminals and their efforts to commit heists while under pressure from a government agency. The open world design lets players freely roam San Andreas´ open countryside and the fictional city of Los Santos, based on Los Angeles.', 'PC, XBOX One, XBOX 360, PS4, PS3', 'https://cdn.images.dailystar.co.uk/dynamic/184/photos/60000/620x/GTA-5-Online-DLC-LEAKED-Massive-NEW-content-update-REVEALED-for-PS4-Xbox-and-PC-game-703933.jpg', 'Action'),
(19, 'Forza Motorsport 7', 'Forza Motorsport 7 is a racing video game featuring over 700 cars—including new Forza Edition cars, most of which have been brought over from Forza Horizon 3—and more than 200 different configurations to race on across 32 locations at launch, including all from Forza Motorsport 6; a fictional street circuit in Dubai is one of the new circuits and several tracks returning from Forza Motorsport 4 including Maple Valley Raceway, Mugello Circuit and Suzuka Circuit.', 'XBOX One', 'https://cdn.wccftech.com/wp-content/uploads/2018/02/february-forza-motorsport-7-update-3.jpg', 'Racing'),
(20, 'Forza Horizon 3', 'Forza Horizon 3 is a racing video game set in an open world environment based in a fictional representation of Australia. The gameplay world is expansive, twice the size of its predecessor in the series Forza Horizon 2, and includes locales such as Surfers Paradise, Byron Bay, Yarra Valley, Woods Point, Coober Pedy and the Outback.', 'PC, XBOX One', 'http://compass.xboxlive.com/assets/c7/ea/c7ea2e87-d0a4-4855-a0b2-65c12cec644c.jpg?n=FH3_BM_carousel.jpg', 'Racing'),
(21, 'Mario Kart 8 Deluxe', 'Mario Kart 8 Deluxe is a racing game for the Nintendo Switch, and the first Mario game overall for the console. It is the first port of the Mario Kart series, being a port of Mario Kart 8 from the Wii U. It has additional features such as several new characters and features more options for Battle Mode.', 'Wii-U', 'https://i.ytimg.com/vi/a3o_ZKWi-OU/maxresdefault.jpg', 'Racing'),
(22, 'Super Smash Bros.', 'Super Smash Bros. is a series of crossover fighting video games published by Nintendo.The gameplay objective differs from that of traditional fighters by aiming to knock opponents off the stage instead of depleting life bars. ', 'Wii-U', 'https://static.giga.de/wp-content/uploads/2018/03/Vorschau-Super-Smash-Bros.-fuer-Wii-U-thumbnail.jpg ', 'Fighting'),
(23, 'World of Warcraft', ' World of Warcraft is an online role-playing experience set in the award-winning Warcraft universe. Players assume the roles of Warcraft heroes as they explore, adventure, and quest across a vast world. Being \"Massively Multiplayer,\" World of Warcraft allows thousands of players to interact within the same world. Whether adventuring together or fighting against each other in epic battles, players will form friendships, forge alliances, and compete with enemies for power and glory.', 'PC', 'https://images.g2a.com/newlayout/600x351/1x1x0/3f303e175002/5a4f88e55bafe38d90366a12 ', 'RPG'),
(24, 'Counter-Strike GO', 'Global Offensive, like prior games in the Counter-Strike series, is an objective-based, multiplayer first-person shooter. Two opposing teams, known as the Terrorists and the Counter Terrorists, compete in game modes to complete objectives, such as securing a location to plant or defuse a bomb and rescuing or guarding hostages. At the end of each round, players are rewarded based on their individual performance with in-game currency to spend on more powerful weapons in subsequent rounds.', 'PC, XBOX One, PS3', 'https://games4linux.de/wp-content/uploads/2016/03/maxresdefault-3.jpg', 'FPS'),
(25, 'NBA 2K18', 'NBA 2K18 is a basketball simulation game which, like the previous games in the series, strives to realistically depict the National Basketball Association (NBA), as well as present improvements over the previous installments. The player mainly plays NBA games with real-life or customized players and teams; games follow the rules and objectives of NBA games.', 'PC, XBOX One, PS4, Nintendo Switch', 'https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_NBA2K18_image1600w.jpg', 'Sports'),
(26, 'Warframe', 'Warframe is an online action game that includes elements of shooters and stealth games. In the science fiction setting of Warframe, players control members of the Tenno, a race of ancient warriors who have awoken from centuries of cryosleep to find themselves at war in a planetary system with different factions (Grineer, Corpus, Infested, Orokin, and the Tau/Sentients). The Tenno use their powered Warframes along with powerful weapons and abilities to complete missions.', 'PC, XBOX One, PS4', 'http://n9e5v4d8.ssl.hwcdn.net/uploads/277cb62ca66b1693f3f6982e5e757869.png', 'Shooter'),
(27, 'Star Wars Battlefront 2', 'Star Wars Battlefront II is an action shooter video game based on the Star Wars film franchise. Star Wars Battlefront II features nine multiplayer game modes, some of which are available to play only for a limited time, with the largest supporting up to 40 simultaneous players.', 'PC, PS4, XBOX One', 'https://media.contentapi.ea.com/content/dam/walrus/launch-tips/customize-loadout.jpg.adapt.crop16x9.1080p.jpg.adapt.320w.jpg', 'Shooter');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `groups`
--

CREATE TABLE `groups` (
  `GR_ID` int(11) NOT NULL,
  `GR_Name` varchar(255) DEFAULT NULL,
  `GR_Capacity` int(11) DEFAULT NULL,
  `GR_Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `groups`
--

INSERT INTO `groups` (`GR_ID`, `GR_Name`, `GR_Capacity`, `GR_Image`) VALUES
(1, 'Sub-Ex', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(2, 'Aerified', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(3, 'Tres-Zap', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(4, 'Ventosanzap', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(5, 'Treeflex', 12, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(6, 'Alphazap', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(7, 'Cardify', 12, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(8, 'Cardify', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(9, 'Sonsing', 12, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(10, 'Cookley', 12, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(11, 'Quo Lux', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(12, 'Latlux', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(13, 'Tempsoft', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(14, 'Toughjoyfax', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(15, 'Y-find', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(16, 'Home Ing', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(17, 'Lotstring', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(18, 'Subin', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(19, 'Aerified', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(20, 'Cardguard', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(21, 'Zoolab', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(22, 'Mat Lam Tam', 12, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(23, 'Span', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(24, 'Aerified', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(25, 'Aerified', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(26, 'Veribet', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(27, 'Toughjoyfax', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(28, 'Cookley', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(29, 'Zoolab', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(30, 'Duobam', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(31, 'Redhold', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(32, 'Regrant', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(33, 'Pannier', 12, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(34, 'Ventosanzap', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(35, 'Span', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(36, 'Alphazap', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(37, 'Y-Solowarm', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(38, 'Stronghold', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(39, 'Tres-Zap', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(40, 'Duobam', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(41, 'Bamity', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(42, 'Namfix', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(43, 'Matsoft', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(44, 'Vagram', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(45, 'Latlux', 8, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(46, 'Job', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(47, 'Bitwolf', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(48, 'Quo Lux', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(49, 'Vagram', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png'),
(50, 'Lotlux', 4, 'https://d30zbujsp7ao6j.cloudfront.net/wp-content/uploads/2017/07/unnamed.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `platform`
--

CREATE TABLE `platform` (
  `PL_ID` int(11) NOT NULL,
  `FK_GA_ID` int(11) NOT NULL,
  `PL_Name` varchar(255) DEFAULT NULL,
  `PL_Logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `platform`
--

INSERT INTO `platform` (`PL_ID`, `FK_GA_ID`, `PL_Name`, `PL_Logo`) VALUES
(1, 1, 'PC', 'https://image.freepik.com/free-vector/logo-template-background_1390-55.jpg'),
(2, 1, 'XBOX', 'https://image.freepik.com/free-vector/logo-template-background_1390-55.jpg'),
(3, 1, 'Playstation', 'https://image.freepik.com/free-vector/logo-template-background_1390-55.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `posts`
--

CREATE TABLE `posts` (
  `PO_ID` int(11) NOT NULL,
  `FK_GA_ID` int(11) NOT NULL,
  `PO_DateTime` datetime DEFAULT NULL,
  `PO_Headline` varchar(255) DEFAULT NULL,
  `PO_Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `posts`
--

INSERT INTO `posts` (`PO_ID`, `FK_GA_ID`, `PO_DateTime`, `PO_Headline`, `PO_Description`) VALUES
(1, 1, '2015-10-07 14:50:16', 'STORY', '170+ wins looking for three more who have similar send message for invite'),
(2, 9, '2016-06-11 21:43:04', 'LEVELING', 'Trying to look for adult (18+) players for squads! Need a mic and 1 more'),
(3, 5, '2018-06-27 18:24:17', 'MISSION', 'Looking for squad . Mic preferred'),
(4, 1, '2018-04-28 11:23:07', 'ASSIGNMENTS', 'I have 400 wins looking to play with someone'),
(5, 1, '2018-07-14 13:05:09', 'CLAN', 'Looking for a good 4 man. Preferably a main tank, and 2 damage champs so that I can run my off tank zarya or main healer mercy'),
(6, 2, '2017-12-14 06:07:33', 'FREE ROAM', 'Must have mic and be 18+ support or tank mains only. Looking for serious comp team to get to dimond preferable from the eu. PM Hemant0709'),
(7, 15, '2017-04-28 06:47:07', 'CLAN', 'I have 600+ wins & a 3.46kd LIFETIME. Send chat inv if you need 1 or if you wanna run duos . No kids or scrubs'),
(8, 19, '2018-06-27 21:04:00', 'STORY', 'Really Looking to do anything. I just started playing through the main story. No mic yet, its in the mail. Feel free to msg/add me.'),
(9, 13, '2017-07-07 04:02:18', 'CHALLENGE', 'I just want to help someone out in the game. Im bored, hmu Angrygeneral2'),
(10, 14, '2015-09-12 21:42:30', 'UP FOR ANYTHING', '180+ wins looking for three more who have similar send message for invite'),
(11, 8, '2016-07-19 06:45:19', 'COMPETITIVE', 'Diamond 2 looking to go at least to diamond 4. My KDA is 2.0. Msg for invite.'),
(12, 8, '2016-02-29 22:41:37', 'SQUAD', 'Looking for a teammate on same skill level and mic. I have 360+ wins If you have similar stats and wins add me on Epic kederanTwitchTV'),
(13, 9, '2017-11-14 08:47:45', 'LEVELING', 'My team is looking for a decent DPS. Would prefer a good Genji, honzo or hitscan. we play at a high plat/low diamond'),
(14, 24, '2016-09-19 14:52:39', 'STORY', 'looking for company on a fresh playthru, also own most dlc'),
(15, 11, '2015-09-07 06:35:45', 'FREE ROAM', 'I need someone who has Super Marcus Sweep mission active. Im trying to get the Completionist achievement and this is the last mission.'),
(16, 3, '2017-11-08 15:42:52', 'SQUAD', 'Twos. Im diamond on Xbox def not on psn. The_good_widget is psn'),
(17, 21, '2015-06-03 09:12:38', 'QUICKPLAY', 'Need 3 players to help me finish this last setup can continue with them on heist finale as well as other heist'),
(18, 10, '2015-08-24 04:57:48', 'ASSIGNMENTS', 'Mic (doesnt matter), Platinum rank, comunicative,Europe. Steam: /id/terzarpnj'),
(19, 5, '2015-06-27 01:26:59', 'LEVELING', 'We need 1 person to help us with criminal mastermind. -Must be above level 100 -Must have a mic -If possible discord or skype -Must have tim'),
(20, 4, '2018-02-14 03:29:43', 'CLAN', '150+ wins looking for player who has similar. send message'),
(21, 12, '2015-06-27 12:43:06', 'CHALLENGE', 'Looking for people to play Ranked with doesnt matter what playlist'),
(22, 20, '2016-12-03 18:17:38', 'UP FOR ANYTHING', 'Looking for 2 more good players players to play with. Know how to fly and communicate please. MSG for invite'),
(23, 19, '2015-06-26 21:14:35', 'LEVELING', 'Doubles soccer I’m only pro But u can be better! ADD ME AND MESSAGE ME USERNAME IS CUAJ'),
(24, 16, '2016-10-26 15:23:10', 'SQUAD', 'Only for fun'),
(25, 6, '2015-09-17 23:31:47', 'STORY', 'Chill and play some games i dont care. If you have friends they can join to if they want to dont force them. PS. have a mic'),
(26, 14, '2017-01-20 01:59:55', 'enhance value-added paradigms', 'just wanna play some games with people i get to know'),
(27, 10, '2017-05-18 17:21:54', 'MISSION', 'Toe injury operation NOS'),
(28, 22, '2017-11-17 09:57:59', 'SQUAD', 'Trying to find some good players to have some fun and kick ass with. And maybe to join my clan.'),
(29, 15, '2017-11-11 22:49:54', 'ASSIGNMENTS', 'Doing bogdan glitch with replay. Must have act 2 heist ready. Need 1'),
(30, 11, '2017-10-07 14:22:46', 'CASUAL', 'I wanna get to level 50. Help me or you’re a loser. GT:ChuglatMilk'),
(31, 24, '2016-12-18 05:59:17', 'CLAN', 'I need help boosting please I lost my old characters'),
(32, 27, '2017-08-07 18:13:11', 'CHALLENGE', 'Only for fun'),
(33, 25, '2017-07-14 06:45:40', 'RANKED', 'OP 4 right now i need help getting to OP 8 if someone could be nice enought to(i have mic if needed)'),
(34, 19, '2016-11-02 06:48:14', 'MISSION', 'Play with people that use mics- any level'),
(35, 24, '2017-11-19 19:01:47', 'LEVELING', 'searching for any player to join the game'),
(36, 18, '2015-09-30 06:28:26', 'UP FOR ANYTHING', 'i need someone help me get better'),
(37, 13, '2017-05-13 23:01:46', 'SQUAD', 'Oracle Gaming Syndicate is a Gaming Community looking for more players. We play many other games as well. (https:/ /discord. gg/cZTcDxV)'),
(38, 5, '2018-04-11 05:45:54', 'LEVELING', 'Looking for group that knows how to do round 12 panzermorder challenge. Ive done all current available Easter eggs'),
(39, 3, '2016-03-17 17:18:44', 'SQUAD', 'Want to play with people who use headset'),
(40, 2, '2016-10-09 02:16:22', 'CLAN', 'I am a new player to PUBG and am trying to get the ropes of this game down. I know how to do everything in the game but I just need a Tm8'),
(41, 2, '2017-06-25 02:31:25', 'UP FOR ANYTHING', 'Have 4 people already just need one more because we keep getting leavers'),
(42, 4, '2017-04-12 22:44:54', 'RANKED', 'Positive kd and w/l. Was just gold 1 dropped to gold 2. Need team inv me. Same stats and rank around pls'),
(43, 9, '2017-06-09 23:06:57', 'QUICKPLAY', 'play ranked and chill ThoRezlMvp'),
(44, 10, '2017-08-05 19:07:38', 'COMPETITIVE', 'Looking for 2 to play ranked with, send a message over PSN, dont add right away'),
(45, 14, '2017-03-12 06:43:23', 'LEVELING', 'I would like to trade all my gear for infinte ammo I dont have a pc so I cant use a save editor'),
(46, 27, '2016-11-14 01:18:24', 'FREE ROAM', 'Im good. So you should be too'),
(47, 2, '2015-07-29 19:54:12', 'DUO', 'Sweaty squads. Great player. Looking to join up with a squad group. Inv me at schwetzel'),
(48, 5, '2015-10-25 04:14:44', 'QUICKPLAY', 'Looking for players to join my new team that im creating. EU only, Age: 16+. Extensive map knowledge required. Add my steam for details.'),
(49, 11, '2015-10-17 18:04:54', 'innovate holistic e-services', 'Willing to help new players max out. Shoot me an invite if interested'),
(50, 16, '2018-05-24 17:24:58', 'DUO', 'Looking to save Klaus (hardcore ee) would like a full group of 4 if possible. Also looking to do darkest shore ee'),
(51, 22, '2015-07-30 03:32:37', 'QUICKPLAY', 'Need players for ranked me and my m8 are plat 3, eu : Uplay - N-A-A-X; Steam - Doocey'),
(52, 22, '2015-06-24 05:06:19', 'CHALLENGE', 'Looking for people/group to play with. Experienced player currently un-ranked on this season.'),
(53, 25, '2015-08-13 19:33:08', 'RANKED', 'i can do anything but i kinda wanna do dark zone but i can help u if you need help :)'),
(54, 26, '2015-09-15 21:21:13', 'SQUAD', 'Just play and talk(optional)'),
(55, 19, '2016-12-31 20:04:24', 'CASUAL', 'Add me Good Players only inv'),
(56, 6, '2015-08-16 21:12:53', 'COMPETITIVE', '80% winrate lad, play anything but ranked, prefer EU players. uplay: TAW_EvilMuffin Must have discord'),
(57, 4, '2017-02-13 03:21:15', 'LEVELING', 'I have 150+ Wins|2.13 KD| good communication and i share loot. I need 1 more for a 4 man Squad TPP. Message for invite please & ty.'),
(58, 4, '2017-12-05 09:46:23', 'SQUAD', 'Want someone to lvl me up to 70.'),
(59, 6, '2017-04-03 08:49:45', 'MISSION', 'Semi-decent player looking for a squad to run with. 26 and have a mic - GT is o0 iiBackPaCk (letter o followed by the number zero)'),
(60, 8, '2017-11-25 14:17:44', 'QUICKPLAY', 'I’m stuck in low bronze but have made it to silver, I don’t play like a silver I’m just stuck in a low rank, I have over 500 hours on'),
(61, 12, '2018-07-01 04:08:32', 'COMPETITIVE', 'I can aim but my gear is complete trash. Returning player. add me on uplay instead: darknyess'),
(62, 11, '2016-04-27 03:20:19', 'QUICKPLAY', 'Time square power relay legendary. Just inv me to game'),
(63, 10, '2018-02-15 10:55:39', 'RANKED', 'Looking for people who just want to chill and play. Im not on at the moment so i dont remember my level.'),
(64, 17, '2018-07-13 19:35:52', 'QUICKPLAY', 'Just looking for people to play any activity with :)'),
(65, 18, '2017-11-24 02:09:19', 'STORY', 'Looking to get back into duos, 18+ please'),
(66, 22, '2016-03-30 08:53:24', 'MISSION', 'Anyone up for character challenges or just Easter eggs!!!!'),
(67, 21, '2015-07-11 17:43:41', 'QUICKPLAY', 'Need assistance with the last two HVTs. I have the intel to unlock'),
(68, 23, '2017-06-22 10:28:37', 'LEVELING', 'Oracle Gaming Syndicate is a Gaming Community looking for more players. We play many other games as well. (https:/ /discord. gg/cZTcDxV)'),
(69, 20, '2017-07-19 20:53:59', 'QUICKPLAY', 'Looking for group to farm for nomad classified PSN: TheCrazyBadger93 message me'),
(70, 1, '2016-04-04 06:59:54', 'CASUAL', 'Looking for 2 to play ranked with, send a message over PSN, dont add right away'),
(71, 5, '2017-10-06 02:13:33', 'COMPETITIVE', 'Oracle Gaming Syndicate is a Gaming Community looking for more players. We play many other games as well. (https:/ /discord. gg/cZTcDxV)'),
(72, 9, '2017-07-16 07:09:18', 'DUO', 'Im looking for duo/squad. You need to have a decent skill level and you have to be 16+.'),
(73, 11, '2017-06-01 03:33:04', 'MISSION', 'Looking for an power lvl'),
(74, 13, '2016-04-27 00:02:15', 'QUICKPLAY', 'Looking to find a really good teammate so we can go on win streak'),
(75, 17, '2018-01-06 23:30:53', 'DUO', 'Have 4 people already just need one more because we keep getting leavers'),
(76, 19, '2016-04-02 12:22:16', 'MISSION', 'Need 2 people with d3. At the end'),
(77, 25, '2018-04-05 06:44:35', 'DUO', 'need help killing deadlift'),
(78, 26, '2018-02-09 10:28:40', 'UP FOR ANYTHING', 'I want to join other’s games to level up faster.'),
(79, 27, '2016-05-29 05:23:09', 'SQUAD', 'Need someone to help me level to level 70 please help lost my other account :/ level 52'),
(80, 4, '2015-12-27 00:00:50', 'DUO', 'Doing trophy, need 3 more'),
(81, 13, '2016-03-09 15:39:26', 'LEVELING', 'Looking to complete darkest shore Easter egg and/or character challenges Name is same as my psn name'),
(82, 12, '2016-04-22 07:43:21', 'QUICKPLAY', 'Starting new, hoping to at least complete normal and maybe all the way up to UVM, possibly all sidequests if youre up for it!'),
(83, 8, '2015-12-09 23:04:15', 'MISSION', 'Looking to do a freah strat from 0-70. Please be mature but have a sense of humor. I will play any character. Message Porousbug624 on Xbox'),
(84, 23, '2015-11-06 07:00:06', 'CLAN', 'New clan looking for members, international but mostly EU, any rep. and skill level is accepted. PM on Steam or Uplay : SYG-Afterburn.'),
(85, 25, '2018-04-25 12:27:50', 'DUO', 'Looking for a group wanting to have some fun, play different modes, and learn new characters. 25+'),
(86, 24, '2018-06-28 08:59:02', 'SQUAD', 'Looking for people/group to play with. Experienced player currently un-ranked on this season.'),
(87, 17, '2015-09-04 19:23:48', 'LEVELING', 'Need someone to quickly finish the rest of uvhm for me'),
(88, 19, '2016-05-27 20:59:49', 'FREE ROAM', 'wanna go around completing side mission and encounters to help get xp n resources no mic msg MrRawnjia'),
(89, 12, '2017-09-20 18:24:22', 'UP FOR ANYTHING', 'Expirenced players only Looking to run clear sky heroic in 5 minutes or less each run for 1hr. Need reclaimer, striker, final measure'),
(90, 10, '2017-06-09 03:33:59', 'DUO', 'I’m stuck in low bronze but have made it to silver, I don’t play like a silver I’m just stuck in a low rank, I have over 500 hours on'),
(91, 20, '2016-12-14 21:30:50', 'CASUAL', 'Need help defeating ShadowTrap'),
(92, 7, '2016-12-20 09:52:51', 'COMPETITIVE', 'Decent, have a few dinners. Uses a mic. Just LFG thats casual / looking to win that uses comms. 18+ please. Add me BustaNut1320'),
(93, 18, '2017-12-20 07:27:09', 'STORY', 'Looking for anyone who thinks it would be a pretty to play the game from start to end with a team only filled with Fragtraps'),
(94, 16, '2017-04-22 12:12:21', 'QUICKPLAY', 'searching for 2vs2 rank partner. a mic is a must. im platinum 1 devision 2 looking for chill partner send me friend request'),
(95, 24, '2018-01-26 16:33:23', 'COMPETITIVE', 'Need some help with the story. Im a New player. Im finding it hard because every mission I can do has npcs 1-2 levels higher.'),
(96, 1, '2016-11-12 02:16:43', 'FREE ROAM', 'Dominion Only, English only, 18+ add below for discord GMist#3024'),
(97, 2, '2015-07-07 00:31:50', 'CLAN', 'Looking for people to squad with. My boy and i are both 2.0+ kd. Message me if you want to run the pub lobbies'),
(98, 3, '2015-07-18 08:46:05', 'DUO', 'I just started after playing forever borderlands 2. Just wanna play with someone, I hate being lonely. Add me if you wanna play any of them'),
(99, 9, '2016-04-27 07:39:54', 'CHALLENGE', 'searching for competitive team. must have discord and mic. must be nice. discord: TheBubbleLover#9170 uplay: TheBubbleLover'),
(100, 7, '2016-03-29 06:02:36', 'SQUAD', 'Looking for mature (18+), skilled, relaxed players. NA Region preferably.'),
(101, 26, '2016-08-28 00:59:48', 'QUICKPLAY', 'Help power leveling plz'),
(102, 22, '2017-08-14 05:07:42', 'CASUAL', 'normally play on the xbox but just got the PC version so looking for some new buddies to get some chicken dinners with.'),
(103, 20, '2017-04-20 19:37:05', 'MISSION', 'Would really like help leveling. Or some help through the story'),
(104, 17, '2017-07-06 04:56:13', 'LEVELING', 'Just like to get to max lvl. Message me or invite me?'),
(105, 15, '2018-06-14 22:02:04', 'SQUAD', 'Looking for a good squad to get some quick easy dubs in ranked. PSN: XLink_the_DemonX');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `U_ID` int(11) NOT NULL,
  `FK_PE_ID` int(11) DEFAULT NULL,
  `FK_I_ID` int(1) DEFAULT NULL,
  `FK_B_ID` int(1) DEFAULT NULL,
  `FK_PL_ID` int(1) DEFAULT NULL,
  `FK_GR_ID` int(1) DEFAULT NULL,
  `FK_PO_ID` int(1) DEFAULT NULL,
  `U_Username` varchar(255) DEFAULT NULL,
  `U_Pass` varchar(255) DEFAULT NULL,
  `U_Email` varchar(255) DEFAULT NULL,
  `U_Status` tinyint(1) DEFAULT NULL,
  `U_Firstname` varchar(255) DEFAULT NULL,
  `U_Lastname` varchar(255) DEFAULT NULL,
  `U_Age` int(11) DEFAULT NULL,
  `U_Address` varchar(255) DEFAULT NULL,
  `U_City` varchar(255) DEFAULT NULL,
  `U_Region` varchar(255) DEFAULT NULL,
  `U_Avatar` varchar(255) DEFAULT NULL,
  `U_Rank` varchar(255) DEFAULT NULL,
  `U_Socials` varchar(255) DEFAULT NULL,
  `U_Role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`U_ID`, `FK_PE_ID`, `FK_I_ID`, `FK_B_ID`, `FK_PL_ID`, `FK_GR_ID`, `FK_PO_ID`, `U_Username`, `U_Pass`, `U_Email`, `U_Status`, `U_Firstname`, `U_Lastname`, `U_Age`, `U_Address`, `U_City`, `U_Region`, `U_Avatar`, `U_Rank`, `U_Socials`, `U_Role`) VALUES
(1, 1, 1, 1, 1, 1, 1, 'rtrenholm0', 's4jr27W2sQxj', 'rtrenholm0@mayoclinic.com', 0, 'Reginald', 'Trenholm', 40, '07465 Stuart Point', 'Qingyang', 'South America', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Intermediate', 'Steam', 'admin'),
(2, 1, 1, 1, 1, 1, 1, 'bhallaways1', 'mCQq1ai54q', 'bhallaways1@cnbc.com', 0, 'Bail', 'Hallaways', 19, '30 Morning Road', 'Lokatadho', 'Asia', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Expert', 'Battlenet', 'user'),
(3, 1, 1, 1, 1, 1, 1, 'lmctrusty2', 'hCibvyEPX', 'lmctrusty2@wired.com', 0, 'Lemmie', 'McTrusty', 49, '9599 Warrior Park', 'Covas', 'North America', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Beginner', 'Skype', 'user'),
(4, 1, 1, 1, 1, 1, 1, 'lballsdon3', '1twZzNCAj', 'lballsdon3@springer.com', 1, 'Lelah', 'Ballsdon', 50, '860 Heffernan Plaza', 'Yangjiaping', 'Oceania', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Expert', 'Discord', 'user'),
(5, 1, 1, 1, 1, 1, 1, 'ojoll4', 'QcRdv9x', 'ojoll4@rediff.com', 1, 'Olga', 'Joll', 41, '7274 Village Green Terrace', 'Aramayuan', 'Africa', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Beginner', 'Twitch', 'admin'),
(6, 1, 1, 1, 1, 1, 1, 'rblindermann5', '1Rr3jPA', 'rblindermann5@ucoz.ru', 0, 'Rois', 'Blindermann', 19, '548 Ryan Alley', 'Dayr Ab? ?a??f', 'Europe', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Expert', 'TeamSpeak', 'user'),
(7, 1, 1, 1, 1, 1, 1, 'pbouch6', 'uUMiMoK2g8', 'pbouch6@typepad.com', 0, 'Patrice', 'Bouch', 23, '9 Aberg Crossing', 'Kemuning', 'North America', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Intermediate', 'Battlenet', 'user'),
(8, 1, 1, 1, 1, 1, 1, 'gbratt7', 'PzgI9at1', 'gbratt7@ifeng.com', 1, 'Gino', 'Bratt', 30, '0982 Crowley Road', 'Aikmel', 'Asia', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Beginner', 'Discord', 'user'),
(9, 1, 1, 1, 1, 1, 1, 'dwarkup8', '44bgua', 'dwarkup8@oracle.com', 0, 'Daisey', 'Warkup', 21, '1628 Browning Center', 'Singida', 'Oceania', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Beginner', 'TeamSpeak', 'user'),
(10, 1, 1, 1, 1, 1, 1, 'ochristescu9', 'zMdw2gc5H', 'ochristescu9@sitemeter.com', 1, 'Olimpia', 'Christescu', 18, '9 Sunfield Parkway', 'Honolulu', 'Oceania', 'http://www.colchestersun.com/wp-content/uploads/2018/01/user-dummy.png', 'Expert', 'Origin', 'user');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`B_ID`);

--

-- Indizes für die Tabelle `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GR_ID`);

--
-- Indizes für die Tabelle `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`PL_ID`);

--
-- Indizes für die Tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`PO_ID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`U_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ban`
--
ALTER TABLE `ban`
  MODIFY `B_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `GE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `groups`
--
ALTER TABLE `groups`
  MODIFY `GR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT für Tabelle `platform`
--
ALTER TABLE `platform`
  MODIFY `PL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `posts`
--
ALTER TABLE `posts`
  MODIFY `PO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
