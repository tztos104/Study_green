CREATE TABLE mytest(
    class VARCHAR2(2),
    name  VARCHAR2(6)
    );
    
INSERT INTO mytest VALUES ( 'A', '����');
INSERT INTO mytest VALUES ( 'A', '����');
INSERT INTO mytest VALUES ( 'A', '����');
INSERT INTO mytest VALUES ( 'B', '����');
INSERT INTO mytest VALUES ( 'B', '����');
INSERT INTO mytest VALUES ( 'C', '����');
INSERT INTO mytest VALUES ( 'C', '����');

SELECT * FROM mytest;

--�ݺ� �л����� ���Ͻÿ�
SELECT class, count(name) �л���
FROM mytest
GROUP BY class;

--�̸�- �ߺ����� disrinct
SELECT class, count(DISTINCT NAME)�л���
FROM mytest
GROUP BY class;

--CASE WHEN
SELECT 
       COUNT( CASE
            WHEN class = 'A' THEN 1
        END) AS A,
         COUNT( CASE
            WHEN class = 'B' THEN 1
        END) AS B,
         COUNT( CASE
            WHEN class = 'C' THEN 1
        END) AS C
FROM mytest;

--DECODE(Į��, ����, ���ΰ�, �����ΰ�)

SELECT Count(DECODE(class, 'A', 1) )AS A,
Count(DECODE(class, 'B', 1) )AS B,
Count(DECODE(class, 'C', 1) )AS C
FROM mytest;




