SELECT custid, bookid,
    sum(saleprice)
    from orders
GROUP BY ROLLUP(custid, bookid);

CREATE TABLE department(
    dept_no VARCHAR2(3),
    jop_nm VARCHAR2(30),
    salary NUMBER(10));
    
    
    INSERT INTO department VALUES ('100', '���ǻ�' , 3300000);
    INSERT INTO department VALUES ('100', '������' , 4300000);
    INSERT INTO department VALUES ('200', '���ǻ�' , 5000000);
    INSERT INTO department VALUES ('200', '�����ͺм���' , 4000000);
    INSERT INTO department VALUES ('200', '������' , 6000000);
    
    select * from department;
    
   -- �μ��� �޿� �Ѱ�
    SELECT dept_no,
    SUM(salary)
    from department
    GROUP BY dept_no;
    
       SELECT dept_no, jop_nm,
    SUM(salary)
    from department
    GROUP BY ROLLUP(dept_no, jop_nm)
    ORDER BY dept_no;
    
          SELECT custid, bookid,
    SUM(saleprice) ���Ǹž�
    from orders
    GROUP BY GROUPING SETS(custid, bookid)
    ORDER BY custid;