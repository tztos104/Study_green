SELECT * FROM book;
SELECT * FROM customer;


Select * from book
where bookname like '%�౸%';

--�౸�� ���� ���� �� ������ 20000�� �̻��� ������ �˻��Ͻÿ�
Select * from book
where bookname like '%�౸%' and price>= 20000;

--������ �̸������� �˻��Ͻÿ�(��������
Select * from book
order by bookname;

--������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �����Ͻÿ�
select * from book
order by price DESC, bookname;

--�ڷ� �߰� (11, 'ȥ�� �����ϴ� �ڹ�', '�Ѻ��̵��', 13000)
INSERT INTO book VALUES (11, 'ȥ�� �����ϴ� �ڹ�', '�Ѻ��̵��', 24000);

--bookname�� ȥ�� �����ϴ� ���̽����� �����Ͻÿ�
update book set bookname = 'ȥ�� �����ϴ� ���̽�'
where bookid = 11;




