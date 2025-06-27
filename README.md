               AGGREGATE FUNCTIONS AND GROUPING


MariaDB [(none)]> use company;
Database changed
MariaDB [company]> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| department        |
| employees         |
| harshita          |
+-------------------+
3 rows in set (0.001 sec)

MariaDB [company]> select * from employees;
+--------+--------+------------+-----------+--------+------------+--------+--------------+
| emp_ID | Salary | First_name | Last_name | city   | Department | Dep_ID | Joining_date |
+--------+--------+------------+-----------+--------+------------+--------+--------------+
|      1 |  40000 | Ravi       | Sharma    | Jaipur | IT         |    101 | 0000-00-00   |
|      2 |  45000 | Kirti      | Goyal     | Jaipur | IT         |    101 | 0000-00-00   |
|      3 |  34000 | Hari ohm   | Kumawat   | Delhi  | Medical    |    102 | 2024-04-09   |
|      4 |  45000 | Rakhi      | Goyal     | Jaipur | IT         |    101 | 2022-06-04   |
|      5 |  39000 | Tanvi      | Kumawat   | Delhi  | Medical    |    102 | 2023-04-07   |
|      6 |  65000 | Meenu      | Kaur      | Delhi  | IT         |    101 | 2020-11-03   |
|      7 |  55000 | Rahul      | Kumawat   | Delhi  | Medical    |    102 | 2024-07-09   |
|      8 |  65000 | Sakshi     | Gupta     | Delhi  | IT         |    101 | 2020-11-03   |
|      9 |  45000 | Prithvi    | Khan      | Delhi  | Medical    |    102 | 2024-07-09   |
|     10 |  67000 | Sonia      | Kaur      | Kanpur | IT         |    101 | 2022-09-11   |
+--------+--------+------------+-----------+--------+------------+--------+--------------+
10 rows in set (0.001 sec)

MariaDB [company]> select min(salary) from employees;
+-------------+
| min(salary) |
+-------------+
|       34000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [company]> select max(salary) from employees;
+-------------+
| max(salary) |
+-------------+
|       67000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [company]> select sum(salary) as TOTAL_SALARY from employees;
+--------------+
| TOTAL_SALARY |
+--------------+
|       500000 |
+--------------+
1 row in set (0.001 sec)

MariaDB [company]> select avg(salary) as AVG_SALARY from employees;
+------------+
| AVG_SALARY |
+------------+
| 50000.0000 |
+------------+
1 row in set (0.000 sec)

MariaDB [company]> select round(avg(salary),2) as AVG_SALARY from employees;
+------------+
| AVG_SALARY |
+------------+
|   50000.00 |
+------------+
1 row in set (0.001 sec)

MariaDB [company]> select count(salary) as TOATAL_ENTRIES from employees;
+----------------+
| TOATAL_ENTRIES |
+----------------+
|             10 |
+----------------+
1 row in set (0.000 sec)

MariaDB [company]> select length(first_name) as LENGTH from employees;
+--------+
| LENGTH |
+--------+
|      4 |
|      5 |
|      8 |
|      5 |
|      5 |
|      5 |
|      5 |
|      6 |
|      7 |
|      5 |
+--------+
10 rows in set (0.000 sec)

MariaDB [company]> select city,sum(salary) from employees group by city;
+--------+-------------+
| city   | sum(salary) |
+--------+-------------+
| Delhi  |      303000 |
| Jaipur |      130000 |
| Kanpur |       67000 |
+--------+-------------+
3 rows in set (0.001 sec)

MariaDB [company]> select city,sum(salary) from employees group by city having city = "Jaipur";
+--------+-------------+
| city   | sum(salary) |
+--------+-------------+
| Jaipur |      130000 |
+--------+-------------+
1 row in set (0.000 sec)
