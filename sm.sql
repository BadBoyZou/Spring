CREATE DATABASE IF NOT EXISTS sm DEFAULT CHARACTER SET 'UFT-8';
USE sm;
CREATE TABLE `department` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT "部门名称",
  `address` varchar(100) DEFAULT NULL COMMENT "部门地址"
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `staff` (
  `id` int(11) NOT NULL auto_increment primary key,
  `account` varchar(20) NOT NULL COMMENT "账号",
  `password` varchar(20) NOT NULL COMMENT "密码",
  `status` varchar(10) NOT NULL COMMENT "状态",
  `did` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT "姓名",
  `sex` char(2) DEFAULT NULL COMMENT "性别",
  `id_number` char(18) DEFAULT NULL COMMENT "身份证号码",
  `work_time` datetime DEFAULT NULL COMMENT "入职时间",
  `leave_time` datetime DEFAULT NULL COMMENT "离职时间",
  `born_date` date DEFAULT NULL COMMENT "出生日期",
  `info` varchar(200) DEFAULT NULL COMMENT "相信信息",
) ENGINE=InnoDB DEFAULT CHARSET=utf8

alter table staff add constraint fk_staff_dep foreign key(did) references department(id);

insert into department values (null ,"研发部","1#101");
insert into staff values (null,"wang","123456","正常",1,"王哥","男","43334443344324442","2020-1-1","2020-2-2","1999-3-3","正常");