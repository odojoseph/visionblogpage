-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2021 at 11:54 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biocode`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add comment', 8, 'add_comment'),
(30, 'Can change comment', 8, 'change_comment'),
(31, 'Can delete comment', 8, 'delete_comment'),
(32, 'Can view comment', 8, 'view_comment'),
(33, 'Can add attachment', 9, 'add_attachment'),
(34, 'Can change attachment', 9, 'change_attachment'),
(35, 'Can delete attachment', 9, 'delete_attachment'),
(36, 'Can view attachment', 9, 'view_attachment'),
(37, 'Can add image', 10, 'add_image'),
(38, 'Can change image', 10, 'change_image'),
(39, 'Can delete image', 10, 'delete_image'),
(40, 'Can view image', 10, 'view_image');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$yviSxQFHHCMQ$UL3ekZcvW4X6EKhp5IYpI+AwI01fJuPPGAT1PeTv3z0=', '2020-10-16 15:13:42.198787', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-09-24 22:21:27.873010');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `name`, `email`, `body`, `created_on`, `active`, `post_id`) VALUES
(11, 'okechukwe', 'ify@gmail.com', 'dsdasf', '2020-09-24 23:46:11.304396', 1, 2),
(12, 'okechukwe', 'ify@gmail.com', 'dsdasf', '2020-09-24 23:46:33.869511', 0, 2),
(13, 'Ik Joseph', 'ndbestfashion82@gmail.com', 'I like this your post. It is educating, please keep it up.', '2020-10-04 23:13:52.968039', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_image`
--

CREATE TABLE `blog_image` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_image`
--

INSERT INTO `blog_image` (`id`, `title`, `image`) VALUES
(1, 'The beauty of END SARS', 'images/5-PRAISE-WORSHIP-SONGS-CHORD-PROGRESSIONS-YOU-SHOULD-KNOW-yallemedia.com_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `imgtitle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `slug`, `updated_on`, `content`, `created_on`, `status`, `author_id`, `image`, `imgtitle`) VALUES
(1, 'My First blog in django', 'my-first-blog-django', '2020-09-24 22:55:35.959087', 'THE CONSTITUTION \r\n\r\nOF\r\n\r\n\r\nTHE IZZI UNIQUE STARS \r\nASSOCIATION\r\n (IUSA)\r\n\r\n\r\n\r\nIZZI, EBONYI STATE, \r\nUMUNZE BRANCH, \r\nORUMBA SOUTH L.G.A, \r\nANAMBRA STAE, \r\nNIGERIA.\r\n\r\n\r\n \r\nTHE CONSITUTION OF THE IZZI UNIQUE STARS ASSOCIATION (IUSA)\r\nIZZI, EBONYI STATE, UMUNZE BRANCH, ORUMBA SOUTH L.G.A, ANAMBRA STATE, NIGERIA.\r\n\r\nPREAMBLE:\r\nWe, the entire members of the Izzi Unique Stars Association (IUSA), Izzi, Ebonyi State, Nigeria have firmly and solemnly resolved:\r\n1.	To form an association for the purpose of promoting unity, the spirit of oneness, social discipline and friendship among all the members of the Association.\r\n2.	To provide a constitution for the purpose of promoting good ideas and well-being of all individuals in the association.\r\n3.	We hereby make, enact and give to ourselves this constitution.\r\n\r\nCITATION: \r\nThis instrument shall be cited as the Constitution of the Izzi Unique Stars Association (IUSA), Izzi, Ebonyi State, Nigeria, Umunze branch, Orumba South L.G.A, Anambra State.\r\n\r\nSUPREMACY OF THE CONSTITUTION:\r\n1.	This constitution shall be supreme and its provisions shall be binding on all the IUSA collectively and individually.\r\n2.	Other law(s), decision(s) of anybody, organ or person(s) under this association which contradicts the provisions of this constitution stand(s) null and void and of no effect to the extent of its contradiction  \r\n3.	The mantle of leadership of this Association can only be upheld, in accordance with the provisions of this constitution.\r\n\r\nARTICLE1\r\n\r\nSECTION A:\r\nNAME OF THE ASSOCIATION\r\nThe Association shall be known, called and addressed as Izzi Unique Stars Association (IUSA),Izzi,Ebonyi State, Nigeria, herein referred to as the Association. \r\n\r\nSECTION B:\r\nMOTTO OF THE ASSOCIATION\r\nThe motto of the Association shall be: Hardworking leads to success.\r\n\r\nSECTION C:\r\nSLOGAN\r\nThe slogan of the Association shall be: IUSA… “Izzi Unique Stars Association.”\r\n\r\nSECTION D:\r\nLOGO OF THE ASSOCIATION\r\nThe logo of the Association shall be concentric circles with a hand-shake and a star at the top. Then, at the base of the circle, there shall be the motto of the Association: Hardworking leads to success. The Association’s name shall be boldly written in the concentric circles.\r\n\r\nARTICLE 2\r\n\r\nSECTION A:\r\nAIMS AND OBJECTIVES\r\nThe aims and objectives of the association shall include the following:\r\n1.	To foster unity, love and patriotism among our members in Anambra State and Nigeria at large.\r\n2.	To promote mutual and the welfare of the individual members of the association.\r\n3.	To promote peace, good idea, unity and mutual understanding among Izzi people and the society at large.\r\n4.	To work tirelessly in upholding and promoting the lawful interest of our members.\r\n5.	To encourage closer relationship among the Izzi people living in Anambra State, other States and the world at large.\r\n6.	To promote the good image of Izzi and Ebonyi State at large.\r\n7.	To contribute to the development of humanity in general.\r\n\r\nARTICLE 3\r\n\r\nSECTION A:\r\nORGANS OF THE ASSOCIATION\r\nThe organs of the association shall be as follows:\r\n1.	The general members of the association\r\n2.	The IUSA Executive Council\r\n3.	The Constitution Review Committee \r\n4.	The IUSA Patron/or Legal Adviser.\r\n\r\nSECTION B\r\nTHE POWER AND FUNCTIONS OF IUSA EXECUTIVE COUNCIL\r\n1.	The Executive Council shall represent the general view of the members, safeguard and take against or charge of the general administration of the association.\r\n2.	They shall be accountable to the entire members of the association.\r\n3.	They shall present a financial report of the association’s account through the financial secretary at the end of each round of meeting or each year.\r\n4.	The executive council should be responsible for the implementation and maintenance of the constitution and the other laws made by the association.\r\n5.	They shall have right to conferment of merit awards to deserving members, patron and patroness who merit such an award.\r\n6.	The executive council must be financially up to date.\r\n7.	They must conduct new election at the end of every four (4) years.\r\n\r\nSECTION C\r\nPOWER AND FUNCTIONS OF THE CONSTITUTION REVIEW COMMITTEE \r\n1.	They shall act like legislator who makes and interpret the law of the association.\r\n2.	They shall have powers to amend any of the provisions in the standing orders of the two-third (2/3) majority of the association members. \r\n3.	This constitution must last four (4) years before it will be brought into bill for amendment. \r\n\r\nSECTION D \r\nPOWER AND FUNCTIONS OF THE PATRON OR LEGAL ADVISER (WHO ARE NON-OFFICIAL MEMBERS)  \r\n1.	He/she shall be the special adviser and supporter of the association.\r\n2.	He/she shall perform any other functions assigned to him/her by the association.\r\n3.	The legal adviser of the club shall be a legal practitioner with advance personality in legal profession. \r\n\r\nARTICLE 4\r\n\r\nSECTION A:\r\nMEMBERSHIP \r\n1.	A membership is open to all Izzi young youth indigenes without any questionable character.\r\n2.	The person shall obtain a form with a non-refundable fee of five hundred naira (N500.00) only, which will be well filled and submitted to the association for screening.   \r\n3.	The accepted new members shall pay the sum of five thousand naira (N5,000) only, with one crate of malt and one cabin biscuit.\r\n4.	Any person coming to be registered as a new member shall be recommended by the majority of the house and must have one referee from the Association.\r\n5.	The probation period for a newly registered member is one year after which he shall be entitled to special right of the association. He is entitled to ordinary right so far he does not owe the Association.\r\n\r\nARTICLE 5\r\n\r\nSECTION A:\r\nCOMPOSITION OF IUSA EXECUTIVE COUNCIL\r\nThe IUSA Executive council shall comprise the following officers:\r\n1.	The President\r\n2.	The Vice-President\r\n3.	The Secretary-General\r\n4.	The Assistant Secretary\r\n5.	The Financial Secretary\r\n6.	The Treasurer\r\n7.	The Provost I &I I\r\n8.	The P.R.O I&II\r\n\r\n\r\nSECTION B\r\nFUNCTIONS OF THE OFFICERS:\r\nTHE PRESIDENT\r\n1.	The president shall preside over both the Executive and general meeting of the association.\r\n2.	He shall sign all the minutes of the meeting duly accepted and all document duly approved by the general association/ house.\r\n3.	He shall direct the secretary to summon general meeting or executive meeting.\r\n4.	The president shall act on behalf of the association in case of emergency provided that such an action is not contrary to the constitution.\r\n5.	He shall be a signatory to the bank accounts of the association.\r\n6.	The president has a veto power on the sensitive issues.\r\n7.	He shall perform any other functions duly assigned to him by the association.\r\n\r\nTHE VICE-PRESIDENT\r\n1.	The vice-president shall assist the president as he may be directed by the president.\r\n2.	The vice-president shall act on behalf of the president in his absence (and undertake all sub-duties as may be assigned by the president).\r\n3.	In case of resignation, impeachment, incapacitation or death, the presidency moves to the vice-president until bye-election is conducted.\r\n\r\nTHE SECRETARY\r\n1.	He shall keep the attendance book, minutes and records of the executive and general meetings of the association.\r\n2.	He shall summon executive or general meetings of the association on the instruction of the president.\r\n3.	He shall prepare the agenda for the meetings in collaboration with the president.\r\n4.	The secretary shall carry out any other functions duly assigned to him by the association.\r\n5.	He shall be responsible for writing all letters concerning the association.\r\n\r\nTHE ASSISTANT SECRETARY\r\n1.	He shall assist the secretary in all his duties and act for him in his absence.\r\n2.	He shall perform any other duty duly assigned to him by the general association/house.\r\n\r\nTHE FINANCIAL SECRETARY \r\n1.	Financial secretary shall collect dues, levies, donations, fines and all monies coming into the association and handover to the treasurer within 48 hours of receipt.\r\n2.	Financial secretary shall keep record of all payments made to the association.\r\n3.	He shall prepare and present an annual financial report of the association to the general house.\r\n4.	Be a signatory to the association’s bank account with treasurer and president.\r\n\r\nTHE TREASURER\r\n1.	The treasurer shall keep monies handed over to him by the financial secretary.\r\n2.	He shall pay such monies into the association’s bank account within 48 working hours (2 days).\r\n3.	He shall be one of the signatories to the association’s bank account.\r\n4.	He shall be held responsible for all monies received under the name of the association not properly accounted for.\r\n5.	He shall keep an impress account of not more than ten thousand naira (N 10,000.00) only.\r\n\r\nTHE PROVOST\r\n1.	He shall be the security officer of the association.\r\n2.	The provost shall maintain law and order during meetings and every social function of the association.\r\n3.	He shall be responsible for the arrangement of venues and seats at the place of the association’s meetings/gathering.\r\n4.	He shall undertake other functions as may be assigned to him from time to time by the association.\r\n\r\nTHE PUBLIC RELATIONS OFFICER (P.R.O)\r\n1.	He shall be responsible for the association’s publication.\r\n2.	Be in-charge of bringing to the notice of the members and public all the activities of the association.\r\n3.	He shall perform any other duties assigned to him by the association.\r\n4.	He shall be responsible for crosschecking of items that is given to the association at both special and ordinary invitation and ensure that they are complete.\r\n\r\nARTICLE 6\r\nSOCIAL WELFARE\r\nSECTION A:\r\nTENURE OF OFFICE \r\n1.	Tenure of office of the executive shall be four (4) years and at the end of the four years, a general election shall be conducted by the association.\r\n2.	An officer may be re-elected for another tenure if he ruled well (this can serve for only two terms).\r\n\r\nSECTION B\r\nMETHOD OF ELECTION\r\n1.	The election into the executive council is every four years and voting shall be by open secret ballot system.\r\n2.	A member is qualified to vote and to be voted for if he is financially up to date and must have stayed for at least one year in the association.\r\n3.	The person must be present on the day of election.\r\n4.	Any vacant office due to death, resignation, impeachment or bad behaviour shall be filled up immediately through bye election. \r\n5.	A resignation letter will be accepted if the officer gives cogent reasons why he should not continue and he shall surrender all association’s properties in his possession.\r\nNB: The association has the power to impeach any of the executive officer who has questionable character if 2/3 of the majorities support the proposal.\r\n\r\nARTICLE 7\r\n\r\nSECTION A:\r\nSOURCE(S) OF INCOME OF THE ASSOCIATION\r\nThe source(s) of income of the association include the following:\r\n1.	Registration\r\n2.	Monthly dues\r\n3.	Fines\r\n4.	Levy and donations\r\n5.	Launchings\r\n6.	Rental/renting\r\n7.	Sells of constitution\r\n\r\nSECTION B\r\nREGISTRATION OF A NEW MEMBER\r\n1.	A new member shall register with the sum of five thousand naira (#5000.00) only, one crate of malt and one cabin biscuit after undergoing a proper screening.\r\n2.	He shall as well pay part of any amount the Association has as savings at the end of the year divided by the number of the Association’s members. Example: If at the end of the year the association has N100, 000, it will be N100, 000 divided by the number of Association’s members, then the new members will pay his own part.\r\n3.	The new members shall pay for Banner and constitution.\r\n\r\nARTICLE 8\r\nSECTION A\r\nBENEFITS OF MEMBERS\r\nMembers of the Association shall be entitled to the following benefits;\r\n1.	Special invitation Right\r\n2.	Ordinary invitation Right\r\n\r\nSECTION B\r\nSPECIAL INVITATION RIGHT\r\n1.	To be qualified for special invitation right of the Association, the member must have stayed for at least one year in the union and must be financially up to date.\r\n2.	One big bottle of hot/wine will be presented to the general meeting with an invitation card for inviting us and a gap of two months shall be given to the union to prepare for the occasion and it may last at least for 2 days.\r\n3.	The Association can only honor special invitation two-times in a year, putting first invited, first attended in consideration.\r\n4.	Every member should honor the special invitation with the good sum of fifteen thousand naira (15,000) only and any member that fails to pay his own money at the due time will pay it double, without excuse. Out of the fifteen thousand (N15.000),two thousand naira(N2.000)only will be for spraying during dancing time and at the end, the whole money will be gathered together and should be given to the host.\r\n5.	A member is qualified to receive his special right of fifteen thousand  (15.000) using his\r\na)	Traditional marriage or wedding\r\nb)	Child dedication (if the person has married and wedded)\r\nc)	Any other ceremony that a member wishes to use as his special invitation (if he has been wedded).\r\n\r\nSECTION C \r\nITEMS TO BE GIVEN TO THE ASSOCIATION FOR SPECIAL INVITATION\r\n1.	Three (3) crates of small stout\r\n2.	One (1) carton of beer\r\n3.	One (I) crate of malt\r\n4.	One big bottle of hot\r\n5.	Two (2) gallon of palm wine\r\n6.	One (1) big sizeable goat \r\n7.	One big cooler of rice with enough meat\r\n8.	Kolanuts\r\n9.	6 bags of pure water\r\n10.	Canopy, chairs and table\r\n\r\nSECTION D\r\nORDINARY INVITATION\r\n1.	To be qualified for ordinary invitation right the member must have stayed up to six months in the Association and must be financially up- to- date.\r\n2.	Every member should honor ordinary invitation with the good sum of one thousand, five hundred naira only(N1, 500).\r\n3.	A member is qualified to receive his ordinary right using his child dedication, etc and at least gap of one or two week(s) will be given to the Association for preparation.\r\n\r\nSECTION E\r\nITEMS TO BE GIVEN TO THE ASSOCIATION FOR AN ORDINARY INVITATION.\r\n1.	One (1) crate of small stout\r\n2.	Half  crate of malt\r\n3.	One big cooler of food with one full chicken\r\n4.	2 bags of pure water and kolanut\r\n5.	Canopy, chairs and tables.\r\nNB: For special invitation, the host has the right to ask for at least half of the total right amount in order to facilitate his project and at the end of the occasion, the remaining balance will be given to him.\r\n\r\nARTICLE 9\r\n\r\nSECTION A\r\nDEATH AND CONDOLENCE\r\nThe death and condolence to be attended by the U S A: are\r\n1.	Death of a member\r\n2.	Death of a member’s wife\r\n3.	Death of a member’s child\r\n4.	Death of a member’s biological father\r\n5.	Death of a member’s biological mother\r\n6.	Death of a member’s father-in-law\r\n7.	Death of a member’s mother-in-law\r\n\r\n\r\n\r\nARTICLE 10\r\nSECTION A\r\nDEATH OF A MEMBER\r\nWe hereby agree that if any of our members died, we shall take the whole responsibility about his burial by providing;\r\ni.	Casket\r\nii.	Means of going to his place\r\niii.	Means of taking his corps to his destination\r\niv.	After the whole expenses for the burial a cash of thirty thousand naira (#30.000.00) only shall be given to his wife or parents or next of kin, with one crate of malt.\r\nNB: This money will be levied among members before or after the burial and he who fails to pay his own at the stipulated time will pay it double and any absenteeism in the burial will pay a fine. \r\n\r\nSECTION B\r\nDEATH OF A MEMBER’S WIFE\r\nThe Association shall attend the burial ceremony of a member’s wife with the following:\r\ni.	forty thousand naira (N40.000)only\r\nii.	one wrapper\r\niii.	One carton of beer or one crate of malt.\r\niv.	Each member shall pay the sum of N3000) and the Association shall provide the means of going to the place.\r\n\r\nSECTION C\r\nDEATH OF A MEMBER’S CHILD (i.e. biological child)\r\nIn case of any of our member lost his child, it is the duty of the Association to take the child’s corpse home but if the family is already at home in Ebonyi State and the child’s corpse  is already with them, then the Association has no role to place.\r\nThe Association shall condole the member with the sum of ten thousand naira (N10,000) only and the money must come from the Association purse.\r\n\r\nSECTION D\r\nDEATH OF BIOLOGICAL FATHER OR MOTHER\r\nIn the case of the death of a member’s father or a mother, each member shall pay the sum of three thousand naira (N3, 000) only apart from the transportation fee. While the host shall present the following items to the Association:\r\n1.	One crate of small stout\r\n2.	One carton of beer\r\n3.	One bottle of hot drink \r\n4.	Half crate of malt\r\n5.	A cooler of rice with enough meat and pure water\r\n6.	Canopy and chairs\r\nThen, the hosts have two days to choose. In a situation where two (2) members of the Association belong to one parent, the involved members shall discuss and bring out one person to be attended to while the other person shall receive his own right on the day we are hosting Association meeting.\r\n\r\nSECTION E\r\nDEATH OF A FATHER OR MOTHER IN-LAW\r\nIn the case of the death of a father or a mother in-law, each member shall pay the sum of three thousand naira (N3, 000) only apart from the transportation fee. While the host shall present the following items to the Association:\r\n1.	One crate of small stout\r\n2.	One carton of beer\r\n3.	One bottle of hot drink \r\n4.	A cooler of rice with enough meat and pure water\r\n5.	Half crate of malt\r\n6.	Canopy and chairs\r\nThen, the hosts have two days to choose. In a situation where two (2) members of the Association belong to one in-law, the involved members shall discuss and bring out one person to be attended to while the other person shall receive his   own right on the day we are hosting Association meeting.\r\n\r\nARTICLE 11\r\n\r\nSECTION A: \r\nDISCIPLINARY MEASURE (OFFENCES)\r\nThe Association shall be seen as a body made up of honest, disciplined and devoted gentlemen; and therefore, the association shall discipline members in the following offences.\r\n1.	Minor offence\r\n2.	Major offence\r\n\r\nARTICLE 12\r\nSECTION A\r\nMINOR OFFENCES AND ITS FINE\r\n1.	FIGHTING: \r\nAny member who fight with another member in the meeting, ceremony or outside the meeting is liable to pay a fine of two thousand naira (N2,000) only before the Association hears the cause of fighting. After, the person found innocent shall be refunded one thousand naira (N1,000) only while the guilty person shall forfeit his money.\r\n2.	NOISE MAKING, PHONE RINGING OR QUARRELING: \r\nAny of these during the meeting attract a fine of fifty naira (N50) only.\r\n3.	LATENESS:\r\nLateness to the general meeting without cogent reasons attracts a fine of one hundred naira (N 100) only.\r\n4.	ABSENTEEISM:  \r\nAbsenteeism in the general meeting without reasonable excuse attracts a fine of two hundred naira (N 200) only.\r\n5.	EMBEZZLEMENT OF FUND OR STEALING: \r\nAny of our members who is found guilty of embezzlement of association’s fund or stealing must return whatever he embezzled or stole and shall pay a fine of one thousand naira (N 1,000), with half crate of small stout and if it repeats itself, the person will face expulsion from the association.\r\n6.	SMOKING/SNUFFING: \r\nAny person who engages in any of these in our midst or during meeting hours shall pay a fine of one hundred naira (N 100) only.\r\n7.	DRUNKENNESS:\r\nVomiting in the meeting or ceremonies as a result of being drunk shall attract a fine of one thousand naira (N1, 000) with one crate of small stout.\r\n8.	BAD CONDUCTS FROM MEMBERS:\r\nAny bad conduct by any member shall be reported to the association. The association shall conduct investigation into the matter and met out appropriate penalty to the culprit if found guilty.\r\n9.	POLICE INVITATION:\r\nNo member is allowed to invite police to another member without first reporting the case to the executive of the association or general house. If any member attempts it, the person will pay a fine as it may be decided by this association.\r\n\r\nSECTION B\r\nMAJOR OFFENCES \r\nTHESE INCLUDE:\r\n1.	Armed robbery\r\n2.	Poisoning\r\n3.	Keeping a company with bad gang or association\r\n4.	Raping\r\n5.	Kidnapping \r\nIf any member is involved in any of the above offences, the person shall be expelled from the association without any benefit and henceforth, ceases to be a member.\r\n\r\nARTICLE 13\r\nSECTION A\r\nHOSPITALITY\r\nWhen a member or his wife is seriously sick with concrete evidences or falls into a problem that is beyond them, the association shall have a meeting or an emergency meeting in order to discuss the problem(s) and resolve on the possible way(s)of helping the person, depending on the weight of the problem. The association shall give all necessary support needed by the person after which the person pays back all the monies to the association by installment. \r\n\r\nARTICLE 14\r\nSECTION A\r\nBANK ACCOUNT \r\n1.	The association shall operate a bank account with any of the commercial banks.\r\n2.	All monies of the association shall be deposited in the bank by our treasurer within 48 hours or two days upon collection of the monies.\r\n3.	The president, financial secretary and treasurer shall be signatories to the association’s bank account.\r\n\r\nARTICLE 15\r\nSECTION A\r\nRESIGNATION:\r\nIn case if any member of the association decided to resign or withdraw his membership, he shall:\r\nI.	Notify the association in writing in not less than one (1) month interval.\r\nII.	Pay all dues, levies or any money he owned the association completely.\r\nIII.	If the person has received his special rights, he must balance all those that have contributed special rights to him.\r\nIV.	If he has not received his special right, he will forfeit it, without anybody or person balancing him.\r\nV.	He shall surrender all the association’s property in his possession to the association.\r\n\r\n\r\nARTICLE 16\r\nSECTION A\r\nEND OF THE PARTY\r\nThere will be an end of the year party in every December of the year and it will be arranged and organized by the general house. On the day of the meeting, we shall have a thanksgiving Mass or Service and a resource person or a minister of the gospel will educate or enlighten us at venue of the party. \r\n\r\nARTICLE 17\r\nSECTION A\r\nAMENDMENT\r\nThe constitution shall be flexible and any sections of it are subjected to amendment by two-third (2/3) majority vote of members in the general meeting.  \r\n\r\nARTICLE 18\r\nSECTION A\r\nSOURCE MATERIALS\r\n1.	The constitution of the Federal Republic of Nigeria (1999).\r\n2.	The Constitution of the Alumni Association of Federal College of Education (Technical), Umunze.\r\n3.	The Constitution of Education Students’ Association (ESA), Federal College of Education (Technical), Umunze.\r\n4.	The Constitution of Morning Star Club Izzi Nnodo Ebonyi State, Umunze Branch Orumba South L.G.A \r\n5.	The constitution of Diamond Brothers’ Association (D.B.A), Abakaliki Ebonyi State.\r\nARTICLE 19\r\nSECTION A\r\nMEMBERS OF THE CONSTITUTION REVIEW COMMITTEE OF IZZI UNIQUE STARS ASSOCIATION (IUSA)\r\n1.	Ogeh, Livinus Nkwuda 	Chairman	_____________\r\n2.	Nwegede, Pius Peter 	Secretary	_____________\r\n3.	Nwebonyi,  Peter	Member	_____________\r\n4.	Nwuguru, Sunday	Member	_____________\r\n5.	Nwobeji, Ezekiel 	Member	_____________\r\n\r\nARTICLE 20\r\nSECTION A\r\nOATH OF ALLEGIANCE\r\n\r\nI, _____________________________________________do solemnly swear that I will be faithful and bear true allegiance to  Izzi Unique Stars Association (IUSA) and that I shall preserve, protect, and defend the constitution of the association and the law of the land, SO HELP ME GOD.\r\n\r\n\r\nSECTION B\r\nOATH OF OFFICE\r\n\r\nI, ____________________________________________do solemnly swear that I will be faithful and bear true allegiance to Izzi Unique Stars Association (IUSA) and that I will discharge my duties to the best of my ability, faithfully and in accordance with the constitution of the IUSA, Ebonyi State. I will not allow my personal interest to influence any official conduct or any official decision(s). I will do right to all manner of people according to constitution without fear or favour. I shall always devote myself to the service of the association. SO HELP ME GOD.\r\n\r\n\r\nSECTION C\r\n\r\nADOPTION\r\nThis constitution of the Izzi Unique Stars Association (IUSA), Ebonyi State, Umunze Branch, Orumba South L.G.A, Anambra State, has been adopted this day, the 20th day of July, 2020.\r\n\r\n\r\n\r\n---------------------			----------------------President (IUSA)			Secretary (IUSA)', '2020-09-24 22:25:51.669628', 1, 1, '', '2'),
(2, 'Python Programming is getting Tougher', 'python-programming-getting-tougher', '2020-09-24 22:54:54.582056', 'His Excellency Chief Dr. Willie Obiano,\r\nThe Executive Governor of Anambra State,\r\nThe Office of the Governor,\r\nGovernment House,\r\nAwka.\r\n\r\nThrough;\r\n\r\nThe Executive Office of Secretary,\r\nAnambra State Government,\r\nAwka.\r\n\r\nThrough;\r\n\r\nThe Executive Office of the Speaker,\r\nAnambra State House,\r\nAwka.\r\n\r\nThrough;\r\n\r\nThe Executive Head of Service,\r\nAnambra State Government,\r\nGovernment House,\r\nAwka.\r\n\r\nThrough;\r\n\r\nThe Executive Chairman,\r\nAwka South Local Government Area,\r\nAwka.\r\n\r\n  Your Excellency:\r\n\r\nA LETTER OF REQUEST FOR A SIT POSITION OF PRESIDENT GENERAL (PG) OF EBONYI INDIGINE RESIDING IN ANAMBRA STATE\r\n\r\nWe, the entire Ebonyi people residing in Anambra state has embedded ourselves in one accord and hereby request that the Anambra State Government both State and local arms to approve , honour a SIT POSITION of president General (PG) of Ebonyi people whom resides in Anmbra State. This position will serve as an ambassador of Ebonyi people in the eyes of Anambra people\r\n\r\n\r\nand its government. The image and person or name of the prospect P.G will be made known to the Government and the people in due time.\r\nThis SIT POSITION of P.G of Ebonyi people residing in Anambra State will further intensify the individual co- existence, thicken inter-state government relationship, create an undiluted understanding between Ebonyi people and Anambra people and its government in all works of life. This SIT POSITION will propagate the good deeds of Anambra people to the Ebonyi people and enhance good conducts and mobilization in time of Anambra State general election.\r\n\r\nWe humbly urge the present administration to consider and grant us our request and to further solidify this foundation, so the incoming administration will also stand on this same bedrock\r\n\r\nLong live Government of Anambra state\r\nLong live Government of Ebonyi state\r\nLong live Anambra people\r\nLong live Ebonyi  people\r\n\r\n\r\n\r\n\r\n\r\nChairman Ebonyi Council of Elders                                                            Secretary\r\n    HON. CHIEF PETER UZO 				       MR.NWAKPA DAVID\r\n                                                                                                                   07033518329							\r\n                          \r\n\r\n\r\nHRH. IGWE AMOS O. NKWUDA\r\nTraditional ruler of the non – indigeneous\r\nassociation in Anambra State.\r\n08068570419', '2020-09-24 22:54:54.582056', 1, 1, '', '2'),
(3, 'Apprenticeship agreement style', 'apprenticeship-agreement-style', '2020-10-04 23:26:37.273577', 'SECTION B\r\nTERMS AND CONDITIONS\r\n•	All payments made for the training purpose are non-refundable.\r\n•	Training holds from Monday’s – Thursdays by 10am-3pm.\r\n•	Student(s) may be called upon on Saturdays for accompany to other jobs especially bridal jobs.\r\n•	No late coming to class will be entertained.\r\n•	Students are to take their work (training) very serious.\r\n•	In a case where a student misses a class/classes without at least 24 hour prior notice to the trainer/teacher, there would not be any rescheduling.\r\n•	Students are to resume classes with a complete brush set and beauty sponge, all other products are available to use for training during training days & hours for the first two weeks.\r\n•	Students are not allowed to go home/take the products provided by the studio outside the studio premises.\r\n•	After the first two weeks grace, students are to come with their individual recommended products for training, as the studio will no longer provide products.\r\n•	Students should make provision for their muse(model), as this will enable them learn faster, the studio does not provide muse for training.\r\n•	Training area must be kept clean after each class/practice – Swept and mopped.\r\n•	Where there is a walkin client, students can watch as a live demo session or an assistant takes over the class.\r\n•	Students should always come with writing materials.\r\n•	Where the trainer is not available, an assistant will handle the class.\r\n•	Students must accord full respect to trainer and assistant.\r\n•	Students should have no communication whatsoever with clients.\r\n•	Too much excuses will not be allowed.\r\n•	Students must always dress neatly and modestly to work.\r\n•	Students should not take pictures of clients – on no condition.\r\n•	Students should not liter the studio with wastes.\r\n•	Students are not permitted to entertain visitors except on very important cases, and it must be brief.\r\n•	Students should not take products/items that do not belong to them for no reason and without permission.\r\n•	Students should not be idle for nothing.\r\n•	Students are required to provide necessary materials for final examination, which include Outfit, Earings, Hair Styling, Gele, etc.', '2020-10-04 23:26:37.273577', 1, 1, '', '2'),
(4, 'Professional Curriculum Vitae Sample', 'professional-curriculum-vitae-sample', '2020-10-04 23:27:36.576689', 'Henry ChukwuNonso Nwokoye\r\n\r\n+234 70 338 58 720 / chinonsonwokoye@gmail.com\r\n10B Enukora-Ilora Street, Awka, Nigeria.\r\nhttps://scholar.google.com/citations?user=FJGeeEAAAAAJ&hl=en\r\nhttps://www.researchgate.net/profile/Chukwunonso_Nwokoye \r\n\r\n\r\n\r\n\r\nSummary of Qualifications\r\n▪	Over 8 years’ experience in correctional database management and administration\r\n▪	Ability to use the following; Oracle 10g, Microsoft Office Suite, MATLAB, Mathematica 10/12, NetLogo Agent Language, Visual Studio, Structured Query Language, Python (Intermediate)\r\n▪	Ability to represent real life phenomena using system of differential equations \r\n▪	Ability to conduct user studies/data collection using prototypes (paper, computer) and qualitative research methods such as observation, interviews and focus groups\r\n▪	Effective written and verbal communication skills (IELTS – Overall Band 8)\r\n▪	Demonstrated ability in offender educational management and tutelage\r\n▪	Resourceful, fast learner, displays a strong ability to work in teams and also independently\r\n▪	Passionate in exploring new research areas and making them public through journals and conferences \r\n▪	Has a purpose-driven approach to work, displaying strong interpersonal relationship skills\r\n\r\n\r\n\r\n\r\nEducation:\r\nDoctor of Philosophy in Computer Science (Artificial Intelligence), PhD\r\n\r\nNnamdi Azikiwe University, Nigeria                                                                                   2018	\r\n\r\nMaster of Science in Information Technology, MSc\r\nNational Open University of Nigeria                                                                                   2012 \r\nPostgraduate Diploma in Education, PGDE\r\nUsman Dan Fodio University, Nigeria                                                                                 2012\r\nBachelor of Science in Computer Science, BSc\r\nNnamdi Azikiwe University, Nigeria                                                                                    2008\r\n\r\nOther Certificates Acquired:\r\nConvolutional Neural Networks in TensorFlow \r\nCousera                                                                                                                               2019\r\nIntroduction to TensorFlow for AI, Machine Learning, and Deep Learning\r\nCousera                                                                                                                               2019\r\nDeep Learning with TensorFlow\r\nUdacity                                                                                                                                2019\r\nCertificate of Proficiency\r\nNigerian Institute of Management                                                                                       2010\r\nOracle 10g Administrator Certified Professional (OCP)\r\nOracle Corporation, USA                                                                                                    2008                                        \r\nOracle 10g Administrator Certified Associate (OCA)\r\nOracle Corporation, USA                                                                                                    2007\r\n\r\nAwards:\r\n	Honorary Rosalind Member \r\nLondon Journal Press                                                                                                    2020\r\n	Machine Learning for Developing World Travel Award to the Neural \r\nInformation Processing Systems Conference Vancouver, Canada. ($3525)                    2019\r\n	HLFF Travel Grant to the 7th Heidelberg Laureate Forum, Heidelberg, \r\nGermany, September 22 – 28th, 2019. (1300 Euros)                                                      2019\r\n	ACM SIGCHI Gary Marsden Travel Award for Proceedings of the Second \r\nAfrican Conference on Human Computer Interaction ($2000)                                      2018\r\n	Black in Artificial Intelligence Travel Award for Neural Information \r\nProcessing Systems Conference Montreal, Canada. ($2585)                                           2018\r\n	ACM SIGCHI Student Travel Award for 21st ACM Conference on \r\nComputer Supported Cooperative Work, USA. ($1800)                                                 2018\r\n	Runner up for Best Poster Award at the International Conference on \r\nComputing Research & Innovation,  Ibadan, Nigeria                                                     2016\r\n	ACM SIGCHI Gary Marsden Travel Award for Proceedings of the First \r\nAfrican Conference on Human Computer Interaction ($2000)                                       2016	\r\n\r\nPublications: \r\n	Nwokoye, C. H., Umeh I. (2020). Exploring the Ethical Dilemmas of Afro-Centric Social Media Use through Agent-Based Modeling: A Review. GJS. Under Review.\r\n	Nwokoye, C. H., Umeh, I., Ositanwosu O. (2020). Characterization of heterogeneous malware contagions in wireless sensor networks: A case of uniform random distribution. ICT Analysis and Applications: Springer Proceedings of ICT4SD 2020, Vol. 2. Accepted.  \r\n	Nwokoye, C. H., Mbeledogu, N. and Umeh, I. (2020) Scan-based Worms: Impact of IPV4 Address Space on Modified Epidemic Computer Networks Models. IAENG IJCS. Accepted. \r\n\r\n\r\n	Nwokoye, C. H., Ositanwosu, O, Umeh, I. (2020). Development of an Advanced Knowledge Domain for Coordinated Flood Inundation Management in Developing Nations, ECSJ, Vol. 44, No. 3. ERA 2018 (ID. 32028). http://ecsjournal.org/Archive/Volume44/Issue3/5.pdf \r\n	Nwokoye, C. H., Ositanwosu, O, Umeh, I. (2020). User Studies: Building the Custodial Centre Information System for Nigerian Correctional Service, ECSJ, Vol. 44, No. 3. http://ecsjournal.org/Archive/Volume44/Issue3/7.pdf \r\n	Nwokoye, C. H., Obiakor K., Umeh, I. (2020). The Effect of Internet Protocol Addressing Requirement for Scan-Based Worms in Multigroup Computer Network Models. International Journal of Computer Science and Security (IJCSS). Accepted.\r\n	Nwokoye, C. H., Umeugoji, C., Umeh, I. (2020) Evaluating degrees of differential infections on sensor networks’ features using the SEjIjR-V epidemic model. ECSJ, Vol. 44, No. 3. http://ecsjournal.org/Archive/Volume44/Issue3/6.pdf \r\n	Nwokoye, C. H., Etodike, C. (2019). Africa\'s readiness for the implementation of AI-based driver-less cars: challenges and risks. Machine Learning for Developing World workshop, Neural Information Processing Systems Conference Vancouver, Canada, 2019.\r\nChukwuNonso  Nwokoye,  Ikechukwu  Umeh,  Njideka  Mbeledogu,\"  GeoNaija: \r\nEnhancing the Teaching and Learning of Geography through Mobile  Applications \", International Journal of \r\nEducation  and  Management  Engineering(IJEME),  Vol.9,  No.6,  pp.11-24,  2019.DOI: \r\n10.5815/ijeme.2019.06.02\r\n	Nwokoye, C. H, Umeh, I., Mbeledogu, N. N. (2019). GeoNaija: Enhancing the Teaching and Learning of Geography through Mobile Applications \", IJEME, Vol.9, No.6, pp.11-24, 2019. DOI: 10.5815/ijeme.2019.06.02\r\n	Nwokoye, C. H., Mbeledogu, N. N., Etodike C. (2018). Community-led Video Creation: Towards complementing reformative programmes for prison inmates. AfriCHI 2018. https://doi.org/10.1145/3283458.3283474\r\n	Nwokoye, C. H., Ihemelu, I. (2018). Improving Communication, Prisoner Welfare and Support through Mobile Collaborative Technologies. CSCW Conference, US. https://doi.org/10.1145/3272973.3274044 \r\n	Nwokoye, C. H., Onyesolu M. (2018). Modeling multigroup malicious code infections in sensor networks. IJCA, vol, 3, no. 11, pp 129-142. http//dx.doi.org/10.14257/ijca.2018.11.3.12 \r\n	Nwokoye, C. H, Umeh, I. (2018). Analytic-Agent cyber dynamical systems analysis and design methodology for modeling temporal/spatial factors of malware propagation in wireless sensor networks. Elsevier Methodx, 5. https://doi.org/10.1016/j.mex.2018.10.005\r\n	Nwokoye, C. H, Umeh I. (2017). Culture context profiles: A case of institutional websites in Nigeria. GJCS, 17, 2, 21-29.\r\n	Nwokoye, C. H, Umeh I. (2017). The SEIQR–V model: On a more accurate analytical characterization of malicious threat defense. IJITCS, 12, 28-37. DOI: 10.5815/ijitcs.2017.12.04\r\n	Nwokoye, C. H., Ejiofor, V. E., Onyesolu, M and Ekechukwu, B. (2017). Towards modeling malicious agents in decentralized wireless sensor networks: A case of vertical worm transmissions and containment. IJCNIS, 9, 12-21. DOI: 10.5815/ijcnis.2017.09.02.\r\n	Nwokoye, C. H., Mbeledogu, N. N., Umeh I. & Ejimofor. I. A. Modeling the effect of network access control and sensor random distribution on worm propagation. IJMECS, 11, 49-57, 2017. \r\n	Nwokoye, C. H., Mbeledogu, N. N., Ejimofor I. A. The impact of sensor area types on worm propagation using SEIR and SEIR-V models: A preliminary investigation. IJWMT, 2017, 6, 33-45, 2017. DOI: 10.5815/ijwmt.2017.06.04.\r\n	Nwokoye, C. H., Ejiofor, V. E., Ozoegwu, C. G. Pre-Quarantine approach for defense against propagation of malicious objects in networks. IJCNIS, 9, 2, 43-52, 2017. \r\n	Nwokoye, C. H. Ejiofor, V. E., Orji, R, Mbeledogu, N. N. and Umeh, I. Investigating the effect of uniform random distribution of nodes in wireless sensor networks using an epidemic worm model. Computing Research and Innovation, 2016. http://ceur-ws.org/Vol-1755/\r\n	Nwokoye, C. H., Ejiofor, V. E., Mberedogu, N. N. The topicality of agent based modeling/multi agent systems in HCI research: An African perspective. Proceedings of AfriCHI’16, 2016. DOI: 10.1145/2998581.2998593\r\n	Nwokoye, C. H., Umeh, I., Nwanze, M., Alao, B. F. Analyzing time delay and sensor distribution in wireless sensor networks. IEEE Afr J Comp & ICTs, Vol 8, 2015 \r\n	Nwokoye, C. H., Ejiofor, V. E. and Ozoegwu, C. G. Local asymptotic stability of a modified mathematical defense model for complex computer networks. The Journal of Computer Science and its Applications, 21, 2, 11-19, 2014. www.ncs.org.ng.\r\n	Ekechukwu B., Nwokoye, C.H. and Osuji, A. Automated inventory control and management for auto spare parts in developing Nations. IJERT, Vol. 2, 3, 2013. www.ijert.com.\r\n	Unekwe, C., Ekechukwu B. and Nwokoye, C. H. Model development for auto spare parts inventory control and management. West African Journal of Industrial & Academic Research, Vol. 5 No. 1, 2012. www.wajiaredu.co. \r\nBook: \r\n\r\n	Nwokoye, C. H., Chronicles: O’ Beautiful City. Collection of Poems. ISBN: 978-978-8454-85-5. Fab Nigeria Ltd Awka, Nigeria, 2013.\r\n\r\nPapers Under Review:\r\n\r\n\r\n	Nwokoye, C. H., Mbeledogu, N. and Umeugoji, C. Evaluating the Cultural Anthropology of Artefacts of Computer Mediated Communication: A Case of Law Enforcement Agencies. JIST. Sent February 3, 2020. Under Review', '2020-10-04 23:27:36.576689', 1, 1, '', '2'),
(5, 'Brutality of Nigerian Police (SARS) against Nigerian Youths', 'brutality-nigerian-police-sars-against-nigerian-youths', '2020-10-16 15:50:04.081572', 'INTRODUCTION\r\n\r\nIn the present unit we shall look at the role the community plays in human language. The interconnection of language and community is expressed in the fact that language is the product of the community, at the same time it is language that makes community life possible. In what follows, you will discover the mutual relationship that exists between language and the community. Besides this, you will be made to understand the use of language in a multicultural society like ours.  \r\n\r\nOBJECTIVES\r\ni.	Explain relationship between language and community.\r\nii.	Describe the impossibility of private language.\r\niii.	Explain how to use language in a multicultural society.\r\niv.	Articulate the importance of multilingualism. \r\n\r\nMAIN CONTENT\r\nThe Community and the Making of Language \r\nLanguage is a community property. This means that it is the common agreement of community that gives meaning to our sounds, signs and marks. Community as being used here connotes users. Thus, anybody who can speak a language, who can converse meaningfully and coherently in any language is part of the ownership of that language. It is this community of language users that assign every word of a language the meaning it bears. Commenting on the above point, Ewelu (2008) writes that:\r\nLanguage, as we know, is symbolic and, as such, it is made up of conventional signs whose significations are determined by the common agreement of the users. One comes to understand and use these signs correctly by the training given to one by the community. This same community agreement, the community way of using words and sentences, serves as a criterion for correct and incorrect use.\r\n\r\nBesides the fact that the meaning of signs of a language is determined by community, the usage of these signs is also in a community. What this means is that anyone who makes use of language makes use of it in the presence of others. But you might have witnessed a person conversing with himself and may think that his action invalidates our point. The truth is that such a person presupposes a community. He imagines a hearer in his mind and what you regard as his soliloquy is actually being addressed to this invisible hearer. Thus, the communi(ty) is supposed in the language function of communi(cation). We do not communicate with ourselves. We do so with others. \r\n\r\nAnother factor that points to the community nature of language is the fact that language learning is done within a community. We have children and adults learning new languages as our example here. They learn the language they speak simply because others taught them. No person staying on his own, without contact with at least one person speaking a particular language has ever mastered such a language. Consequently, we can also say that it is the community that gives its language to someone in order to integrate him as a member. Were the community to shut itself up from such a member, the language of the community will forever be unavailable to such a person.', '2020-10-16 15:50:04.081572', 1, 1, 'images/dia-1035834_19201.jpg', 'Image of their Attrusities');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-24 22:25:51.671625', '1', 'My First blog in django', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-09-24 22:32:09.452109', '1', 'Comment This your post is very nice. by Odo Joseph Ikechukwu', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-09-24 22:54:54.583056', '2', 'Python Programming is getting Tougher', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-09-24 22:55:35.962088', '1', 'My First blog in django', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(5, '2020-09-24 23:33:37.810397', '2', 'Comment I love this write up by Udochukwu', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 8, 1),
(6, '2020-09-24 23:40:57.912979', '6', 'Comment I love this write up by Udochukwu', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 8, 1),
(7, '2020-09-24 23:41:54.166664', '8', 'Comment I love this write up by Udochukwu', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 8, 1),
(8, '2020-09-24 23:43:22.457405', '1', 'Comment This your post is very nice. by Odo Joseph Ikechukwu', 2, '[]', 8, 1),
(9, '2020-09-24 23:43:59.627723', '10', 'Comment dfsdfahj by Udochukwu', 3, '', 8, 1),
(10, '2020-09-24 23:44:03.172065', '9', 'Comment dfsdfahj by Udochukwu', 3, '', 8, 1),
(11, '2020-09-24 23:44:07.347664', '8', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(12, '2020-09-24 23:44:10.732010', '7', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(13, '2020-09-24 23:44:13.763961', '6', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(14, '2020-09-24 23:44:16.479107', '5', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(15, '2020-09-24 23:44:19.931636', '4', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(16, '2020-09-24 23:44:22.931444', '3', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(17, '2020-09-24 23:45:32.483333', '2', 'Comment I love this write up by Udochukwu', 3, '', 8, 1),
(18, '2020-09-24 23:45:36.105592', '1', 'Comment This your post is very nice. by Odo Joseph Ikechukwu', 3, '', 8, 1),
(19, '2020-09-24 23:46:28.151268', '11', 'Comment dsdasf by okechukwe', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 8, 1),
(20, '2020-10-04 23:15:02.256250', '11', 'Comment dsdasf by okechukwe', 2, '[]', 8, 1),
(21, '2020-10-04 23:15:16.451375', '13', 'Comment I like this your post. It is educating, please keep it up. by Ik Joseph', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 8, 1),
(22, '2020-10-04 23:26:37.297225', '3', 'Apprenticeship agreement style', 1, '[{\"added\": {}}]', 7, 1),
(23, '2020-10-04 23:27:36.668161', '4', 'Professional Curriculum Vitae Sample', 1, '[{\"added\": {}}]', 7, 1),
(24, '2020-10-16 15:28:35.233447', '1', 'The beauty of END SARS', 1, '[{\"added\": {}}]', 10, 1),
(25, '2020-10-16 15:50:04.085572', '5', 'Brutality of Nigerian Police (SARS) against Nigerian Youths', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'blog', 'comment'),
(10, 'blog', 'image'),
(7, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(9, 'django_summernote', 'attachment'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-24 22:06:16.473547'),
(2, 'auth', '0001_initial', '2020-09-24 22:06:18.914047'),
(3, 'admin', '0001_initial', '2020-09-24 22:06:30.016390'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-24 22:06:32.560198'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-24 22:06:32.661232'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-24 22:06:34.709585'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-24 22:06:36.193741'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-24 22:06:37.560139'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-24 22:06:37.662429'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-24 22:06:38.579485'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-24 22:06:38.683538'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-24 22:06:38.807246'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-24 22:06:40.229021'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-24 22:06:41.579427'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-24 22:06:42.764963'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-24 22:06:42.918739'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-24 22:06:44.362107'),
(18, 'blog', '0001_initial', '2020-09-24 22:06:44.895055'),
(19, 'blog', '0002_comment', '2020-09-24 22:06:46.772115'),
(20, 'sessions', '0001_initial', '2020-09-24 22:06:48.602455'),
(21, 'django_summernote', '0001_initial', '2020-10-05 00:23:15.315031'),
(22, 'django_summernote', '0002_update-help_text', '2020-10-05 00:23:15.411607'),
(23, 'blog', '0003_image', '2020-10-05 01:56:30.531733'),
(24, 'blog', '0004_auto_20201016_0844', '2020-10-16 15:45:15.684972');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7dst9xl4i0ezerp7apai7gvqydjw1emv', '.eJxVjMEOwiAQBf-FsyEslAIevfcbyMKCVA0kpT0Z_92Q9KDXNzPvzTwee_FHT5tfiV0ZsMvvFjA-Ux2AHljvjcdW920NfCj8pJ0vjdLrdrp_BwV7GXXKLimtjLZBO2mykA6VAqcCAAqKU7QGNWWMM6KyFmmWwUgpIYOdBPt8Ad_HN5g:1kLZci:fFA-N3YZH01zlhsYLqE9e4zVaxzKN-02iCgL9hl8BRM', '2020-10-08 22:21:56.897285'),
('mf13yy4js7kso8dhb7dv7f2k4i2qkod2', '.eJxVjMEOwiAQBf-FsyEslAIevfcbyMKCVA0kpT0Z_92Q9KDXNzPvzTwee_FHT5tfiV0ZsMvvFjA-Ux2AHljvjcdW920NfCj8pJ0vjdLrdrp_BwV7GXXKLimtjLZBO2mykA6VAqcCAAqKU7QGNWWMM6KyFmmWwUgpIYOdBPt8Ad_HN5g:1kTRQM:MD1xUj8Kk_wH07KXVQGTM4xaFVLiTsdW6l6TRYlVneI', '2020-10-30 15:13:42.282162');

-- --------------------------------------------------------

--
-- Table structure for table `django_summernote_attachment`
--

CREATE TABLE `django_summernote_attachment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`);

--
-- Indexes for table `blog_image`
--
ALTER TABLE `blog_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_image`
--
ALTER TABLE `blog_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
