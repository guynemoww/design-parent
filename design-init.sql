----����
create database if not exists design default charset utf8 collate utf8_general_ci;
----���û�����������
CREATE USER `design`@`localhost` IDENTIFIED BY 'design123';

---���û���Ȩ��δ��Ȩdrop��
GRANT Alter, Alter Routine, Create, Create Routine, Create Temporary Tables, Create User, Create View, Delete, 
Event, Execute, File, Grant Option, Index, Insert, Lock Tables, Process, References, Reload, Replication Client, 
Replication Slave, Select, Show View, Shutdown, Super, Trigger, Update ON *.* TO `design`@`localhost`;

----����
CREATE TABLE `tb_mgr_designer` (
`des_no`  int(11) NOT NULL AUTO_INCREMENT COMMENT 'ע��ID' ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '����' ,
`sex`  varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ա�(0��;1Ů)' ,
`telno`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֻ���' ,
`password`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��¼����' ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����' ,
`qq`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ��' ,
`wechat`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '΢�ź�' ,
`level`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����(01:������02�м���03�߼�)' ,
`designfee`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�շ�����/ƽ��' ,
`status`  varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û�״̬(0ע����1����)' ,
`province`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ʡ' ,
`city`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ڳ���' ,
`address`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������ַ' ,
`fields`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ó�������' ,
`description`  varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ҽ���' ,
`remark`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע' ,
`field1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ֶ�1' ,
`field2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ֶ�2' ,
`create_time`  timestamp NULL DEFAULT NULL COMMENT '����ʱ��' ,
`update_time`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��' ,
PRIMARY KEY (`loginId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=100021
ROW_FORMAT=DYNAMIC
;