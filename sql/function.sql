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