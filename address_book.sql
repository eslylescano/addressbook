-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 22, 2018 at 09:24 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `address_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `postcode`, `telephone`, `email`, `dob`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wesleyy', '521-3126 Consectetuer, St.', '3328 QH', '055 7078 4084', 'lacinia.orci.consectetuer@vestibulummassarutrum.org', '08/06/1970', 1, NULL, '2018-08-22 16:01:32'),
(2, 'Joseph', 'Ap #409-7370 Adipiscing Street', 'R8S 5W5', '(024) 6832 5908', 'Nullam@natoque.co.uk', '06/24/1990', 2, NULL, NULL),
(3, 'Kylie', '5390 Cursus. Street', '05926-816', '0800 1111', 'sed@egestasrhoncus.co.uk', '10/18/1982', 3, NULL, NULL),
(4, 'Aaron', '9961 Aenean Street', '617892', '055 6139 1734', 'Cras.dolor.dolor@Fuscedolorquam.net', '02/01/1998', 2, NULL, NULL),
(5, 'Erica', 'P.O. Box 178, 8168 At, Ave', '67209-386', '0500 169817', 'dapibus@Duis.net', '10/01/1991', 1, NULL, NULL),
(6, 'Yasir', 'P.O. Box 829, 4367 Enim. Road', '589499', '07624 346422', 'eu.elit.Nulla@cursus.net', '06/27/1990', 1, NULL, NULL),
(7, 'Hermione', '7786 Erat, St.', '98272', '0845 46 46', 'quis.pede.Suspendisse@Phasellusdolor.edu', '04/13/1971', 1, NULL, NULL),
(8, 'Tasha', '7360 Diam. Avenue', '3425', '076 7372 3539', 'cursus@commodotincidunt.co.uk', '12/23/1991', 2, NULL, NULL),
(9, 'Martha', 'Ap #596-803 Id Road', '65885', '076 7327 5833', 'felis.eget.varius@eu.org', '04/26/1996', 2, NULL, NULL),
(10, 'Kyle', 'P.O. Box 361, 4314 Sem. Rd.', '354256', '056 9194 0676', 'nibh@semutdolor.net', '07/05/1972', 2, NULL, NULL),
(11, 'Faith', 'Ap #501-7795 Vulputate, Rd.', '602298', '07624 243963', 'malesuada@Nullam.ca', '09/01/1975', 2, NULL, NULL),
(12, 'Teegan', 'Ap #426-5935 Sed Avenue', '21506', '(01884) 420195', 'aliquet@egestas.org', '11/22/1986', 3, NULL, NULL),
(13, 'Brielle', '537-3700 Et Street', '32583', '055 7849 2675', 'magna.et.ipsum@montes.com', '09/02/1988', 2, NULL, NULL),
(14, 'Pearl', '925-4729 Ipsum St.', '73-086', '0500 871579', 'lorem.vitae@vulputateposuerevulputate.net', '11/27/1997', 2, NULL, NULL),
(15, 'Evan', '945-9068 Vel Road', '17521', '07085 748591', 'laoreet.ipsum@enimdiamvel.com', '05/26/1992', 2, NULL, NULL),
(16, 'Halee', '133 Eu St.', '066480', '(016977) 1592', 'diam@Nullam.net', '06/05/1984', 3, NULL, NULL),
(17, 'Cameron', 'P.O. Box 220, 4052 Pellentesque Rd.', '50302', '0800 1111', 'luctus.ut@vestibulumneceuismod.co.uk', '10/21/1984', 3, NULL, NULL),
(18, 'Dane', '6878 Est, St.', '26234', '0800 982 9303', 'sociis.natoque@hymenaeosMaurisut.com', '08/20/1997', 1, NULL, NULL),
(19, 'Desiree', '484-9675 Erat Rd.', '2706 OB', '(0110) 304 2657', 'vitae.purus@Proinvel.com', '04/07/1974', 1, NULL, NULL),
(20, 'Xander', '957-6004 Auctor St.', 'NE1 6XT', '0800 246 2080', 'orci.Donec@adipiscing.co.uk', '10/18/1982', 1, NULL, NULL),
(21, 'Karly', '7551 Sed, Road', 'G5H 2R5', '076 6556 4955', 'amet.consectetuer.adipiscing@tristique.co.uk', '02/11/1975', 1, NULL, NULL),
(22, 'TaShya', '1697 Aliquam St.', '6357', '(0151) 927 7923', 'a.scelerisque.sed@vel.com', '09/12/1992', 2, NULL, NULL),
(23, 'Giacomo', 'Ap #919-8068 Lorem St.', '79925', '0964 771 1991', 'consectetuer@dolorQuisque.net', '11/16/1978', 3, NULL, NULL),
(24, 'Guy', '893-5183 Feugiat Avenue', '56389', '(0111) 191 5494', 'a.sollicitudin@nullamagna.net', '07/02/1998', 3, NULL, NULL),
(25, 'Josephine', 'P.O. Box 436, 6929 Curabitur St.', '2579', '(016977) 1105', 'sem@vellectus.ca', '06/22/1980', 2, NULL, NULL),
(26, 'Cassidy', '323-8109 Turpis Rd.', '1439', '056 8160 0330', 'dolor.Quisque.tincidunt@augue.co.uk', '10/18/1986', 1, NULL, NULL),
(27, 'Arden', 'P.O. Box 679, 1603 Viverra. Street', '855775', '(01504) 297763', 'nibh@Aeneanegetmagna.com', '08/25/1971', 2, NULL, NULL),
(28, 'Quinlan', 'P.O. Box 117, 6494 Luctus. Avenue', '722193', '0331 665 5248', 'Aenean@magnamalesuadavel.edu', '01/08/1976', 3, NULL, NULL),
(29, 'Astra', '2019 Non, Ave', '4862', '(0110) 599 5823', 'fermentum.fermentum@Aliquam.edu', '10/24/1988', 2, NULL, NULL),
(30, 'Seth', '790-5452 Odio, Rd.', '92434', '(025) 7317 3691', 'Integer.eu.lacus@urnanec.org', '09/22/1991', 3, NULL, NULL),
(31, 'Quail', 'P.O. Box 680, 2546 Ultrices. St.', '54524-991', '0845 46 49', 'risus@tincidunt.ca', '01/04/1985', 2, NULL, NULL),
(32, 'Abdul', 'Ap #557-6658 Phasellus St.', '306663', '(01923) 879854', 'dignissim@consequatnec.net', '08/15/1984', 2, NULL, NULL),
(33, 'Valentine', '3139 Euismod Av.', '45855', '0859 670 9426', 'eu.ligula@purusac.ca', '08/28/1980', 1, NULL, NULL),
(34, 'Adam', 'Ap #700-5960 Magna Street', '5873 QO', '076 5796 2687', 'nunc.In@rhoncus.net', '08/16/1996', 3, NULL, NULL),
(35, 'Peter', 'P.O. Box 515, 917 Turpis. Rd.', '43-149', '(0110) 643 9608', 'primis.in.faucibus@elit.co.uk', '02/02/1976', 1, NULL, NULL),
(36, 'Nora', 'P.O. Box 145, 2527 A, Avenue', '265489', '(024) 6702 8212', 'Nunc.commodo.auctor@Cumsociis.net', '11/16/1977', 3, NULL, NULL),
(37, 'Scott', '3968 Mauris St.', '38596', '(012350) 13762', 'ut@elitsed.org', '08/13/1992', 2, NULL, NULL),
(38, 'Sydnee', '8794 Facilisi. Street', '03098', '(0114) 136 3273', 'dolor.Quisque@enimMauris.org', '05/12/1973', 1, NULL, NULL),
(39, 'Ciara', 'P.O. Box 480, 1617 Et Av.', '9107', '0858 940 1231', 'massa@lacusMaurisnon.co.uk', '01/23/1989', 3, NULL, NULL),
(40, 'Chelsea', '751-2451 Tempor, Road', 'E3W 7E0', '056 8077 5041', 'semper@vel.co.uk', '07/19/1993', 2, NULL, NULL),
(41, 'Jermaine', 'P.O. Box 203, 7733 Aliquet, Avenue', '4426', '0343 494 4037', 'risus@venenatis.co.uk', '12/26/1970', 3, NULL, NULL),
(42, 'Isabella', '2193 Lobortis Avenue', '3651 BG', '(01484) 263680', 'a@metusIn.net', '03/28/1973', 1, NULL, NULL),
(43, 'Ivory', 'Ap #615-3873 Cum St.', '95470', '(013574) 49264', 'vel.est@blanditcongueIn.co.uk', '06/21/1981', 1, NULL, NULL),
(44, 'Elton', '731-2916 Cras Av.', '70-170', '056 2560 1568', 'malesuada.Integer@pedesagittisaugue.com', '07/07/1992', 1, NULL, NULL),
(45, 'Jaquelyn', '2267 Semper Avenue', 'M7T 1N1', '(01681) 26137', 'mi@fringillaeuismod.org', '09/08/1978', 2, NULL, NULL),
(46, 'Aristotle', 'P.O. Box 208, 5149 Amet St.', '315099', '07300 361621', 'mollis.Duis@duinec.org', '02/02/1979', 3, NULL, NULL),
(47, 'Rashad', '869-5438 Integer St.', '469266', '076 3452 2887', 'nec.leo@utmolestie.com', '05/31/1976', 1, NULL, NULL),
(48, 'Felicia', 'Ap #900-8579 Est Rd.', '81966', '0800 1111', 'Donec.tempus@Aliquameratvolutpat.co.uk', '09/20/1988', 1, NULL, NULL),
(49, 'Bell', '8036 Mattis Rd.', '72906', '0500 677168', 'Quisque.imperdiet@magna.net', '12/29/1989', 2, NULL, NULL),
(50, 'Charissa', '5173 In Ave', '625522', '0845 46 45', 'nunc.sed.libero@aliquam.co.uk', '06/15/1983', 3, NULL, NULL),
(51, 'Cathleen', 'P.O. Box 916, 4748 Vehicula Rd.', '13101', '(0191) 623 7996', 'lacus.Ut.nec@cubilia.co.uk', '04/04/1989', 3, NULL, NULL),
(52, 'Francesca', 'Ap #456-8690 Eu Street', '551599', '070 5376 3128', 'nec@Maecenasmifelis.ca', '06/10/1994', 3, NULL, NULL),
(53, 'Maile', '302-3661 Varius Street', 'N5Y 6E5', '0800 593316', 'quam.a@arcuVestibulum.ca', '03/01/1973', 2, NULL, NULL),
(54, 'Catherine', 'Ap #238-4311 Massa. Ave', '72663', '0800 1111', 'interdum@Phasellus.com', '02/08/1985', 1, NULL, NULL),
(55, 'Jason', '9115 Vitae Av.', '8750 PQ', '(0101) 768 3213', 'at.pede.Cras@nasceturridiculus.net', '12/16/1996', 3, NULL, NULL),
(56, 'Jeanette', 'Ap #477-9010 Odio. Road', '5223', '07624 773648', 'Curabitur.sed@sedsem.ca', '09/13/1977', 3, NULL, NULL),
(57, 'Keely', '8923 Urna. Street', '5833', '0980 994 3400', 'non.sollicitudin@magnaDuis.edu', '06/29/1977', 3, NULL, NULL),
(58, 'Gay', '4293 Ac St.', '54605', '(01391) 768032', 'at.sem@orcisem.edu', '08/16/1992', 1, NULL, NULL),
(59, 'Michael', 'Ap #585-2806 Mollis Av.', '79668', '0800 1111', 'vestibulum@semegestas.edu', '10/09/1998', 3, NULL, NULL),
(60, 'Kylee', '2011 Arcu. Rd.', '6375 KP', '070 0789 8752', 'Duis.elementum.dui@consectetuer.edu', '04/05/1972', 3, NULL, NULL),
(61, 'Kennan', '6063 Amet Street', '330076', '(01030) 72209', 'mattis.Integer.eu@semmagna.edu', '03/15/1974', 1, NULL, NULL),
(62, 'Tyler', 'P.O. Box 732, 2165 Purus. St.', '84022', '(016977) 7389', 'dolor@sempererat.com', '04/07/1994', 3, NULL, NULL),
(63, 'Martina', '3466 Curabitur Av.', '9659', '0845 46 47', 'dui@litoratorquentper.com', '03/31/1990', 2, NULL, NULL),
(64, 'Xavier', 'Ap #301-3661 Sodales Road', '00879', '0800 1111', 'fermentum@augueutlacus.net', '01/01/1987', 3, NULL, NULL),
(65, 'Daniel', 'P.O. Box 157, 8993 Quisque St.', '57253', '(028) 1291 2486', 'tortor.Nunc@duiCras.net', '06/12/1996', 2, NULL, NULL),
(66, 'Ryan', '1844 Nulla Rd.', '49194', '0500 197755', 'dui.nec@Maecenasmifelis.net', '01/18/1974', 1, NULL, NULL),
(67, 'Eagan', 'P.O. Box 306, 5460 In, St.', '31569', '07624 236834', 'sagittis.augue@non.co.uk', '11/21/1980', 1, NULL, NULL),
(68, 'Galena', '8441 Viverra. St.', '644899', '(021) 5945 1537', 'lorem.semper.auctor@massaMaurisvestibulum.net', '04/02/1984', 3, NULL, NULL),
(69, 'Fredericka', '6375 Pulvinar St.', '95879', '076 6995 3064', 'Nunc.mauris@gravidasagittisDuis.org', '07/03/1973', 2, NULL, NULL),
(70, 'Solomon', '7955 Malesuada Rd.', '7501', '07624 903774', 'diam.lorem.auctor@loremeumetus.com', '07/24/1980', 1, NULL, NULL),
(71, 'Alec', '8350 In St.', '947657', '07012 864870', 'dictum.eu.placerat@risus.edu', '04/03/1971', 2, NULL, NULL),
(72, 'Reese', '267-9015 Natoque Road', '52465', '(0161) 732 7296', 'Curae.Donec@fermentumconvallis.net', '01/03/1989', 2, NULL, NULL),
(73, 'Stacey', '8443 Donec Rd.', '7893 KI', '056 3318 5843', 'molestie.pharetra.nibh@egestas.ca', '07/15/1989', 3, NULL, NULL),
(74, 'Marsden', 'Ap #897-8035 Nunc Rd.', '4928 AZ', '07562 108246', 'erat@aliquetmagnaa.ca', '11/18/1971', 2, NULL, NULL),
(75, 'Vanna', '937-8392 Sed Rd.', '13-172', '0946 828 7145', 'faucibus@nibh.net', '12/25/1992', 2, NULL, NULL),
(76, 'Clio', 'P.O. Box 199, 6724 Ligula Street', '96353', '(025) 6117 0795', 'ultrices.mauris@congueIn.com', '11/17/1975', 1, NULL, NULL),
(77, 'Yuri', '3596 Non, Rd.', '7779', '0800 689969', 'aliquet.diam@nibhdolor.co.uk', '03/27/1970', 2, NULL, NULL),
(78, 'Omar', 'P.O. Box 904, 4366 Elit Ave', '80327', '(029) 3567 4345', 'luctus@urnaUttincidunt.com', '10/31/1978', 1, NULL, NULL),
(79, 'Kylee', '116-9183 Nunc Ave', 'P9G 7P5', '076 9023 6399', 'ante@pretiumet.edu', '12/03/1989', 2, NULL, NULL),
(80, 'Lucian', '985 Fusce Ave', '9151', '0301 100 2717', 'ornare.tortor.at@pede.org', '06/04/1992', 2, NULL, NULL),
(81, 'Rajah', '327-8285 Felis. Rd.', '40446-913', '0898 714 0475', 'nulla.ante@cursusdiamat.org', '06/21/1986', 1, NULL, NULL),
(82, 'Levi', 'P.O. Box 586, 6101 Quis Rd.', '72762', '055 8852 5153', 'accumsan@nonantebibendum.ca', '08/04/1996', 1, NULL, NULL),
(83, 'Vernon', 'P.O. Box 160, 2106 Nulla Road', '17428', '(01524) 444210', 'vulputate.dui.nec@Sedeueros.org', '12/04/1984', 3, NULL, NULL),
(84, 'Travis', '784-4883 Tincidunt Avenue', '1850 CX', '(016977) 8923', 'consectetuer.adipiscing@Phasellus.org', '01/25/1992', 1, NULL, NULL),
(85, 'Raja', 'P.O. Box 188, 4312 Curae; Ave', '46104', '(0117) 756 5736', 'ornare.facilisis@inmagnaPhasellus.org', '12/08/1995', 2, NULL, NULL),
(86, 'Leigh', '757-7783 Laoreet St.', '648919', '0913 065 0489', 'lacinia.orci.consectetuer@augueeutempor.com', '12/22/1970', 3, NULL, NULL),
(87, 'Raphael', 'Ap #172-4945 Eget Ave', '0301 DD', '0800 904 5086', 'sagittis@Vestibulumaccumsanneque.net', '03/20/1989', 3, NULL, NULL),
(88, 'Justin', 'Ap #244-3219 Faucibus Rd.', '27330', '0386 805 1069', 'augue.ut.lacus@rutrumurna.com', '09/18/1987', 2, NULL, NULL),
(89, 'Tashya', '355-7194 Orci St.', '0529', '(016977) 1414', 'semper.egestas@id.net', '07/12/1994', 3, NULL, NULL),
(90, 'Bell', '9058 Felis. Road', 'Y6G 2H2', '07157 094740', 'sociis.natoque.penatibus@nulla.net', '12/12/1970', 1, NULL, NULL),
(91, 'Kareem', 'Ap #511-164 Pede. Av.', '4725', '(0111) 176 0059', 'Donec.fringilla.Donec@Quisqueporttitor.edu', '08/12/1981', 1, NULL, NULL),
(92, 'Branden', '276 Lectus Av.', '11118', '(0113) 858 5812', 'massa@odioauctorvitae.co.uk', '05/06/1970', 1, NULL, NULL),
(93, 'Aubrey', '246-8388 Elit Road', 'T5R 9AD', '0800 1111', 'sapien.Cras.dolor@consequatdolor.org', '10/21/1985', 2, NULL, NULL),
(94, 'Brianna', 'Ap #426-1960 Nunc St.', '49699-060', '056 7003 4298', 'Nulla@Nunclectuspede.com', '09/21/1984', 3, NULL, NULL),
(95, 'Molly', 'P.O. Box 882, 1661 Ut Street', 'W64 8SB', '0800 1111', 'nunc.sed.pede@neque.com', '05/29/1997', 2, NULL, NULL),
(96, 'Keelie', '9500 Cubilia Rd.', '2178 AG', '0800 346 4136', 'erat.vel.pede@velit.edu', '09/21/1979', 2, NULL, NULL),
(97, 'Jaden', '686-1563 Ipsum Av.', '5914', '0845 46 42', 'ultrices@massaQuisque.co.uk', '08/04/1988', 1, NULL, NULL),
(98, 'Ian', '564-619 Ac Street', 'S1M 8E0', '0800 667 5959', 'est.congue@scelerisquesed.co.uk', '08/28/1998', 2, NULL, NULL),
(99, 'Cecilia', 'P.O. Box 549, 7987 Nulla Street', '1736 WB', '(01332) 75505', 'a.nunc.In@turpisnecmauris.com', '11/11/1997', 2, NULL, NULL),
(100, 'Basil', '9294 Nunc St.', '2666', '0823 287 8307', 'Praesent.interdum.ligula@liberoDonecconsectetuer.co.uk', '03/30/1975', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_15_233838_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'user1@gmail.com', '$2y$10$ELCnoyO5cf4rddiAk42t.usdvu46.J.0Qkf820sWj.jY7CE.YKw9a', 'lgMny9IMbUPZCBkn7NXEER3d4o2MbjcIzM2FY11mnyQXIZKm9Tmhnbd6AEpv', '2018-08-22 12:32:43', '2018-08-22 12:32:43'),
(2, 'user2', 'user2@gmail.com', '$2y$10$nSucv7F9fflNIBBv6Z1vsuWf1GsXqH6RDBWSBTtLrIYsEgkI3J/YO', 'yEdgI9iAyp8x1JzcYvgLX8a9N8qmiWWsRGScG9iShPW6Tx6FYcLXD5lgaqWR', '2018-08-22 12:33:07', '2018-08-22 12:33:07'),
(3, 'user3', 'user3@gmail.com', '$2y$10$EVGVbl5yt7kPofipmLdUxewpLTS7YrtCcdQxL3K3iQty7QhIwoz9K', 'vdvFjbyw8iaCPsxyVpHDKaGLlYnjqPwgJZF1EUaqtPZ1EXiwOMjAKOerr3Pz', '2018-08-22 12:33:35', '2018-08-22 12:33:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
