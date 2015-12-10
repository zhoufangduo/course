
DROP DATABASE IF EXISTS COURSE;
CREATE DATABASE COURSE;
USE COURSE;

DROP TABLE IF EXISTS `CLAZZ`;
CREATE TABLE `CLAZZ`(
	`ID` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '班级ID',
	`NAME` VARCHAR(255) DEFAULT NULL COMMENT '班级名字',
	`CREATETIME` VARCHAR(32) NOT NULL COMMENT '班级创建时间',
	`CREATER` INT(11) NOT NULL COMMENT '创建人的ID',
	`DESCRIPTION` VARCHAR(255) DEFAULT NULL COMMENT '描述',
	PRIMARY KEY  (`ID`)
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COMMENT='班级数据表';
INSERT INTO `CLAZZ`(`ID`,`NAME`,`CREATETIME`,`CREATER`,`DESCRIPTION`)VALUES(1,'超级管理员',CURDATE(),1,'超级管理员组');

DROP TABLE IF EXISTS `USER`;
CREATE TABLE `USER`(
	`ID` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
	`CLASS_ID` INT(11) UNSIGNED NOT NULL COMMENT '班级ID',
	`NAME` VARCHAR(255) NOT NULL COMMENT '姓名',
	`USERNAME` VARCHAR(255) NOT NULL COMMENT '用户名',
	`PASSWORD` VARCHAR(255) NOT NULL COMMENT '密码',
	`ROLE` ENUM('ADMIN','TEACHER','STUDENT') DEFAULT 'STUDENT'  COMMENT '用户角色',
	`SEX` ENUM('MALE','FEMALE') NOT NULL COMMENT'性别',
	`EMAIL` VARCHAR(255) DEFAULT NULL COMMENT '邮件',
	`TEL` VARCHAR(15) DEFAULT NULL COMMENT '邮件',
	`WENXIN` VARCHAR(255) DEFAULT NULL COMMENT '微信',
	`QQ` VARCHAR(255) DEFAULT NULL COMMENT 'QQ',
	`CREATETIME` VARCHAR(32) NOT NULL COMMENT '班级创建时间',
	`CREATER` INT(11) NOT NULL COMMENT '创建人的ID',
	PRIMARY KEY  (`ID`)
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COMMENT='用户数据表';

INSERT INTO `USER`(`ID`,`CLASS_ID`,`NAME`,`USERNAME`,`PASSWORD`,`SEX`,`ROLE`,`EMAIL`,`TEL`,`WENXIN`,`QQ`,`CREATETIME`,`CREATER`)
	VALUES(1,1,'初始化管理员','admin',MD5('123456'),'MALE','ADMIN','admin@163.com','','','',CURDATE(),1);

	
DROP TABLE IF EXISTS COURSES;
CREATE TABLE COURSES(
	`ID` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程ID',
	`NAME` VARCHAR(255) NOT NULL COMMENT '课程名称',
	`CREATETIME` VARCHAR(32) NOT NULL COMMENT '创建时间',
	`CREATER` INT(11) NOT NULL COMMENT '创建人的ID',
	`DESCRIPTION` VARCHAR(255) DEFAULT NULL COMMENT '描述',
	`AUDIENCES` VARCHAR(255) DEFAULT NULL COMMENT '适应人群',
	`LOGO` VARCHAR(200) DEFAULT NULL COMMENT '课程图片',
	`TYPE` 
	PRIMARY KEY  (`ID`)
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COMMENT='课程数据表';

DROP TABLE IF EXISTS `COURSE_CHAPTER`;
CREATE TABLE `COURSE_CHAPTER` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程章节ID',
  `COURSEID` INT(10) UNSIGNED NOT NULL COMMENT '章节所属课程ID',
  `TYPE` ENUM('CHAPTER','UNIT') NOT NULL default 'CHAPTER' COMMENT '章节类型：CHAPTER为章节，UNIT为单元。',
  `PARENTID` INT(10) UNSIGNED NOT NULL default '0' COMMENT 'parentId大于0时为单元',
  `SEQ` INT(10) UNSIGNED NOT NULL COMMENT '章节序号',
  `TITLE` VARCHAR(255) NOT NULL COMMENT '章节名称',
  `CREATEDTIME` INT(10) UNSIGNED NOT NULL COMMENT '章节创建时间',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8  COMMENT='课程章节数据表';

DROP TABLE IF EXISTS `COURSE_TYPE`;
CREATE TABLE `COURSE_TYPE`(
	`ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类ID',
	`NAME` VARCHAR(255) NOT NULL COMMENT '类型名称',
	`CREATETIME` VARCHAR(32) NOT NULL COMMENT '创建时间',
	`CREATER` INT(11) NOT NULL COMMENT '创建人的ID',
	`DESCRIPTION` VARCHAR(255) DEFAULT NULL COMMENT '描述',
	PRIMARY KEY  (`ID`)
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COMMENT='分类数据表';

DROP TABLE IF EXISTS ADMIN_PASSWORD;
CREATE TABLE ADMIN_PASSWORD(
	`USERNAME` VARCHAR(255) NOT NULL COMMENT '用户名',
	`PASSWORD` VARCHAR(255) NOT NULL COMMENT '密保',
	PRIMARY KEY  (`USERNAME`)
)ENGINE=INNODB DEFAULT CHARSET=UTF8 COMMENT='后台管理员密保';

INSERT INTO ADMIN_PASSWORD(`USERNAME`,`PASSWORD`) VALUE('admin',MD5('123456'));