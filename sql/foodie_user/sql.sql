set names utf8;


/*�û�ģ�� - �����û���*/
DROP TABLE IF EXISTS `tb_base_user` ;
CREATE TABLE `tb_base_user` (
  `id` BIGINT(64) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `nickName` VARCHAR(64) NOT NULL COMMENT '�ǳ�',
  `realName` VARCHAR(64) NOT NULL COMMENT '��ʵ����',
  `avatar` VARCHAR(64) NOT NULL COMMENT 'ͼ��url',
  `sex` INT(4) NOT NULL DEFAULT '0' COMMENT '�Ա�',
  `birthdayYear` DATE DEFAULT NULL COMMENT '����������',
  `birthdayMonth` INT(11) DEFAULT NULL COMMENT '����������',
  `birthdayDay` INT(11) DEFAULT NULL COMMENT '����������',
  `signature` VARCHAR(512) DEFAULT NULL COMMENT 'ǩ��',
  `tel` VARCHAR(64) NOT NULL COMMENT '�ֻ�����',
  `status` INT(8) DEFAULT NULL COMMENT '״̬',
  `createAt` DATETIME DEFAULT NULL COMMENT '����ʱ��',
  `updateAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `nickName` (`nickName`),
  KEY `status` (`status`)
) ENGINE=INNODB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

/*�û���¼��*/
DROP TABLE IF EXISTS `tb_user_login` ;
CREATE TABLE `tb_user_login` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '����',
  `type` int(8) NOT NULL DEFAULT '0' COMMENT '�û���¼������type',
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

