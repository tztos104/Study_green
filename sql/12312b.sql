SELECT ROWNUM, bno, title, writer, content
FROM board
ORDER BY bno;

SELECT * FROM
(SELECT ROWNUM RN, bno,title, writer, content FROM board )
WHERE RN > 10 AND RN <= 20;

--rownum�� �ùٸ� ���
CREATE TABLE EX_SCORE(
    NAME VARCHAR2(10),
    SCORE NUMBER
);

INSERT INTO ex_score VALUES('���ϳ�' , 94);
INSERT INTO ex_score VALUES('���' , 95);
INSERT INTO ex_score VALUES('���' , 91);
INSERT INTO ex_score VALUES('���' , 97);
INSERT INTO ex_score VALUES('��ټ�' , 84);
INSERT INTO ex_score VALUES('�迩��' , 90);
INSERT INTO ex_score VALUES('���ϰ�' , 70);
INSERT INTO ex_score VALUES('�迩��' , 100);
INSERT INTO ex_score VALUES('���ȩ' , 23);
INSERT INTO ex_score VALUES('�迭' , 54);
INSERT INTO ex_score VALUES('�迭��' , 94);


SELECT * FROM EX_SCORE;

SELECT ROWNUM, NAME, SCORE
    FROM ex_score
    WHERE ROWNUM <=5
    ORDER BY SCORE DESC;
    
    --�ùٸ� ���
    SELECT * FROM
    (SELECT ROWNUM, NAME, SCORE
    FROM ex_score
    ORDER BY SCORE DESC)
    WHERE ROWNUM <=5;