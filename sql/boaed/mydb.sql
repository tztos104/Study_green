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

--�Խñ� �߰�
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ�', '����','�ȳ��ϼ���, �����λ� �����');

--�Խñ� �˻�
SELECT*FROM board;