--ȸ�����̺� ����
CREATE TABLE t_member(
    memberid VARCHAR2(20) PRIMARY KEY,
    passwd VARCHAR2(20) NOT NULL,
    name VARCHAR2(30) NOT NULL,
    gender VARCHAR2(10),
    joindate DATE DEFAULT SYSDATE

);

insert into t_member(memberid, passwd, name, gender) VALUES 
    ('tztos', 'm12345', '�̿���', '��');
    
SELECT * FROM t_member;