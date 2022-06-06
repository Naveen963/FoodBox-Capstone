-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 18, 2021 at 01:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `zipCode` varchar(55) NOT NULL,
  `user_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `id` bigint(11) NOT NULL,
  `cuisine_name` varchar(411) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table cuisine;
--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`id`, `cuisine_name`) VALUES
(1, 'CALIFORNIA'),
(2, 'SPAIN'),
(3, 'RUSSIA'),
(4, 'CANADA'),
(5, 'CHINA');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` decimal(55,0) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `cuisine_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE PRODUCT;
--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image_url`, `date_created`, `last_updated`, `cuisine_id`) VALUES

(1, ' Brunch', ' That’s right, just brunch. No one loves this late-morning meal more than Californians, so make sure to find your way to a great brunch place during your stay. One of the best for brunch and a mimosa (or two) is Blu Jam Café in Los Angeles. Breakfast is served all day, and they offer vegan and gluten-free options.', '96', 'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2019/11/13/f36323f0-0440-11ea-a68f-66ebddf9f136_image_hires_151131.jpg', '2021-09-15 23:17:00.000000', '2021-09-13 23:17:03.000000', 1), 



(2, '  Oysters', ' Oysters in California have a specific taste. Maybe it’s the central location of the bay or the warmer ocean waters in Southern California, but no matter the reason, every native has filled his or her stomach to bursting with oysters.It is a beloved hotspot. The Marshall restaurant overlooks Tomales Bay, where the oysters are harvested, but visitors can also stop by the Napa and San Francisco locations.', '67', 'https://assets.epicurious.com/photos/5de56a5b6dbb460009bd57b8/4:3/w_4444,h_3333,c_limit/FreshOysters_Hand_112019_17003_V1_final.jpg', '2021-07-15 23:17:00.000000', '2021-09-06 08:52:35.000000', 1), 


(3, ' Baby Back Ribs', ' Despite what many might think, California barbecue is unique and special, especially the baby back ribs. Phil’s BBQ in San Diego dishes out some of the best critically acclaimed BBQ ribs. Phil’s has been praised not only in California, but around the country, as well.', '98', ' https://cook.fnr.sndimg.com/content/dam/images/cook/fullset/2012/5/11/0/0041270F1_Baby-Back-Ribs_s4x3.jpg.rend.hgtvcom.616.462.suffix/1369245981352.jpeg', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 1), 

    


(4, 'Cheese Burger', 'It’s simple. It’s timeless. It’s the cheeseburger. And Californians believe their cheeseburgers are the best. Without a doubt, much of their confidence comes from the cheeseburgers served at Hodad’s in Southern California, which is a state favorite. Uncomplicated, clean, and classic—these are the cheeseburgers Californians swear by.', '65', 'https://img.theculturetrip.com/768x/smart/wp-content/uploads/2016/02/hodads12.jpg', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 1), 




(5, ' Acai Bowl ', ' It might be true that açaí bowls originated in Brazil and became popular in Hawaii, but it’s still an absolute favorite and must in California. These bowls come with superfoods, grains, fruit, and everything your body wants to feel healthy and strong. The best are found at Vitality Bowls. After a picturesque California hike, natives love to replenish with these yummy bowls.. .', '65', 'https://www.jessicagavin.com/wp-content/uploads/2020/01/acai-bowl-10-1200.jpg', '2021-07-15 23:17:00.000000', '2021-07-15 23:17:00.000000', 1), 




 
(7, 'Gazpacho ', 'This tomato-based Andalusian soup is most famous for being served cold. This can be quite a shock for those who are not expecting it, but in the searing heat of a Seville summer, the attraction becomes clear..','43','https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A
%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F160929095749-essential-spanish-dish-gazpacho-brindisa.jpg', '2021-03-14 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 


(8, 'Jamon', 'Jamón, or cured ham, is the most celebrated Spanish food product. Legs of ham were traditionally salted and hung up to dry to preserve them through the long winter months..', '45', 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F160929095812-essential-spanish-dish-jamon-iberico-brindisa.jpg', '2021-08-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 



(9, 'Albondigas ', 'A classic tapas item, albondigas, or meatballs in tomato sauce, are served all over Spain..', '76','https://dynaimage.cdn.cnn.com/cnn/q_auto,w_634,c_fill,g_auto,h_357,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F160929101009-essential-spanish-dish-squid-meatballs-pizarro.jpg', '2021-11-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 


(10, 'Bacalao', 'A prized dish in Spain, bacalao, or salted cod, was brought back by Spanish fisherman from as far afield as Norway and Newfoundland -- the fish not being found in local waters; it was salted to preserve it on the journey. .', '25', 'https://edition.cnn.com/travel/article/essential-spanish-dishes/index.html?gallery=13', '2021-07-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 2), 

 

(11, 'Jamon Iberico', 'Ruby red salted and air-dried Spanish cured ham hangs in almost every bar and restaurant in Spain. Jamon Iberico arguably stands as a trademark of Spain..', '29', 'https://www.worldtravelconnector.com/wp-content/uploads/2021/08/Spanish-Jamon-Iberico-ham.jpg', '2021-07-15 23:17:00.000000', '2021-07-13 23:17:03.000000', 2), 


(12, ' PAELLA', 'Paella is considered to be a national dish of Spain. If someone asks you to name the top 3 Spanish dishes, your first thought most likely will be Spanish paella. ', '52' ,' https://www.worldtravelconnector.com/wp-content/uploads/2021/08/Spanish-paella.jpg', '2022-07-29 23:17:00.000000', '2021-07-15 23:17:00.000000', 2), 



(13, ' Bliny', 'is a Russian type of pancakes or crepes. They are usually thin and big, they may be served with sour cream, jam, honey, or caviar or smokes salmon. We often eat blinis folded or rolled with all sorts of filling such as mushrooms, cottage cheese, ground meat, cabbage and many others ', '45', 'https://bridgetomoscow.com/files/200/1055.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 


(14, ' Sirniki', 'Sirniki are small blinis made of cottage cheese. This is a typical food for breakfast or branch..', '49', 'https://bridgetomoscow.com/files/200/1141.jpg', '2021-08-15 23:17:00.000000', '2021-05-19 23:24:19.000000',3), 

 
(15, ' Kasha', 'Kasha is the most common meal in Russia. It is easy to cook, healthy.', '56', 'https://bridgetomoscow.com/files/200/1196.jpg', '2021-05-25 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 

 
(16, 'Pelmeni', 'Pelmeni are meat or fish dumplings originally coming from the region of Siberia. They are usually kept frozen and cooked in boiled water right before eating.', '69', 'https://bridgetomoscow.com/files/200/1028.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 3), 

 
(17, '  Varenniki', 'Varenniki are dumpling similar to pelmeni but they Are usually stuffed with cheese, mashed potatoes, cabbage, meat, hard-boiled eggs or different fruits (cherry or plump)..', '55', 'https://bridgetomoscow.com/files/200/1096.jpg', '2017-07-02 23:17:00.000000', '2021-07-15 23:17:00.000000', 3), 


(18, 'Pirog', ' Pirog is a big pie stuffed with fruits, mushrooms, meat or fish..', '74', 'https://bridgetomoscow.com/files/200/1123.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 3), 

 



(19, ' Poutine', 'Few Canadian dishes are as world-renowned as the glorious creation known as poutine. Crispy fries, squeaky cheese curds and rich gravy all combine to create the meal of dreams, and this French Canadian food is so popular that it can now be found all around the world. The classic version is great on its own, but toppings like pulled pork, bacon and smoked meat really knock it out of the park – and at an average price of £3.50, it won’t break the bank either.', '87', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Poutine-@shannondidwhat.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 


(20, ' Bannock', 'Delicious and versatile, bannock is a simple bread that was once a key staple in the diets of Canada’s Aboriginal people. Modern takes on bannock include baked versions (which are heavy/dense) and fried versions (which are crispy and fluffy on the inside). In recent years, bannock has seen a surge in popularity, with new twists and variations popping up in bakeries and cafes nationwide – you have to try it!', '29', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Bannock-@torebergengen.jpg', '2021-08-12 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 


(21, ' Butter tarts', 'Butter tarts are so simple, but oh so good. They’re made by taking flaky pastry shells and filling them with a butter, sugar and egg filling. This is traditional Canadian food at its best, and you’ll be craving these long after you’ve left the country..', '96', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Butter-Tarts-@karyne.villeneuve.jpg', '2017-08-09 23:17:00.000000', '2021-08-12 23:17:00.000000', 4), 


(22, 'Nova Scotian Lobster Rolls', 'Canada is a massive country, with spectacular seafood from coast to coast. Not-to-be-missed experiences include Atlantic and Pacific salmon, smoked salmon, arctic char, and of course, East Coast lobsters. Nova Scotian lobster rolls are a Canadian favourite. ', '74', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/canadian-foods-lobster-roll_c_neil-conway-flickr.jpg', '2019-05-07 23:24:19.000000', '2021-08-12 23:17:00.000000', 4), 

 
(23, ' Montreal-style Bagels', 'Montreal’s bagels are the unsung heroes of great Canadian food. Sweeter, denser and thinner than their NYC counterparts, Montreal bagels are baked in wood fire ovens and are often covered in poppy or sesame seeds. The two heavyweights in the Montreal bagel game are St. Viateur and Fairmount Bagel, both of which (we can confirm) are amazing.', '67', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-St-Viateur-Bagels-@newna__o0o.jpg', '2021-05-19 23:24:19.000000', '2021-05-19 23:24:19.000000', 4), 



(24, ' Peameal Bacon ', 'This special Canadian twist on bacon is made from lean boneless pork loin, which is trimmed, wet-cured and then rolled in cornmeal, giving it its distinctive yellow crust. It’s juicier than American-style bacon, but also leaner and, some might say, more delicious..', '47', 'https://marylineg1.sg-host.com/blog/wp-content/uploads/2017/06/Ultimate-Guide-to-Canadian-Food-Peameal-Bacon-@cool.notcool.jpg', '2021-05-02 23:24:19.000000', '2021-05-19 23:24:19.000000', 4), 




(25, 'Manousheh ', ' Manousheh, the local pizza, is an apt choice for the piquant taste buds, especially if you are looking for Dubai specialties. It proves to be a perfect pick for a luscious breakfast. Stretched dough or flatbread, filled with exotic toppings like salty Akkawi cheese, earthy zaatar herbs, and olive oil. It is touted as the go-to dish for the best street food in Dubai. Make sure you hog on these with sweet jam and minced lamb. It is popular with both tourists and locals.', '68', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Manousheh-400x265.jpg', '2022-07-15 23:17:00.000000', '2022-07-13 23:17:03.000000', 5), 

(26, 'Iranian Sangak ', 'This Iranian leavened flatbread made out of whole wheat is served plain or rectangular in shape. It is the famous food of Dubai which you must try! The bread can also be made gluten-free from scratch. It is the go-to food item for health freaks and foodies..', '61', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Iranian-Sangak-400x300.jpg', '2022-07-29 23:17:00.000000', '2022-07-15 23:17:00.000000', 5), 

(27, 'Chelo Kebab ', 'For best food in Dubai, head to Chelo Kebab. Aromatic saffron-scented basmati rice served with a pat of butter on kebabs – Chelo Kebab is another name in the list of mouthwatering Dubai famous foods. You must try this scrumptious non-vegetarian Dubai dishes. It is said to be out of the world and exceptionally tasty.', '14', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Chelo-Kebab-400x249.jpg', '2022-05-19 23:24:19.000000', '2022-05-19 23:24:19.000000', 5), 

(28, 'Al Harees ', 'Wheat, meat, and a pinch of salt, when combined with some hours of baking, produce this really wonderful dish that will leave you craving for a second helping. Mostly savored during Ramadan, Eid and weddings, Al Harees is one of the most popular Dubai traditional food. You’ll be amazed at how warm and hospitable the Dubai locals are when you ask them where would you find the best Al Harees. It is easily one of the best dishes from Dubai cuisine.', '28', 'https://media-cdn.tripadvisor.com/media/photo-s/13/71/ef/ef/caption.jpg', '2022-08-15 23:17:00.000000', '2022-05-19 23:24:19.000000', 5), 

(29, 'Al Machboos ', 'Rice, onions, and meat, seasoned with spices, salt, and dried lemon, does this excite you as much as it excites me? This dish has been listed in the list of famous food in Dubai, due to the zesty flavors. Make sure to try their salad and raita. It is supposed to be heavenly. You’ll be surprised at how good this food tastes, considering it looks very plain and unsophisticated.', '68', 'https://assets.traveltriangle.com/blog/wp-content/uploads/2015/09/Al-Machboos-400x263.jpg', '2022-05-25 23:24:19.000000', '2022-05-19 23:24:19.000000', 5), 

(31, 'Proper Street Kebabs', ' From mutton kebabs with cumin and squid cooked on an iron plate to roast chicken wings and oysters with spicy sauce, the Chinese street barbecue experience is a combination of the food itself and the busy street bustle. It is unique and hard to find anywhere else.', '25', 'https://www.chefspencil.com/wp-content/uploads/Chinese-street-kebabs.jpg.webp', '2022-07-05 23:17:00.000000', '2022-07-15 23:17:00.000000', 5), 

(32, 'Spicy Crayfish', 'Over the past decade, crayfish has swept across China’s cities, the whole country is crazy about this crustacean. The crayfish is stewed in a broth with ginger, garlic, pepper, and many other spices. From spring to early autumn, a night time dish of crayfish has become very popular. At the weekends, groups of friends go to a crowded stall, relax on a small plastic stools, and order one or two pots of red crayfish.', '86', 'https://www.chefspencil.com/wp-content/uploads/Beijing-hot-pot-.jpg.webp', '2022-05-10 23:24:19.000000', '2022-05-19 23:24:19.000000', 5), 
(33, 'Guilin Rice Noodles', 'Guilin is in the south of China and surrounded by clear water and karst landform. It is famous not only for its paradise-like scenery, but also for its refreshing rice noodles sprinkled with sour beans, peanuts, bamboo shoots, and shallots.', '73', 'https://www.chefspencil.com/wp-content/uploads/Guilin-rice-noodles.jpg.webp', '2022-08-24 23:17:00.000000', '2022-05-19 23:24:19.000000', 5), 
(34, 'Polpette', 'Polpette can be made of meat, fish, potatoes, rice or vegetables and can be prepared stewed, baked or fried.', '63', 'http://yourguidetoitaly.com/slowitaly/wp-content/uploads/2018/03/polpette-c.jpg', '2022-07-15 23:17:00.000000', '2022-07-12 23:17:03.000000', 5); 


-- --------------------------------------------------------
drop table product;
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `phone` int(22) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table users;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `email`, `password`, `phone`, `street`, `city`, `zipcode`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'admin', 5555555, 'he', 'h', 'h'),
(2, 0, 'admin2', 'admin2@admin.com', 'admin2', 21, 'he', 'h', 'h'),
(4, 0, '2', 'mm@f.com', '1314', 1414, 'Al Dawhah Al Janubiyah, Dhahran 34457', 'Dahran', '34466'),
(5, 0, '1', '1', '1', 1, '1', '1', '1'),
(6, 0, 'teja', 'tej@gmail.com', 'teja', '963852', 'abc', 'def', '7894'),
(7, 0, 'ram', 'ram@gmail.com', 'ram', '1234', 'abc', 'def', '1234');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
  commit;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  commit;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table address
--

--
-- Metadata for table cuisine
--

--
-- Metadata for table product
--

--
-- Dumping data for table `pma__table_uiprefs`
--
CREATE TABLE `pma__table_uiprefs`(
username varchar(255),
db_name varchar(255),
table_name varchar(255),
last_update TIMESTAMP ,
prefs varchar(255)
 );
 drop table pma__table_uiprefs;
INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'foodbox', 'product', '{\"sorted_col\":\"`product`.`date_created`  ASC\"}', '2021-09-17 09:43:27');

--
-- Metadata for table users
--

--
-- Metadata for database foodbox
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;