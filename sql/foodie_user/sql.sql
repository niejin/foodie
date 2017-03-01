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
) ENGINE=INNODB DEFAULT CHARSET=utf8;
