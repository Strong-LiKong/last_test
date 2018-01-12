DROP TABLE IF EXISTS `db_student`;

CREATE TABLE `db_student`(
id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "id",
name VARCHAR(30) COMMENT "学生姓名",
gener VARCHAR(10) COMMENT "性别",
object VARCHAR(20) COMMENT "专业",
direction VARCHAR(20) COMMENT "方向",
technology INT COMMENT "技术",
ability INT COMMENT "能力"
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

