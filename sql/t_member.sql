--ȸ�����̺� ����
CREATE TABLE t_member(
    memberid VARCHAR2(20) PRIMARY KEY,
    passwd VARCHAR2(20) NOT NULL,
    name VARCHAR2(30) NOT NULL,
    gender VARCHAR2(10),
    joindate DATE DEFAULT SYSDATE

);
CREATE TABLE t_board(
    bnum NUMBER(4) PRIMARY KEY,
    title varchar2(100) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate TIMESTAMP,
    hit NUMBER DEFAULT 0,
    memberid VARCHAR2(20) NOT NULL,
    CONSTRAINT FK_MemberBoard FOREIGN KEY(memberid)
    REFERENCES t_member(memberid)


);
--�۹�ȣ, ������, �۳���, �ۼ���, ������, ��ȸ��, ���̵�(�ܷ�Ű)
--�ڵ� ����(SEQUENCE)
CREATE SEQUENCE b_seq;

DROP TABLE t_board;


insert into t_member(memberid, passwd, name, gender) VALUES 
    ('tztos', 'm12345', '�̿���', '��');
    
SELECT * FROM t_member;
SELECT * FROM t_board;
insert into t_board(bnum, title, content, memberid) 
VALUES (b_seq.NEXTVAL, '�����λ�', '�ȳ��ϼ���', '123');

