Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ebook-app          |
| ecommerce          |
| emp                |
| fiza               |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| student            |
| student_mgmt_sys   |
| sys                |
| user               |
| world              |
+--------------------+
13 rows in set (4.67 sec)

mysql> use emp;
Database changed

mysql> create table emp(id varchar(10) not null primary key,name varchar(20) not null,mobile_no varchar(20) not null,address varchar(20) not null,salary int not null);
Query OK, 0 rows affected (2.95 sec)

mysql> desc emp;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | varchar(10) | NO   | PRI | NULL    |       |
| name      | varchar(20) | NO   |     | NULL    |       |
| mobile_no | varchar(20) | NO   |     | NULL    |       |
| address   | varchar(20) | NO   |     | NULL    |       |
| salary    | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.12 sec)

mysql> insert into emp(id,name,mobile_no,address,salary) VALUES('101','Fiza','9359459158','Solapur','70000'),('102','Usman','7058102180','pune','80000'),('103','Rajiya','8830213939','Mumbai','50000'),('104','Fijo','9359459158','Shelgi','60000'),('105','Piza','8830212929','Nagpur','40000');
Query OK, 5 rows affected (0.48 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *From emp;
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 101 | Fiza   | 9359459158 | Solapur |  70000 |
| 102 | Usman  | 7058102180 | pune    |  80000 |
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
| 104 | Fijo   | 9359459158 | Shelgi  |  60000 |
| 105 | Piza   | 8830212929 | Nagpur  |  40000 |
+-----+--------+------------+---------+--------+
5 rows in set (0.05 sec)

mysql> select id,name from emp;
+-----+--------+
| id  | name   |
+-----+--------+
| 101 | Fiza   |
| 102 | Usman  |
| 103 | Rajiya |
| 104 | Fijo   |
| 105 | Piza   |
+-----+--------+
5 rows in set (0.00 sec)

mysql> select *From emp;
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 101 | Fiza   | 9359459158 | Solapur |  70000 |
| 102 | Usman  | 7058102180 | pune    |  80000 |
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
| 104 | Fijo   | 9359459158 | Shelgi  |  60000 |
| 105 | Piza   | 8830212929 | Nagpur  |  40000 |
+-----+--------+------------+---------+--------+
5 rows in set (0.00 sec)

mysql> select *From emp WHERE name LIKE 'F%';
+-----+------+------------+---------+--------+
| id  | name | mobile_no  | address | salary |
+-----+------+------------+---------+--------+
| 101 | Fiza | 9359459158 | Solapur |  70000 |
| 104 | Fijo | 9359459158 | Shelgi  |  60000 |
+-----+------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select *From emp WHERE name LIKE '%a';
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 101 | Fiza   | 9359459158 | Solapur |  70000 |
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
| 105 | Piza   | 8830212929 | Nagpur  |  40000 |
+-----+--------+------------+---------+--------+
3 rows in set (0.00 sec)

mysql> select *From emp WHERE name LIKE '%ji%';
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
+-----+--------+------------+---------+--------+
1 row in set (0.00 sec)

mysql> select *From emp WHERE name LIKE 'F___';
+-----+------+------------+---------+--------+
| id  | name | mobile_no  | address | salary |
+-----+------+------------+---------+--------+
| 101 | Fiza | 9359459158 | Solapur |  70000 |
| 104 | Fijo | 9359459158 | Shelgi  |  60000 |
+-----+------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select *From emp WHERE salary>70000;
+-----+-------+------------+---------+--------+
| id  | name  | mobile_no  | address | salary |
+-----+-------+------------+---------+--------+
| 102 | Usman | 7058102180 | pune    |  80000 |
+-----+-------+------------+---------+--------+
1 row in set (0.07 sec)

mysql> select *From emp WHERE salary<70000;
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
| 104 | Fijo   | 9359459158 | Shelgi  |  60000 |
| 105 | Piza   | 8830212929 | Nagpur  |  40000 |
+-----+--------+------------+---------+--------+
3 rows in set (0.00 sec)

mysql> delete From emp WHERE id='104';
Query OK, 1 row affected (0.24 sec)

mysql> select *From emp;
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 101 | Fiza   | 9359459158 | Solapur |  70000 |
| 102 | Usman  | 7058102180 | pune    |  80000 |
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
| 105 | Piza   | 8830212929 | Nagpur  |  40000 |
+-----+--------+------------+---------+--------+
4 rows in set (0.00 sec)

mysql> update emp set id=104 WHERE id='105';
Query OK, 1 row affected (0.47 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *From emp;
+-----+--------+------------+---------+--------+
| id  | name   | mobile_no  | address | salary |
+-----+--------+------------+---------+--------+
| 101 | Fiza   | 9359459158 | Solapur |  70000 |
| 102 | Usman  | 7058102180 | pune    |  80000 |
| 103 | Rajiya | 8830213939 | Mumbai  |  50000 |
| 104 | Piza   | 8830212929 | Nagpur  |  40000 |
+-----+--------+------------+---------+--------+
4 rows in set (0.00 sec)

mysql>