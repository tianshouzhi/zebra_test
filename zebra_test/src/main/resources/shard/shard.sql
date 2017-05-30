#========分库dragon_sharding_00==========================
CREATE DATABASE IF NOT EXISTS dragon_sharding_0;
USE dragon_sharding_0;

CREATE TABLE `user0` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_account0` (
  `user_id` int(11) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_account1` (
  `user_id` int(11) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#========分库dragon_sharding_1==========================
CREATE DATABASE IF NOT EXISTS dragon_sharding_1;
USE dragon_sharding_1;

CREATE TABLE `user2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user3` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_account2` (
  `user_id` int(11) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_account3` (
  `user_id` int(11) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;