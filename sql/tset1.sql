select*from book;

delete book 
WHERE bookid= 11;

--å�� �� ����
select count(*) �Ѽ��� from book;

--������ ���� ���� ������ ã���ÿ�
select max(price) �ְ�� from book;

--���� ��� ������ �̸��� �˻��Ͻÿ�
select bookname,price from book
where price=
(select max(price) �ְ��� from book);

--���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
select * from customer;
select* from orders;

select *
from customer cus,orders ord
where cus.custid = ord.custid;

--���� �ֹ������� �˻��Ͻÿ�
select cus.name, sum(saleprice)
from customer cus,orders ord
where cus.custid = ord.custid
group by cus.name;
--having cus.name='�迬��';

