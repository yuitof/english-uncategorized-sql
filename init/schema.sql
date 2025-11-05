CREATE TABLE IF NOT EXISTS `usages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usage` text NOT NULL,
  `schema` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT 'unknown',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);