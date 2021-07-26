CREATE DATABASE  IF NOT EXISTS `laravel8ecommercedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel8ecommercedb`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel8ecommercedb
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'et harum','et-harum','2021-07-13 22:41:45','2021-07-13 22:41:45'),(2,'molestias consequatur','molestias-consequatur','2021-07-13 22:41:45','2021-07-13 22:41:45'),(3,'aperiam impedit','aperiam-impedit','2021-07-13 22:41:45','2021-07-13 22:41:45'),(4,'facere quisquam','facere-quisquam','2021-07-13 22:41:46','2021-07-13 22:41:46'),(5,'qui neque','qui-neque','2021-07-13 22:41:46','2021-07-13 22:41:46'),(6,'et non','et-non','2021-07-13 22:41:46','2021-07-13 22:41:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Salvador Rada Vaca','radavacasalvador@gmail.com','3310492922','Test message','2021-07-23 21:48:39','2021-07-23 21:48:39'),(2,'Rodrigo Rada Vaca','rodrigo@gmail.com','3321829077','Another message','2021-07-23 21:52:00','2021-07-23 21:52:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'OFF100','fixed',100.00,1000.00,'2021-07-20 02:00:27','2021-07-20 21:54:03','2021-07-23'),(2,'OFF20P','percent',20.00,1200.00,'2021-07-20 02:06:19','2021-07-20 02:06:19','2021-07-20'),(3,'OFF30P','percent',30.00,1300.00,'2021-07-20 21:39:46','2021-07-20 21:47:39','2021-07-23');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_categories`
--

DROP TABLE IF EXISTS `home_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_categories`
--

LOCK TABLES `home_categories` WRITE;
/*!40000 ALTER TABLE `home_categories` DISABLE KEYS */;
INSERT INTO `home_categories` VALUES (1,'1,2,3,4,5',8,'2021-07-16 05:00:00','2021-07-16 21:44:36');
/*!40000 ALTER TABLE `home_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_sliders`
--

DROP TABLE IF EXISTS `home_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_sliders`
--

LOCK TABLES `home_sliders` WRITE;
/*!40000 ALTER TABLE `home_sliders` DISABLE KEYS */;
INSERT INTO `home_sliders` VALUES (1,'First Slide Title','First Slide Subitle','200','http://127.0.0.1:8000/shop','1626386235.jpg',1,'2021-07-16 02:57:15','2021-07-16 02:57:15'),(2,'Second Slide Title ','Second Slide Subtitle ','500','http://127.0.0.1:8000/shop','1626386905.jpg',1,'2021-07-16 03:07:12','2021-07-16 22:35:26');
/*!40000 ALTER TABLE `home_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2021_07_12_205842_create_sessions_table',1),(7,'2021_07_13_164323_create_categories_table',2),(8,'2021_07_13_164512_create_products_table',2),(9,'2021_07_15_193806_create_home_sliders_table',3),(10,'2021_07_16_151549_create_home_categories_table',4),(11,'2021_07_16_174325_create_sales_table',5),(12,'2021_07_19_181629_create_coupons_table',6),(13,'2021_07_20_154911_add_expiry_date_to_coupons_table',7),(14,'2021_07_20_171433_create_orders_table',8),(15,'2021_07_20_171548_create_order_items_table',8),(16,'2021_07_20_171648_create_shippings_table',8),(17,'2021_07_20_171747_create_transactions_table',8),(18,'2021_07_22_163749_add_delivered_canceled_date_to_orders_table',9),(19,'2021_07_22_191213_create_reviews_table',10),(20,'2021_07_22_192222_add_rstatus_to_order_items_table',10),(21,'2021_07_23_153921_create_contacts_table',11),(22,'2021_07_23_170036_create_settings_table',12);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,5,1,550.00,1,'2021-07-21 21:23:55','2021-07-23 02:15:18',1),(2,9,1,128.00,1,'2021-07-21 21:23:55','2021-07-23 02:20:25',1),(3,1,9,418.00,1,'2021-07-22 01:56:47','2021-07-23 02:31:36',1),(4,3,9,178.00,1,'2021-07-22 01:56:47','2021-07-22 01:56:47',0),(5,4,9,219.00,1,'2021-07-22 01:56:47','2021-07-22 01:56:47',0),(27,1,10,418.00,1,'2021-07-22 22:32:23','2021-07-22 22:32:23',0),(28,6,10,140.00,1,'2021-07-22 22:32:23','2021-07-22 22:32:23',0);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,678.00,0.00,142.38,820.38,'Bruce','Wanye','3310492922','wanye.bruce@gmail.com','test line 1','test line 2','Zapopan','Jalisco','Mexico','45067','delivered',1,'2021-07-21 21:23:55','2021-07-22 22:13:41','2021-07-22',NULL),(9,2,815.00,0.00,171.15,986.15,'Angelica','Rada Vaca','3310492922','angelica@gmail.com','Pizarra 2286 Colonia Marino Otero',NULL,'Zapopan','Jalisco','México','45067','delivered',0,'2021-07-22 01:56:47','2021-07-22 22:27:42','2021-07-22',NULL),(10,2,558.00,0.00,117.18,675.18,'Martha Leticia','Vaca Lopez','3311918457','martha@gmail.com','Pizarra 2286 Colonia Marino Otero',NULL,'Zapopan','Jalisco','México','45067','canceled',0,'2021-07-22 22:32:23','2021-07-22 23:17:59',NULL,'2021-07-22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int unsigned NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'repudiandae incidunt laudantium possimus','repudiandae-incidunt-laudantium-possimus','Sint aut amet dolores tempore eum asperiores itaque. Aperiam mollitia et assumenda omnis. Omnis voluptatem aut sint.','Et quod non delectus libero atque deserunt. Tempora consequatur facilis asperiores velit. Magni et et beatae. Libero distinctio ipsum sint. Laudantium provident praesentium est reiciendis. Dolore pariatur labore corporis eaque excepturi ducimus id. Aut dolorem sint voluptatem harum voluptatem earum. Ex dolores quam libero eius. Consequatur est odit eius. Facere dolor possimus perspiciatis quia quis eius ullam. Consequatur veniam quibusdam veritatis ullam architecto.',418.00,400.00,'DIGI250','instock',0,199,'digital_1.jpg',',16273170510.jpg,16273170511.jpg',3,'2021-07-13 22:41:46','2021-07-26 21:30:51'),(2,'fuga adipisci culpa dicta','fuga-adipisci-culpa-dicta','Natus at possimus qui harum dignissimos. Labore eaque aut aut aspernatur dolor cumque assumenda magnam. Adipisci inventore autem eius officia dicta doloribus.','Rerum distinctio dolorem accusantium eius aut. Nihil suscipit impedit non sequi suscipit. Et quis inventore mollitia earum eligendi atque. Consequatur non modi aliquid sit atque. Porro aut deleniti itaque sed eum voluptas voluptatem. Eaque perspiciatis ratione dolorum et. Nulla eos dolorem est deserunt. Eum voluptatem provident illo natus consequatur. Minus at totam ducimus ut dolore aut. Deleniti voluptatem vero necessitatibus molestiae voluptatum quis quibusdam.',306.00,290.00,'DIGI141','instock',0,177,'digital_5.jpg',NULL,3,'2021-07-13 22:41:46','2021-07-16 22:12:20'),(3,'saepe vel ad numquam','saepe-vel-ad-numquam','Error nihil error deserunt nesciunt. Velit voluptas aut at enim. Quasi sed soluta praesentium laborum.','Beatae fuga ad nisi. Consectetur ratione molestiae itaque numquam nesciunt repellendus. Itaque numquam deleniti molestiae ducimus eos. Unde odit nisi placeat non ad rerum aliquid corrupti. Soluta doloremque sed vitae. Deserunt aut dolore repellendus officia repellendus sunt. Earum sint itaque natus repudiandae ut omnis quo. Architecto ad laudantium neque et quis est quo. Qui recusandae animi perspiciatis illo quasi sunt itaque. Animi eum est consequatur autem itaque expedita odit.',178.00,150.00,'DIGI487','instock',0,198,'digital_3.jpg',NULL,5,'2021-07-13 22:41:46','2021-07-16 22:12:36'),(4,'ratione nemo voluptatibus dolorum','ratione-nemo-voluptatibus-dolorum','Enim labore rerum qui sunt aspernatur doloremque assumenda. Modi tenetur voluptatem qui. Exercitationem aspernatur quia et.','Doloribus voluptatibus consequatur ad molestiae unde ipsum et itaque. Eveniet voluptatum beatae qui quibusdam. Cumque saepe aut exercitationem sunt quaerat. Maxime doloremque non ut quia modi. Est excepturi molestiae esse cupiditate numquam placeat. Autem voluptatum rerum accusantium molestiae magnam dolor debitis distinctio. Rem aut quis tempora et sapiente temporibus. Nihil unde eveniet ea inventore.',219.00,200.00,'DIGI423','instock',0,127,'digital_6.jpg',NULL,5,'2021-07-13 22:41:46','2021-07-16 22:12:48'),(5,'cupiditate voluptatibus tempore recusandae','cupiditate-voluptatibus-tempore-recusandae','Itaque corporis impedit nihil dignissimos optio maiores itaque rerum. Maxime officiis aut deleniti nobis. Cumque in saepe alias id excepturi.','Exercitationem natus voluptatum rerum vel incidunt ratione. Sit dolorem qui expedita ducimus. Aut molestias officia magni sit commodi ut deleniti. Magnam vitae et voluptatem nesciunt est dolores. Rerum quam et impedit maiores. Est quam voluptate itaque reiciendis omnis dolore. Et quam doloribus id ut. Perspiciatis et unde voluptatem dolor aut et quasi. Rerum et quia error non aut. Ad quia in commodi asperiores eum minima. Voluptatibus voluptatibus tenetur aut qui esse.',550.00,500.00,'DIGI209','instock',0,147,'digital_8.jpg',NULL,5,'2021-07-13 22:41:46','2021-07-16 22:13:09'),(6,'modi aut quia velit','modi-aut-quia-velit','Similique cupiditate ullam non consequatur facilis quidem. Quo id odio sit nemo voluptates optio iure quam. Earum omnis quos voluptates dolorem nostrum modi non.','Voluptatibus a nam sit blanditiis. Dicta corrupti eos tempore. Sit qui officiis tenetur sed nisi omnis quia. Molestiae quam neque dolorem sapiente quo iste. Maiores voluptatem esse velit praesentium expedita. Optio iusto molestiae ducimus nobis ab. Exercitationem inventore voluptate autem aut dolorem praesentium ea. Molestias sed molestiae repellat at amet natus repellat.',140.00,100.00,'DIGI220','instock',0,146,'digital_21.jpg',NULL,1,'2021-07-13 22:41:46','2021-07-16 22:13:26'),(7,'animi tempore nulla dolorum','animi-tempore-nulla-dolorum','Aspernatur autem cupiditate ullam voluptatibus natus. Commodi nostrum sunt eum sint sit.','Minus praesentium eius assumenda earum. Qui voluptate eum repudiandae sit autem quis aut. Repellendus sed minima sit. Enim earum nemo odio dolor omnis. Maxime et quidem dolor et. Ipsum eveniet exercitationem id officiis doloribus sint. Aliquam nisi ut qui tempora. Iure qui et alias facere occaecati incidunt est. Culpa inventore deleniti amet quis consequatur.',450.00,400.00,'DIGI408','instock',0,109,'digital_19.jpg',NULL,4,'2021-07-13 22:41:47','2021-07-16 22:13:43'),(8,'quia perspiciatis recusandae repellat','quia-perspiciatis-recusandae-repellat','Vitae eius at aut. Laudantium adipisci doloremque aut aut. Magnam deleniti aliquam tempore sequi magni deleniti omnis.','Laudantium unde eos voluptate facere aliquid rerum. Perspiciatis est in dolores rem. Tempora iure laudantium quidem fugiat. Sapiente autem magni reprehenderit. Deserunt unde hic omnis modi nihil natus placeat aliquid. Nihil explicabo illo nulla vel. Quasi quam iure et. Temporibus magni rem aperiam quod molestias. Rerum ut tenetur doloribus quia quia nostrum. Repudiandae autem officiis dolor. Soluta repudiandae reiciendis aut. Fugit aut in et reiciendis perferendis aut nostrum.',434.00,400.00,'DIGI160','instock',0,144,'digital_15.jpg',NULL,2,'2021-07-13 22:41:47','2021-07-16 22:13:56'),(9,'repellat animi mollitia voluptas','repellat-animi-mollitia-voluptas','Nihil aut aliquam doloribus pariatur nemo similique nihil enim. Quia asperiores rerum autem asperiores nihil.','Dolor labore eligendi laborum optio ut impedit et sunt. Eum tempore voluptas minus. Excepturi necessitatibus quia eligendi. Eaque temporibus rerum temporibus rerum sapiente molestiae. Eos quis dignissimos culpa dolorem odit voluptatem aut numquam. Modi ducimus architecto et saepe laboriosam consequatur labore. Et qui omnis occaecati ab fuga sunt perferendis.',128.00,100.00,'DIGI204','instock',0,180,'digital_10.jpg',NULL,1,'2021-07-13 22:41:47','2021-07-16 22:14:14'),(10,'temporibus esse facere rerum','temporibus-esse-facere-rerum','Dolorem natus aut sunt quia fugit. Dolores recusandae voluptatem accusamus maiores adipisci dicta nulla maiores. Et dignissimos itaque iusto nobis necessitatibus qui porro.','A in esse maiores et voluptatem facilis qui. Sed voluptates laborum id occaecati omnis. Rerum autem quas magnam sunt aut aut ipsum. Ratione autem ut eos sed saepe. Maxime eum et omnis laborum autem labore quia voluptates. Expedita dolores et adipisci voluptas. Eum laborum fuga itaque id aperiam in et. Ea assumenda et temporibus et sed autem. Occaecati voluptas itaque modi aut mollitia voluptatem est. Totam a omnis et quasi ducimus quo minus. Tempora dolorem aut eos laudantium cumque iste ut.',683.00,600.00,'DIGI206','instock',0,158,'digital_20.jpg',NULL,4,'2021-07-13 22:41:47','2021-07-16 22:14:30'),(11,'recusandae non natus et','recusandae-non-natus-et','Inventore in nostrum deleniti fugit magnam. Veritatis voluptates qui molestias ex velit corrupti ut qui. Quidem natus id quae non dolorem doloribus neque.','Repellendus rerum mollitia ducimus. Exercitationem maxime deserunt saepe velit quibusdam temporibus ut. Blanditiis et voluptatem dicta eaque fugit velit voluptatibus. Qui qui est repellendus eligendi consequatur. Rem sunt excepturi eius possimus. Veniam ipsum sed non nulla fugiat. Praesentium ut quidem omnis voluptatem est molestiae in. Accusamus molestias beatae quam corporis at maiores qui.',135.00,100.00,'DIGI392','instock',0,174,'digital_17.jpg',NULL,4,'2021-07-13 22:41:47','2021-07-16 22:14:47'),(12,'et maxime ea enim','et-maxime-ea-enim','Porro est autem assumenda fugiat consequatur dolore et. Provident earum numquam vel ad. Et consequatur praesentium ipsa libero dolorem mollitia eveniet.','Dicta minima libero soluta omnis explicabo nobis. Aperiam dicta ut vero sed corporis ullam blanditiis. Id voluptate ratione iure placeat aut nesciunt. Harum ut placeat dicta in inventore et ipsam. Culpa culpa ut dolor. Voluptas natus architecto nobis voluptate. Temporibus omnis mollitia impedit ullam. Ea expedita illum nam ullam. Eveniet quod magnam porro unde.',200.00,150.00,'DIGI391','instock',0,188,'digital_14.jpg',NULL,5,'2021-07-13 22:41:47','2021-07-16 22:15:12'),(13,'quo optio velit laboriosam','quo-optio-velit-laboriosam','Quam quas eos non et fugiat earum. Vel dolorem sit explicabo qui harum. Id quasi praesentium ut praesentium non possimus. Harum dignissimos et ea qui optio rerum.','Sapiente dolores occaecati molestiae voluptas. Et sed dolor repudiandae qui eligendi. Pariatur hic voluptate ratione nulla. Quos quia voluptas dolorem. Non neque voluptas aut earum. Recusandae assumenda consequatur assumenda est. Nihil ut saepe mollitia enim suscipit. Vero qui et odit delectus laboriosam officiis. Sit tempora qui aliquid dolorem consequatur nam qui. Dicta autem ut ipsa ratione est quis eos.',600.00,550.00,'DIGI115','instock',0,107,'digital_9.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:15:41'),(14,'placeat eos eaque et','placeat-eos-eaque-et','Perspiciatis et porro excepturi eum. Quam odit corporis numquam repellendus accusamus accusantium. Nostrum doloremque sequi autem.','Libero autem impedit sed eaque est. Inventore dolores culpa voluptas eligendi. Molestias rerum iusto omnis qui suscipit enim. Ullam qui architecto soluta aliquid ex dolorum. Adipisci rerum aut eius aut ex porro. Repellendus eum porro porro occaecati. Recusandae quam id voluptate accusantium. Quod dolor tenetur dolor rem ea totam. Debitis quia saepe illo deleniti. Iure blanditiis molestias animi incidunt.',471.00,400.00,'DIGI329','instock',0,150,'digital_4.jpg',NULL,1,'2021-07-13 22:41:47','2021-07-16 22:16:01'),(15,'et molestiae repellendus excepturi','et-molestiae-repellendus-excepturi','Minus facere aut alias vel impedit et ducimus. Est eveniet facilis molestias sapiente minus. Quia repellat recusandae dolor iusto repellendus. Est ut neque officia enim reprehenderit sed aut.','Eligendi autem accusantium sunt explicabo ex. Magnam aliquid consequatur ipsa reprehenderit vel suscipit. Mollitia inventore error corporis suscipit sed. Eligendi deserunt aut veritatis ad. Et et consectetur voluptatem mollitia. Officiis non quo qui sint. Enim et praesentium rerum facere minima distinctio quia. Et consectetur dolorem iste illum voluptatum quis quia quaerat. Aperiam aut est eum eum. Laboriosam repellat ut est aut ut repudiandae velit. Laborum omnis atque eum.',230.00,200.00,'DIGI426','instock',0,143,'digital_11.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:16:18'),(16,'culpa ratione quis sunt','culpa-ratione-quis-sunt','Et nam illo quae ipsam adipisci. Quaerat illum vel quae adipisci quo non. Odit ut est qui atque.','Dolores ut sit ut similique. Et placeat aspernatur quia consequatur sint. Animi quis qui a. Ab fugiat optio magnam ut voluptatem rem. Quas sunt vitae et ad et voluptatum nemo quas. Possimus eligendi et voluptas est non ratione. Nisi consectetur expedita iusto sed et esse tenetur fugiat. Voluptatem fugit quo error iste eum veniam ab. Culpa enim aut sint eum voluptas recusandae. Nihil et similique accusantium laboriosam exercitationem iste voluptas.',414.00,400.00,'DIGI129','instock',0,149,'digital_12.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:16:33'),(17,'in architecto ab praesentium','in-architecto-ab-praesentium','Sunt eligendi laborum ab officia eaque. Cumque occaecati officia natus eveniet quis id nobis. Dolorem consequuntur mollitia soluta omnis commodi.','Et soluta quas labore tempore placeat ut temporibus maiores. Ipsum aliquid illum sint velit et eos quia. Aut magni soluta nam. At inventore expedita nisi dolor et assumenda consequatur. Reprehenderit eligendi voluptatum numquam sit non. Non perferendis sunt enim autem sapiente omnis. Aspernatur in tempora quia doloremque quisquam. Quia enim vitae assumenda commodi quasi velit. Autem placeat consectetur doloribus magnam. Ipsa consequatur quia voluptatum ut.',321.00,300.00,'DIGI159','instock',0,141,'digital_22.jpg',NULL,1,'2021-07-13 22:41:47','2021-07-16 22:16:54'),(18,'alias mollitia occaecati sint','alias-mollitia-occaecati-sint','Voluptates similique laborum ut laudantium excepturi assumenda nemo. At nulla laborum quia aut magnam ratione dolores.','Incidunt nihil expedita quo et. Autem quisquam consequatur consectetur aliquam assumenda ea nisi. Harum doloribus voluptatem tempore ut error. Et non qui ut et mollitia excepturi consequuntur amet. Eos perferendis aut ut architecto. Eveniet numquam corrupti tempora. Id eum amet quidem est. Culpa aut aut est accusamus et eum. Quaerat voluptas ut illum nisi esse excepturi asperiores. Culpa explicabo dicta occaecati asperiores adipisci. Illo harum incidunt ullam tempora nostrum.',150.00,100.00,'DIGI359','instock',0,170,'digital_7.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:17:14'),(19,'velit ut libero in','velit-ut-libero-in','Ea provident excepturi qui nihil. Cum accusamus expedita temporibus qui id corporis sit reprehenderit. Voluptatem atque tempore sint id omnis aut.','Eius velit eius esse voluptatum magnam aut officiis rerum. Corporis minus tempore similique. Vel consequatur ut et vel vitae adipisci dolorem aperiam. Cumque quasi eum rem numquam. Dolorum vero vel eum sed. Quisquam facilis veritatis non necessitatibus. Accusamus debitis vel deserunt quae dignissimos molestiae qui.',167.00,100.00,'DIGI461','instock',0,136,'digital_18.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:17:30'),(20,'repudiandae nesciunt aliquid provident','repudiandae-nesciunt-aliquid-provident','Amet dicta asperiores sequi quo odit sint nihil. Ut odit doloremque dolorum. Quia voluptas et ad repellat rerum eos optio.','Dignissimos ipsum hic est. Et sunt est placeat est est velit. Sit provident et nisi deserunt impedit corrupti. Minus rerum impedit vero perspiciatis quasi. Qui praesentium error distinctio et omnis nemo dolore. Qui dignissimos cupiditate culpa ex facilis cum. Explicabo dolorem quia nostrum veritatis dignissimos. Minus ex voluptatem non minima sed aliquid.',168.00,100.00,'DIGI208','instock',0,157,'digital_2.jpg',NULL,2,'2021-07-13 22:41:47','2021-07-16 22:17:48'),(21,'officia et hic pariatur','officia-et-hic-pariatur','Ut sint cupiditate aut quas. Autem at voluptas ut assumenda omnis dolorum id. Quas quia veritatis ea voluptatem. Non excepturi aperiam tempora ut. Ut quia amet magni ipsum totam.','Et aut ut tempora laudantium impedit labore. Asperiores doloribus autem expedita incidunt aut reiciendis officiis. Voluptatem quaerat cumque magnam aperiam harum perspiciatis aut. Omnis veniam officia dolorem. Deleniti sequi harum maiores laborum doloribus deleniti nihil. Tempora voluptas aliquam autem sed et accusantium quia consequatur.',343.00,300.00,'DIGI375','instock',0,179,'digital_14.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:18:07'),(22,'autem veritatis iure accusantium','autem-veritatis-iure-accusantium','Eaque in veniam quidem veniam. Deserunt et sapiente accusantium provident omnis. Voluptatem amet et ea explicabo saepe eum tempora. Quia blanditiis velit ut quos qui maxime ut.','Labore provident sit optio ex. Enim exercitationem sunt qui ut sunt quidem. Odit qui incidunt debitis quam enim veniam quas. Pariatur quos earum in provident. Nobis consequatur repudiandae omnis voluptas magni aut. Vitae nihil molestiae voluptas temporibus necessitatibus nihil. Et necessitatibus ea est quis eligendi sit ut. Sequi velit repellendus natus impedit. Qui dolores nisi fugiat nulla quidem sed ab. Itaque enim qui sint qui est. Rerum et soluta id.',400.00,350.00,'DIGI381','instock',0,127,'digital_16.jpg',NULL,3,'2021-07-13 22:41:47','2021-07-16 22:18:28'),(23,'New Product 1','new-product-1','<p>New Product 1 short description here.</p>','<p>New Product 1 description here.</p>',579.00,550.00,'DIGI43534','instock',0,11,'1627312391.jpg',',16273123910.jpg,16273123911.jpg',4,'2021-07-26 20:13:11','2021-07-26 20:13:11');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_order_item_id_foreign` (`order_item_id`),
  CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,4,'Nice product',1,'2021-07-23 02:15:18','2021-07-23 02:15:18'),(2,5,'Very Nice Game Controller',2,'2021-07-23 02:20:25','2021-07-23 02:20:25'),(3,3,'Good Product.',3,'2021-07-23 02:31:36','2021-07-23 02:31:36');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2021-07-22 09:41:35',1,NULL,'2021-07-19 19:18:03');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2M5gohlF2AHVB6khPWzbMPt407bsj27mzWN5WqkR',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3hBNFlFalFnbHdoRlVLdnZJYWRCcTA3ZlhDVVpsMnNSdEZ3VVU0SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=',1627317138);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'wanye.bruce@gmail.com','3331805447','3310492922','Pizarra 2286 Mariano Otero','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3733.92889253581!2d-103.45208178460149!3d20.63175500658724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8428ac75747c53e3%3A0x8266bfce92a88120!2sPizarra%202286%2C%20Mariano%20Otero%2C%2045067%20Zapopan%2C%20Jal.!5e0!3m2!1ses-419!2smx!4v1627069631597!5m2!1ses-419!2smx','#','#','#','#','#','2021-07-23 23:22:50','2021-07-24 00:53:46');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shippings_order_id_foreign` (`order_id`),
  CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES (1,1,'Rodrigo','Rada Vaca','3321829077','rodrigo@gmail.com','test line 1','test line 2','Zapopan','Jalisco','Mexico','45067','2021-07-21 21:23:55','2021-07-21 21:23:55');
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  KEY `transactions_order_id_foreign` (`order_id`),
  CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,2,1,'cod','pending','2021-07-21 21:23:56','2021-07-21 21:23:56'),(2,2,9,'card','approved','2021-07-22 01:56:50','2021-07-22 01:56:50'),(3,2,10,'cod','pending','2021-07-22 22:32:23','2021-07-22 22:32:23');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com',NULL,'$2y$10$HC0W8F1mue5HZlbUOjCIWethLsIOe/29tsGEJbogPvRzEW15boAHe',NULL,NULL,NULL,NULL,NULL,'ADM','2021-07-13 02:23:23','2021-07-13 02:23:23'),(2,'User','user@user.com',NULL,'$2y$10$vwnfj/X5MBcsS0n7Q8ByzOBdd60Ce6EfdqDT92l3luF4m3gEeNGu.',NULL,NULL,NULL,NULL,NULL,'USR','2021-07-13 02:30:08','2021-07-23 20:34:34'),(3,'User2','user2@user.com',NULL,'$2y$10$eKnlKR5pHVawf6o8UtNNDegm9ZXnfg3BtoXo0GF5b.u3tlkg.toaO',NULL,NULL,NULL,NULL,NULL,'USR','2021-07-13 21:40:53','2021-07-13 21:40:53'),(4,'Salvador Rada Vaca','radavacasalvador@gmail.com',NULL,'$2y$10$r1.//1Op94TdEeyzRdUwCeSv.qzGHR/Tk0DTqVIpD78DbRXGhzBuS',NULL,NULL,'VHSkiSoUMFUpCethj0ku3UdsFHG8RfhaX3wzHBXlvvkYRB4qHDhyh53EbHDl',NULL,NULL,'USR','2021-07-24 02:10:35','2021-07-24 02:44:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-26 11:43:34
