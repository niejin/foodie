set names utf8;


/*用户模块 - 基本用户表*/
DROP TABLE IF EXISTS `tb_base_user` ;
CREATE TABLE `tb_base_user` (
  `id` BIGINT(64) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `nickName` VARCHAR(64) NOT NULL COMMENT '昵称',
  `realName` VARCHAR(64) NOT NULL COMMENT '真实名称',
  `avatar` VARCHAR(64) NOT NULL COMMENT '图像url',
  `sex` INT(4) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthdayYear` DATE DEFAULT NULL COMMENT '出生日期年',
  `birthdayMonth` INT(11) DEFAULT NULL COMMENT '出生日期月',
  `birthdayDay` INT(11) DEFAULT NULL COMMENT '出生日期天',
  `signature` VARCHAR(512) DEFAULT NULL COMMENT '签名',
  `tel` VARCHAR(64) NOT NULL COMMENT '手机号码',
  `status` INT(8) DEFAULT NULL COMMENT '状态',
  `createAt` DATETIME DEFAULT NULL COMMENT '创建时间',
  `updateAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `nickName` (`nickName`),
  KEY `status` (`status`)
) ENGINE=INNODB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

/*用户登录表*/
DROP TABLE IF EXISTS `tb_user_login` ;
CREATE TABLE `tb_user_login` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(8) NOT NULL DEFAULT '0' COMMENT '用户登录的类型type',
  `uid` bigint(64) NOT NULL,
  `loginToken` varchar(64) DEFAULT NULL,
  `loginPassword` varchar(64) DEFAULT NULL,
  `loginExt` varchar(64) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_login_key` (`type`,`uid`),
  UNIQUE KEY `login_token` (`type`,`loginToken`,`loginPassword`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8

