-- 1
SELECT * FROM orders;

-- 2 
SELECT onum, amt, odate, cnum, snum FROM orders;

-- 3
SELECT amt, odate FROM orders;

-- 4
SELECT DISTINCT odate FROM orders;

-- 5 
SELECT odate, amt FROM orders WHERE odate = '1990-04-10';

-- 6 
SET NAMES cp866;

-- ����������� ��������� ��� ��������� ���������
-- "=" ���������
-- ">" ������ ���
-- "<" ������ ���
-- ">=" ������ ��� �����
-- "<=" ������ ��� �����
-- "<>", "!=" �����������

-- 7
SELECT amt FROM orders WHERE amt > 1000;

-- 8
SELECT sname, city FROM salers WHERE city <> 'London';

-- 9
SELECT sname, city FROM salers WHERE sname > 'Motika';

-- 0123ABCD...Zabcd...z�-��-�
-- A < D, A > 3, R < Rifkin
--- 3 > 2

-- 10
SELECT * FROM orders WHERE odate > '1990-04-10';

-- AND (�), OR (���), NOT (��)

-- 11
SELECT * FROM orders WHERE amt > 1000 AND odate = '1990-06-10';

-- 12
SELECT amt FROM orders WHERE amt > 1000 AND amt < 4000;

-- 13
SELECT * FROM salers WHERE city = 'London' AND comm > 0.11;

-- 14
SELECT * FROM salers WHERE city = 'London' OR comm > 0.11;

-- 15
SELECT * FROM customers WHERE NOT city = 'London';

-- 16
SELECT * FROM  orders 
		WHERE NOT ((odate = '1990-03-10' AND snum > 1002) OR amt > 2000.00);
-- ��������������� ��������� 3003, 3009, 3007, 3010
-- ��������� ��� �������� (��� ����� NOT) 3001, 3002, 3006, 3005, 3008, 3011