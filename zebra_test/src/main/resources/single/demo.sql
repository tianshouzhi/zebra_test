#========分库dragon_sharding_00==========================
CREATE DATABASE IF NOT EXISTS zebra;
USE zebra;

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;