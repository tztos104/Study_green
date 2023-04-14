SELECT * FROM dept;
SELECT * FROM employee;

DELETE FROM DEPT
WHERE  DEPTNO = '1000' ;

--EMPLOYEE ���̺� �ܷ�Ű ���� ���ǿ��� ON DELETE CASCADE �������� �߰�
--1. �ܷ�Ű ���� ���� �����ϱ�
ALTER TABLE employee DROP CONSTRAINT emp_fk;

--2 ON DELETE CASCADE �������� CNRK
ALTER TABLE employee ADD CONSTRAINT emp_fk
FOREIGN KEY(deptno) REFERENCES dept(deptno)
ON DELETE CASCADE;

DESC DEPT
