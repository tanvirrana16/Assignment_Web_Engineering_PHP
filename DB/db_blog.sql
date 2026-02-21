--- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2026 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Kuakata'),
(2, 'Saint Martin'),
(3, 'Sundarbans'),
(9, 'Bandarban'),
(10, 'Sylhet'),
(17, 'Cox’s Bazar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `body` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(4, 'Syfur', 'Rahman', 'syfur@gmail.com', 'Hello nice to meet you', 1, '2021-12-26 07:08:31'),
(5, 'Fardous', 'AHmed', 'fardous@gmail.com', 'Hi nice to meet you', 1, '2021-12-26 07:08:45'),
(6, 'anowar', 'jahan', 'anowarjr1@gmail.com', 'HI i am anowar nice to meet you', 1, '2021-12-26 07:10:04'),
(7, 'kabir', 'ahmed', 'karbi@gmaill.com', 'Hello I am kabir nice to meet you.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ....Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ....Lorem Ipsum', 1, '2021-12-26 07:11:46'),
(9, 'Tanvir', 'Rana', 'tanvirrana1146@gmail.com', 'i am rana', 1, '2026-02-11 09:17:30'),
(11, 'tanvir', 'rana', 'rana@gmail.com', 'i want to book a ticket by bus.', 1, '2026-02-19 14:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Tanvir Ahmed Rana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `body` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(2, 'About us ', '<p>Bangladesh Travel Guide is created to help travelers explore the beauty and culture of Bangladesh in an easy and organized way. Our goal is to provide helpful travel guides, practical tips, and destination information so that anyone can plan a trip with confidence. We share ideas on popular places, budget-friendly travel plans, and useful advice to make traveling safer and more enjoyable. Whether you are a beginner traveler or someone who loves exploring new places, this website aims to inspi'),
(15, 'Travel Tips', '<p>Traveling in Bangladesh becomes easier and more enjoyable when you plan ahead and stay prepared. Always research your destination, check the weather, and manage your budget by using local transport and booking hotels early. Carry essential items such as ID, power bank, medicines, comfortable clothing, and suitable shoes for walking. For safety, avoid isolated areas at night, keep emergency contacts saved, and stay aware of your surroundings. Try local food from clean restaurants and drink bot'),
(17, 'Privacy Policy', '<p>We value your privacy and are committed to protecting your personal information while you use our website. Any information collected, such as your name or email through contact forms, is used only to respond to inquiries and improve user experience. We may also collect non-personal data like browser type or visited pages to analyze website performance. Our site may use cookies to enhance browsing, which you can disable in your browser settings if you prefer. We do not sell or share your perso');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tag`, `date`, `userid`) VALUES
(16, 17, 'Cox’s Bazar Travel Guide', '<p>Cox&rsquo;s Bazar is the longest natural sea beach in the world and one of the most popular tourist destinations in Bangladesh. It is famous for its golden sandy beach, beautiful sunsets, and relaxing sea views, making it perfect for family trips and vacation lovers.</p>\r\n<p>How to Go:<br />You can travel to Cox&rsquo;s Bazar from Dhaka by bus, train (via Chattogram), or flight. The journey usually takes around 9&ndash;12 hours by road or about 1 hour by air.</p>\r\n<p>Best Time to Visit:<br />The best time to visit Cox&rsquo;s Bazar is from November to February when the weather is cool and comfortable for beach activities.</p>\r\n<p>Things to Do:<br />- Enjoy beach walking and sunset views<br />- Visit Himchari and Inani Beach<br />- Explore Marine Drive road<br />- Try fresh seafood<br />- Visit local markets and shops</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Arrival, beach walk, sunset view, local market.<br />Day 2: Himchari and Inani Beach tour, return journey.</p>\r\n<p>Where to Stay:<br />Cox&rsquo;s Bazar has many budget, mid-range, and luxury hotels near the sea beach suitable for all travelers.</p>\r\n<p>Estimated Budget:<br />Transport: 1500&ndash;3000 BDT<br />Hotel: 2000&ndash;4000 BDT<br />Food: 1000 BDT<br />Total Approx: 5000&ndash;8000 BDT per person.</p>\r\n<p>Travel Tips:<br />Carry sunscreen, light clothing, and sunglasses. Avoid swimming during rough sea conditions and always follow safety flags on the beach.</p>', 'upload/65b369c9e2.jpg', 'Rana', 'coxs bazar, sea beach, bangladesh travel, sunset b', '2026-02-20 00:56:12', 22),
(18, 3, 'Sundarbans Wildlife Guide', '<p>The Sundarbans is the largest mangrove forest in the world and a UNESCO World Heritage Site. It is famous for its rich wildlife, natural beauty, and the Royal Bengal Tiger. This destination is perfect for adventure lovers and nature enthusiasts.</p>\r\n<p>How to Go:<br />You can travel from Dhaka to Khulna or Mongla by bus or train. From there, you need to take a boat arranged by a tour operator to explore the Sundarbans.</p>\r\n<p>Best Time to Visit:<br />The best time to visit the Sundarbans is from November to February when the weather is cool and comfortable for boat travel.</p>\r\n<p>Things to Do:<br />- Boat cruise inside the mangrove forest<br />- Watch wildlife and birds<br />- Visit Karamjal Wildlife Center<br />- Explore Kotka Sea Beach<br />- Enjoy peaceful river views</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Arrival in Khulna, boat journey begins, forest sightseeing.<br />Day 2: Wildlife observation, beach visit, return journey.</p>\r\n<p>Where to Stay:<br />Most visitors stay on tour boats or in hotels in Khulna before starting the forest tour.</p>\r\n<p>Estimated Budget:<br />Transport: 1500&ndash;2500 BDT<br />Tour Package: 4000&ndash;7000 BDT<br />Food: Included in most packages<br />Total Approx: 6000&ndash;9000 BDT per person.</p>\r\n<p>Travel Tips:<br />Travel with authorized tour operators, carry mosquito repellent, and follow safety rules strictly while inside the forest.</p>', 'upload/9985923933.jpg', 'Rana', 'sundarbans, mangrove forest, royal bengal tiger, w', '2026-02-20 00:59:19', 22),
(19, 2, 'Saint Martin Island Guide', '<p>Saint Martin is the only coral island in Bangladesh, famous for its crystal-clear blue water, white sandy beaches, and peaceful island environment. It is one of the most popular travel destinations for people who love the sea and nature.</p>\r\n<p>How to Go:<br />First travel to Teknaf by bus from Dhaka or Chattogram. From Teknaf, you need to take a ship or speedboat to reach Saint Martin Island. The sea journey usually takes around 2&ndash;3 hours.</p>\r\n<p>Best Time to Visit:<br />The best time to visit Saint Martin is from November to February when the sea remains calm and the weather is comfortable.</p>\r\n<p>Things to Do:<br />- Walk along the coral beach<br />- Enjoy sunset by the sea<br />- Visit Chera Dwip<br />- Try fresh seafood<br />- Experience island life and cycling</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Arrival, beach walk, sunset view.<br />Day 2: Chera Dwip visit, local food, return journey.</p>\r\n<p>Where to Stay:<br />The island offers many cottages and beach resorts for budget and family travelers.</p>\r\n<p>Estimated Budget:<br />Transport: 2000&ndash;3000 BDT<br />Hotel: 2000&ndash;3500 BDT<br />Food: 1000 BDT<br />Total Approx: 5000&ndash;7000 BDT per person.</p>\r\n<p>Travel Tips:<br />Book tickets early during peak season, carry cash, and avoid plastic waste to protect the island environment.</p>', 'upload/10cefd1534.jpg', 'Rana', 'saint martin, coral island, sea travel, bangladesh', '2026-02-20 00:59:54', 22),
(21, 1, 'Kuakata Travel Guide', '<p>Kuakata is one of the most unique sea beaches in Bangladesh, known as the &ldquo;Daughter of the Sea&rdquo; because visitors can enjoy both sunrise and sunset from the same beach. It is a peaceful destination perfect for nature lovers and relaxing family trips.</p>\r\n<p>How to Go:<br />You can travel to Kuakata from Dhaka by direct bus or launch to Barishal and then local transport. The journey usually takes around 10&ndash;12 hours depending on the route.</p>\r\n<p>Best Time to Visit:<br />The best time to visit Kuakata is from November to February when the weather is pleasant and the sky remains clear for sunrise and sunset views.</p>\r\n<p>Things to Do:<br />- Watch sunrise and sunset at the beach<br />- Visit Gangamati forest<br />- Explore Fatrar Char<br />- Enjoy fresh seafood<br />- Visit Buddhist temples nearby</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Arrival, beach walk, sunset view.<br />Day 2: Sunrise experience, Gangamati visit, local market, return journey.</p>\r\n<p>Where to Stay:<br />There are many budget and mid-range hotels near the sea beach suitable for families and groups.</p>\r\n<p>Estimated Budget:<br />Transport: 1500&ndash;2500 BDT<br />Hotel: 1500&ndash;3000 BDT<br />Food: 800&ndash;1000 BDT<br />Total Approx: 4500&ndash;6500 BDT per person.</p>\r\n<p>Travel Tips:<br />Carry sunscreen, light clothing, and sunglasses. Try to visit during clear weather to enjoy the best sunrise and sunset views.</p>', 'upload/e6a3e3f57f.jpg', 'Rana', 'kuakata, sea beach, sunset, bangladesh travel, bea', '2026-02-20 00:57:47', 22),
(28, 10, 'Sylhet Travel Guide', '<p>Sylhet is one of the most beautiful and peaceful destinations in Bangladesh, famous for its tea gardens, waterfalls, and natural landscapes. It is a perfect place for nature lovers and family travelers.</p>\r\n<p>How to Go:<br />You can travel to Sylhet from Dhaka by bus, train, or flight. The journey usually takes 6&ndash;8 hours depending on your transport choice.</p>\r\n<p>Best Time to Visit:<br />The best time to visit Sylhet is during winter (November to February) when the weather is cool and pleasant. Monsoon season is also attractive because waterfalls become more powerful.</p>\r\n<p>Things to Do:<br />- Visit Jaflong and enjoy river views<br />- Explore Ratargul Swamp Forest<br />- See the beautiful tea gardens<br />- Visit Lalakhal for crystal-clear water<br />- Enjoy local Sylheti cuisine</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Jaflong tour, tea garden visit, local market.<br />Day 2: Ratargul Swamp Forest and Lalakhal trip.</p>\r\n<p>Where to Stay:<br />Sylhet city offers many budget, mid-range, and family hotels suitable for all types of travelers.</p>\r\n<p>Estimated Budget:<br />Transport: 1200&ndash;2000 BDT<br />Hotel: 1500&ndash;2500 BDT<br />Food: 800&ndash;1000 BDT<br />Total Approx: 4000&ndash;6000 BDT per person.</p>\r\n<p>Travel Tips:<br />Carry comfortable shoes, keep extra clothes if visiting waterfalls, and book hotels in advance during peak season.</p>', 'upload/66a838555b.jpg', 'Rana', 'sylhet, tea garden, jaflong, bangladesh travel, sw', '2026-02-20 00:57:21', 22),
(29, 9, 'Bandarban Hill Travel Guide', '<p>Bandarban is one of the most beautiful hill destinations in Bangladesh, known for its green mountains, waterfalls, and peaceful natural environment. It is a perfect place for adventure lovers and nature enthusiasts.</p>\r\n<p>How to Go:<br />You can travel to Bandarban by bus from Dhaka to Chattogram and then take local transport to reach the main town. The journey usually takes around 8&ndash;10 hours depending on traffic.</p>\r\n<p>Best Time to Visit:<br />The best time to visit Bandarban is during winter (November to February) when the weather is cool and comfortable. Monsoon season is also beautiful but roads may be slippery.</p>\r\n<p>Things to Do:<br />- Visit Nilgiri and enjoy mountain views<br />- Explore Nilachal tourist spot<br />- Experience local tribal culture<br />- Enjoy fresh local food<br />- Visit waterfalls and natural streams</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Arrival, Nilachal visit, local market.<br />Day 2: Nilgiri tour and return journey.</p>\r\n<p>Where to Stay:<br />There are many budget and mid-range hotels available in Bandarban town suitable for families and groups.</p>\r\n<p>Estimated Budget:<br />Transport: 1500 BDT<br />Hotel: 1500&ndash;2500 BDT<br />Food: 800 BDT<br />Total Approx: 4000&ndash;5000 BDT per person.</p>\r\n<p>Travel Tips:<br />Carry comfortable shoes, keep cash for local transport, and always follow local travel guidelines for safety.</p>', 'upload/18bc50f879.jpg', 'Rana', 'bandarban, hill travel, bangladesh tour, travel gu', '2026-02-20 00:59:32', 22),
(30, 9, 'Bandarban Hill Travel Guide', '<p>Bandarban is one of the most beautiful hill destinations in Bangladesh, known for its green mountains, waterfalls, and peaceful natural environment. It is a perfect place for adventure lovers and nature enthusiasts.</p>\r\n<p>How to Go:<br />You can travel to Bandarban by bus from Dhaka to Chattogram and then take local transport to reach the main town. The journey usually takes around 8&ndash;10 hours depending on traffic.</p>\r\n<p>Best Time to Visit:<br />The best time to visit Bandarban is during winter (November to February) when the weather is cool and comfortable. Monsoon season is also beautiful but roads may be slippery.</p>\r\n<p>Things to Do:<br />- Visit Nilgiri and enjoy mountain views<br />- Explore Nilachal tourist spot<br />- Experience local tribal culture<br />- Enjoy fresh local food<br />- Visit waterfalls and natural streams</p>\r\n<p>Suggested 2-Day Plan:<br />Day 1: Arrival, Nilachal visit, local market.<br />Day 2: Nilgiri tour and return journey.</p>\r\n<p>Where to Stay:<br />There are many budget and mid-range hotels available in Bandarban town suitable for families and groups.</p>\r\n<p>Estimated Budget:<br />Transport: 1500 BDT<br />Hotel: 1500&ndash;2500 BDT<br />Food: 800 BDT<br />Total Approx: 4000&ndash;5000 BDT per person.</p>\r\n<p>Travel Tips:<br />Carry comfortable shoes, keep cash for local transport, and always follow local travel guidelines for safety.</p>', 'upload/b852baaeee.jpg', 'rana', 'bandarban, hill travel, bangladesh tour, travel gu', '2026-02-20 01:09:12', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(300) NOT NULL,
  `tw` varchar(300) NOT NULL,
  `ln` varchar(300) NOT NULL,
  `gp` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com', 'https://www.twitter.com/', 'https://www.LinkedIn.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'deep_green'),
(2, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin12@gmail.com', '<p>Hello, I am admin of this website</p>', 0),
(11, 'Fardous', '202cb962ac59075b964b07152d234b70', 'add@gmail.com', '<p>Hello I am add for Bangladesh</p>', 2),
(22, 'rana', '202cb962ac59075b964b07152d234b70', 'tanvirrana1146@gmail.com', '<p>Hello, I am admin of this website</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slogan` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Bangladesh Travel Guide', 'Explore Bangladesh on a budget', 'upload/a7967c7e96.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
