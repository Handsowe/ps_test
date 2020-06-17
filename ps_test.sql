-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: ps_test
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2014_10_12_000000_create_users_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2020_06_15_175606_create_tests_table',1),(7,'2014_10_12_100000_create_password_resets_table',2),(8,'2020_06_16_191509_create_request_histories_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `request_histories`
--

DROP TABLE IF EXISTS `request_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_histories`
--

LOCK TABLES `request_histories` WRITE;
/*!40000 ALTER TABLE `request_histories` DISABLE KEYS */;
INSERT INTO `request_histories` VALUES (14,2,'https://en.wikipedia.org','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/en.wikipedia.org\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fen.wikipedia.org\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2620:0:861:ed1a::1\",\"type\":\"AAAA\",\"isp_id\":\"544\",\"isp_name\":\"Wikimedia Foundation Inc.\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/544-Wikimedia-Foundation-Inc\"},{\"ip\":\"208.80.154.224\",\"type\":\"A\",\"isp_id\":\"544\",\"isp_name\":\"Wikimedia Foundation Inc.\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/544-Wikimedia-Foundation-Inc\"}]}','2020-06-17 02:33:34','2020-06-17 13:40:16'),(18,0,'https://en.wikipedia.org','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/en.wikipedia.org\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fen.wikipedia.org\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2620:0:861:ed1a::1\",\"type\":\"AAAA\",\"isp_id\":\"544\",\"isp_name\":\"Wikimedia Foundation Inc.\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/544-Wikimedia-Foundation-Inc\"},{\"ip\":\"208.80.154.224\",\"type\":\"A\",\"isp_id\":\"544\",\"isp_name\":\"Wikimedia Foundation Inc.\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/544-Wikimedia-Foundation-Inc\"}]}','2020-06-17 12:16:18','2020-06-17 13:21:50'),(19,3,'https://ps.kz','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/ps.kz\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fps.kz\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2a00:5da0:1:1::131\",\"type\":\"AAAA\",\"isp_id\":\"962\",\"isp_name\":\"PS Internet Company LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/962-PS-Internet-Company-LLC\"},{\"ip\":\"195.210.46.131\",\"type\":\"A\",\"isp_id\":\"962\",\"isp_name\":\"PS Internet Company LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/962-PS-Internet-Company-LLC\"}]}','2020-06-17 13:27:16','2020-06-17 13:27:16'),(20,3,'https://vk.com','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/vk.com\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fvk.com\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"87.240.137.158\",\"type\":\"A\",\"isp_id\":\"380\",\"isp_name\":\"VKontakte\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/380-VKontakte\"},{\"ip\":\"93.186.225.208\",\"type\":\"A\",\"isp_id\":\"380\",\"isp_name\":\"VKontakte\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/380-VKontakte\"},{\"ip\":\"87.240.190.78\",\"type\":\"A\",\"isp_id\":\"380\",\"isp_name\":\"VKontakte\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/380-VKontakte\"},{\"ip\":\"87.240.139.194\",\"type\":\"A\",\"isp_id\":\"380\",\"isp_name\":\"VKontakte\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/380-VKontakte\"},{\"ip\":\"87.240.190.67\",\"type\":\"A\",\"isp_id\":\"380\",\"isp_name\":\"VKontakte\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/380-VKontakte\"},{\"ip\":\"87.240.190.72\",\"type\":\"A\",\"isp_id\":\"380\",\"isp_name\":\"VKontakte\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/380-VKontakte\"}]}','2020-06-17 13:28:03','2020-06-17 13:28:03'),(21,2,'https://yandex.kz','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/yandex.kz\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fyandex.kz\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2a02:6b8:a::a\",\"type\":\"AAAA\",\"isp_id\":\"2267\",\"isp_name\":\"YANDEX LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/2267-YANDEX-LLC\"},{\"ip\":\"5.255.255.55\",\"type\":\"A\",\"isp_id\":\"2267\",\"isp_name\":\"YANDEX LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/2267-YANDEX-LLC\"},{\"ip\":\"77.88.55.55\",\"type\":\"A\",\"isp_id\":\"2267\",\"isp_name\":\"YANDEX LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/2267-YANDEX-LLC\"},{\"ip\":\"77.88.55.66\",\"type\":\"A\",\"isp_id\":\"2267\",\"isp_name\":\"YANDEX LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/2267-YANDEX-LLC\"},{\"ip\":\"5.255.255.5\",\"type\":\"A\",\"isp_id\":\"2267\",\"isp_name\":\"YANDEX LLC\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/2267-YANDEX-LLC\"}]}','2020-06-17 13:35:40','2020-06-17 13:35:40'),(22,2,'https://mail.ru','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/mail.ru\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fmail.ru\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2a00:1148:db00:0:b0b0::1\",\"type\":\"AAAA\",\"isp_id\":\"1858\",\"isp_name\":\"Mail.Ru\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/1858-Mail-Ru\"},{\"ip\":\"217.69.139.200\",\"type\":\"A\",\"isp_id\":\"1858\",\"isp_name\":\"Mail.Ru\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/1858-Mail-Ru\"},{\"ip\":\"94.100.180.201\",\"type\":\"A\",\"isp_id\":\"1858\",\"isp_name\":\"Mail.Ru\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/1858-Mail-Ru\"},{\"ip\":\"94.100.180.200\",\"type\":\"A\",\"isp_id\":\"1858\",\"isp_name\":\"Mail.Ru\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/1858-Mail-Ru\"},{\"ip\":\"217.69.139.202\",\"type\":\"A\",\"isp_id\":\"1858\",\"isp_name\":\"Mail.Ru\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/1858-Mail-Ru\"}]}','2020-06-17 13:36:10','2020-06-17 13:36:10'),(23,1,'https://laravel.com','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/laravel.com\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Flaravel.com\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2606:4700:20::681a:d64\",\"type\":\"AAAA\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"2606:4700:20::681a:c64\",\"type\":\"AAAA\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"2606:4700:20::ac43:477d\",\"type\":\"AAAA\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"172.67.71.125\",\"type\":\"A\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"104.26.13.100\",\"type\":\"A\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"104.26.12.100\",\"type\":\"A\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"}]}','2020-06-17 13:36:58','2020-06-17 13:36:58'),(24,1,'https://yk-news.kz','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/yk-news.kz\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fyk-news.kz\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"2606:4700:3031::ac43:b340\",\"type\":\"AAAA\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"2606:4700:3032::681b:9cb4\",\"type\":\"AAAA\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"2606:4700:3031::681b:9db4\",\"type\":\"AAAA\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"104.27.156.180\",\"type\":\"A\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"104.27.157.180\",\"type\":\"A\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"},{\"ip\":\"172.67.179.64\",\"type\":\"A\",\"isp_id\":\"3\",\"isp_name\":\"Cloudflare\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/3-Cloudflare\"}]}','2020-06-17 13:37:25','2020-06-17 13:37:25'),(25,0,'https://granevsky.com','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=https:\\/\\/granevsky.com\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=https%3A%2F%2Fgranevsky.com\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"185.98.7.126\",\"type\":\"A\",\"isp_id\":\"591\",\"isp_name\":\"Kazakhtelecom\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/591-Kazakhtelecom\"}]}','2020-06-17 13:38:24','2020-06-17 13:38:24'),(26,0,'http://sarafun.kz','{\"request\":\"https:\\/\\/www.who-hosts-this.com\\/API\\/Host?key=5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd&url=http:\\/\\/sarafun.kz\",\"request_web\":\"https:\\/\\/www.who-hosts-this.com\\/?s=http%3A%2F%2Fsarafun.kz\",\"result\":{\"code\":200,\"msg\":\"Success\"},\"results\":[{\"ip\":\"185.98.7.126\",\"type\":\"A\",\"isp_id\":\"591\",\"isp_name\":\"Kazakhtelecom\",\"isp_url\":\"https:\\/\\/www.who-hosts-this.com\\/Hosts\\/591-Kazakhtelecom\"}]}','2020-06-17 13:38:59','2020-06-17 13:42:03');
/*!40000 ALTER TABLE `request_histories` ENABLE KEYS */;
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user','user@user.user',NULL,'$2y$10$ufF0hhfugmUErhmk63457eGmZL8fxRMcl3HwywesKMm.28kqUKh2.',NULL,'2020-06-16 10:23:54','2020-06-16 10:23:54'),(2,'Anatoliy','an@toliy.com',NULL,'$2y$10$WsPsShJP30Xvj76VSWsgkeDIAWRvk7JEKd/ZROIlFqh8qqPzKuXpO',NULL,'2020-06-17 02:32:48','2020-06-17 02:32:48'),(3,'Пользователь','user@mail.ru',NULL,'$2y$10$vIJGk/iSA/bIy5xpUSu8QuNgbZn16ftUJ0Qy5Kh6vlpqoykzaNiny',NULL,'2020-06-17 13:25:29','2020-06-17 13:25:29');
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

-- Dump completed on 2020-06-18  2:15:23
