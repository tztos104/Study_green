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
SELECT*FROM board;

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