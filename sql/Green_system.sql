--���� Ÿ�� �Լ�
--������ ���̺� : dual
SELECT ABS(-10), ABS(10) FROM dual;

--�ݿø� :ROUND(��, �ڸ���)
 SELECT ROUND(3.875, 2) FROM DUAL;
 
 SELECT sal �޿�,
        sal/30 �ϱ�,
        ROUND(sal/30, 1) ���1,
         ROUND(sal/30, 0) ���2,
          ROUND(sal/30, -1) ���3
FROM employee;

--sal�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� ���� �����
SELECT sal �޿�,
     sal/30 �ϱ�,
     TRUNC(sal/30, 1) ���1,
TRUNC(sal/30, 0) ���2,
TRUNC(sal/30, -1) ���3
    FROM employee;
    
    --���� ��� �ֹ� �ݾ��� ��������� �ݿø��� ���� ���Ͻÿ�
    SELECT custid ����ȣ , ROUND( AVG(saleprice),-2) ����ֹ��ݾ�
    FROM orders
    GROUP BY custid;
    
     SELECT custid ����ȣ , COUNT(*) �ֹ���, SUM(saleprice) �Ѿ�
    FROM orders
    GROUP BY custid;
    
     SELECT custid ����ȣ ,  ROUND(SUM(saleprice)/COUNT(*),-2) ���
    FROM orders
    GROUP BY custid;
    
    SELECT * FROM customer;
    
    