CREATE TABLE K1(
    ID VARCHAR2(3),
    CNT NUMBER(2)
);

INSERT INTO K1 VALUES('��', 5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��', 5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��', 10);

SELECT *
FROM customer
WHERE phone IS NULL;


--NVL(Į����, Ư����): Į���̸� null�ΰ��� Ư������ ���, NULL�� �ƴϸ� Į���� ���
SELECT custid, name, address, NVL(phone, '010-1234-5678')
FROM customer;

SELECT*FROM K1;

--��ü ����, �հ�, ���, �ּҰ�
SELECT COUNT(CNT)
FROM K1;

SELECT COUNT (NVL(CNT, 0)) COUNT FROM K1
GROUP BY ID;


SELECT SUM(NVl(CNT, 0))/4 SUM FROM k1;

--RANK()�Լ�
SELECT * FROM employee;

SELECT empname,
    sal,
        RANK()OVER(ORDER BY sal DESC) �޿���ũ,
        DENSE_RANK() OVER(ORDER BY sal DESC) �޿�����ũ
        from employee;
        
        --���ΰ� ��������
        SELECT * FROM customer;
        SELECT * FROM book;
        SELECT * FROM orders;
        
        --���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�!
        SELECT * FROM customer, orders
        WHERE CUSTOMER.custid = orders.custid;
        
        
        
        
        