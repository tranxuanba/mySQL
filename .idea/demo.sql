# TAO MOI DATABASE
create database `cuocdoideplam1`;
# DUNG DATABASE
use `cuocdoideplam1`;
# XOA DATABASE
drop database `cuocdoideplam1`;
# TAO MOI BANG
create table student (
RN int not null auto_increment primary key ,
name varchar(100) not null ,
age int not null
);
create table Test (
testID int not null auto_increment primary key ,
name varchar(50)
);
create table studentTest (
RN int not null ,
testID int not null ,
day date,
mark int not null ,
foreign key (RN) references student (RN),
foreign key (testID) references Test (testID)
);
# THEM DU LIEU CHO BANG
insert into student(name, age) VALUE ('nguyen hong ha', 20);
insert into student(name, age) VALUE ('truong hong anh', 30);
insert into student(name, age) VALUE ('Tuan Minh', 25);
insert into student(name, age) VALUE ('Dan Truong', 22);
insert into student(name, age) VALUE ('Dan Truong', 60);
insert into Test(name) value ('EPC');
insert into Test(name) value ('DWMX');
insert into Test(name) value ('SQL1');
insert into Test(name) value ('SQL2');
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,1,'2006-07-17',8);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,2,'2006-07-18',5);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,3,'2006-07-19',7);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,1,'2006-07-17',7);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,2,'2006-07-18',4);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,3,'2006-07-17',2);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,1,'2006-07-19',10);
INSERT INTO studentTest(RN, testID, day, mark) VALUE (1,3,'2006-07-17',1);
# XOA BANG
DROP TABLE student;
DROP TABLE Test;
DROP TABLE studentTest;
# SUA THONG TIN BANG
ALTER TABLE student add address varchar(255);
ALTER TABLE Test add address varchar(255);
ALTER TABLE studentTest add address varchar(255);
alter table student DROP COLUMN address;
ALTER TABLE student MODIFY COLUMN AGE INT CHECK ( cuocdoideplam1.student.AGE >= 15 AND cuocdoideplam1.student.AGE <= 55);
ALTER TABLE studentTest MODIFY COLUMN mark INT NOT NULL DEFAULT 0;
ALTER TABLE studentTest MODIFY COLUMN RN INT NOT NULL PRIMARY KEY ;
ALTER TABLE studentTest MODIFY COLUMN testID INT NOT NULL PRIMARY KEY ;
ALTER TABLE Test MODIFY COLUMN name VARCHAR(50) UNIQUE ;
ALTER TABLE Test MODIFY COLUMN name VARCHAR(50);
# JOIN BANG TRONG MYSQL
# Hi???n th??? danh s??ch c??c h???c vi??n ???? tham gia thi, c??c m??n thi ???????c thi b???i c??c h???c vi??n ????
SELECT S.NAME AS STUDENTNAME, Test.NAME AS TESTNAME, mark, day FROM (studentTest
    INNER JOIN student s on studentTest.RN = s.RN)
    INNER JOIN Test ON studentTest.testID = Test.testID;
# danh s??ch c??c b???n h???c vi??n ch??a thi m??n n??o
SELECT studentTest.RN AS RN, S.NAME AS NAME, S.AGE AS AGE FROM studentTest
                                                                   INNER JOIN student s on studentTest.RN = s.RN;
# danh s??ch h???c vi??n ph???i thi l???i, t??n m??n h???c ph???i thi l???i v?? ??i???m thi(??i???m ph???i thi l???i l?? ??i???m nh??? h??n 5
SELECT S.NAME AS STUDENTNAME, Test.NAME AS TESTNAME, mark, day FROM (studentTest
    INNER JOIN student s on studentTest.RN = s.RN)
    INNER JOIN Test ON studentTest.testID = Test.testID WHERE mark < 5;
# Hi???n th??? danh s??ch h???c vi??n v?? ??i???m trung b??nh(Average) c???a c??c m??n ???? thi. Danh s??ch ph???i s???p x???p theo th??? t??? ??i???m trung b??nh gi???m d???n
SELECT S.NAME AS NAME, AVG(mark)AS TB FROM studentTest
INNER JOIN student s on studentTest.RN = s.RN ORDER BY TB DESC ;
# Hi???n th??? t??n v?? ??i???m trung b??nh c???a h???c vi??n c?? ??i???m trung b??nh l???n nh???t
SELECT S.NAME AS NAME, AVG(mark)AS TB FROM studentTest
INNER JOIN student s on studentTest.RN = s.RN WHERE
