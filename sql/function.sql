 --���� Ÿ�� �Լ�
 SELECT LOWER('ABCD') RESULT FROM DUAL;
 
 --SUNSTR(����, �ε���, ���ڼ�)
 SELECT SUBSTR('ABC', 1, 2) result from DUAL;
 
 --REPLACE(����, ��������, ���ο��)
 SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;
 
 --COMCAT(����1, ����2) - ���� ����
SELECT CONCAT('�ȳ�', '�ϼ���') RESULT FROM DUAL;
--���� ������-'||'
SELECT '�ٺ�'|| '�Ű���?' RESULT FROM DUAL;
 --LAPD(����, ���ڼ�, ��ȣ) ��ȣ�� ���ڸ� ������ ���ڼ���ŭ ���ʺ��� ä��
SELECT LPAD('cloud', 10, '*')RESULT FROM DUAL;

 --�μ��̸����� ó������ �����ؼ� 2���� ���� ���
 SELECT SUBSTR(deptname, 1, 2) �μ��� 
 FROM dept;
 
 --���� ���� �߱��� ���Ե� ������ �󱸷� �����Ͽ� �˻�
  SELECT bookid, REPLACE(bookname, '�߱�', '��') ������ 
 FROM book;
 
--4�� 1�Ͽ��� 10����(Ư���� ��: ������-> ��¥��)
 SELECT  TO_DATE('2023/04/01') +  10 FROM DUAL;
 
 --�Ի��� : 2022-1-1 ����� :2022-12-31
 SELECT
 round(MONTHS_BETWEEN(TO_DATE('2023-1-31'), TO_DATE('2022-1-1')), 0)�Ѱ�����
 FROM DUAL;
 
 SELECT * FROM emp;
 --NVL(�μ� 1, �μ� 2) : �μ�1�� NULL�� �ƴϸ� �μ�1�� ��� NULL�̸� �μ� 2�� ���
 --�޿��� ���� ����� �˻��Ͻÿ�
 SELECT * FROM emp
 WHERE sal IS NULL;
 
 
 SELECT empname,
        NVL(sal, 0)
    FROM emp;
    
    --DECODE(Į��, ����, ��, ����) �Լ� -if �Լ��� ���
    
    UPDATE emp SET gender= '����'
    WHERE empno = 100 OR empno = 101;
    
     UPDATE emp SET gender= '����'
    WHERE empno = 102 OR empno = 103;
    
    SELECT empname,
        sal,
        DECODE(gender, '����','M', 'F' ) gender
    FROM emp;
    
    --CASE WHEN
/*   CASE
        WHEN ���� THEN ���1
         WHEN ���� THEN ���2
         ELSE ��� 3
         END  */
    SELECT empname,
        sal,
        CASE
        WHEN gender='����' THEN 'M'
        ELSE 'F'
        END gender
        FROM emp;
        
--�޿��� 250���� �̻��̸� ������ '�븮'�� ǥ���ϰ�, 
--�޿��� 350���� �̻��̸� (�������� ǥ��
         
         SELECT empname,
        sal,
        CASE
        WHEN sal>=2500000 AND sal<3500000 THEN '�븮'
        WHEN sal>=3500000 THEN '����'
        ELSE '����'
        END ����
        FROM emp;
        
        
        
        --DECODE
        
        
          SELECT empname,
        sal,
        DECODE(sal, '3500000','����', 'F' ) gender
    FROM emp;
    