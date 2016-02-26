-- Tables of `rungc`
-- @20160226

set names utf8mb4;

use rungc;

CREATE TABLE `t_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT 'user id',
  `user_id_ex` bigint(20) NOT NULL COMMENT 'user_id for external usage',
  `content` text NOT NULL COMMENT 'content',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'common:status',
  `ctime` datetime NOT NULL COMMENT 'common:ctime',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'common:utime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='post table';

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id_ex` bigint(20) NOT NULL COMMENT 'user_id for external visit',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'user name',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT 'user password',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT 'user mobile',
  `ctime` datetime NOT NULL COMMENT 'common:ctime',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'common:utime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='user table';