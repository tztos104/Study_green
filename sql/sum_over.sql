SELECT SUM(sal) FROM employee
GROUP BY deptno;

--�޿� ������ ���
--
SELECT empno, empname, sal, SUM(sal)
OVER(ORDER BY empno) "sal_sum"
FROM employee;

SELECT empno, empname, sal, 
SUM(sal) OVER(ORDER BY empno) "sal_sum",
SUM(sal) OVER(ORDER BY empno
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) "sal_sum2",
SUM(sal) OVER(ORDER BY empno
ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) "sal_sum3"
FROM employee;