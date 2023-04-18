--board ���̺� 
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY,      --�۹�ȣ
    title VARCHAR2(200)NOT NUll,            --������
    writer VARCHAR2(20)NOT NUll,        --�۾���
    content VARCHAR2(2000)NOT NUll,     --�۳���
    regdate DATE DEFAULT SYSDATE


);

--������(�Ϸù�ȣ, �ڵ�����)
CREATE SEQUENCE seq;

--��õ�� Į���� �߰��Ͻÿ�(Į���� :cnt �ڷ��� nunmber default 0
ALTER TABLE board ADD cnt NUMBER DEFAULT 0;

--�Խñ� �߰�
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ�', '����','�ȳ��ϼ���, �����λ� �����');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '���������Դϴ�.', '������','�����λ縦 �����ּ���');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ��Դϴ�.', '�̰�','�ȳ��ϼ���');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ��Դϴ�.', '�̰�','�ȳ��ϼ���');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����Ϸ��Դϴ�.', '�̻���','�ȳ��ϼ���');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ��Դϴ�.', '�ٴٴ�','�ȳ��ϼ���');


--�Խñ� �˻�
SELECT*FROM board
ORDER BY regdate ;

--ROWNUM : ����Ŭ�� �����ϴ� ������ �Ϸù�ȣ
--rownum �� �ݵ�� 1�� �����ؾ���.
SELECT ROWNUM, bno, title, content
FROM board
WHERE ROWNUM >0 AND ROWNUM <=10;
--������ ó��
SELECT * 
FROM
(SELECT ROWNUM rn, bno, title, content
FROM board)
WHERE rn >=11 AND rn <=20; --ROWNUM�� ��Ī�� ����ϸ� ����

--ROWID
--�����͸� �����ϴ� ������ ��
--ROWID�� ���ؼ� ������ ����, ��� ���� ����Ǿ� �ִ��� �� �� ����
SELECT ROWID, bno, title, content
FROM board;

SELECT ROWID, bno, title, content
FROM board
WHERE ROWID = 'AAAS86AAHAAAAFcAAA';


--��� ����(�ڷ����)
--INSERT INTO(Į��) (SELECT Į�� FROM ���̺��̸�)
INSERT INTO board(bno, title, writer, content)
    (SELECT seq.nextval, title, writer, content From board);
    

--ORDER BY regdate;

---�ۼ��ڰ� �������� �Խñ��� �˻��Ͻÿ�
SELECT * FROM board
WHERE bno =2 ;

--�Խñ��� �ۼ��ڵ� '������'���� 'admin'���� �����ϼ���.
--UPDATE ���̺��̸� set Į�� = ���氪 WHERE��
UPDATE board set writer = 'admin' 
WHERE bno= 2;

--3����  ����
DELETE FROM board 
WHERE bno=3;




commit