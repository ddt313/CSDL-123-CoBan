--Liệt kê sname có status>50
select sname from s where status > 20;
 

--Liệt kê sname, status
select sname, status from s;
 

--Truy vấn có sử dụng các toán tử liên quan tập hợp: INTERSECT, EXCEPT, UNION
--Liệt kê s# cung ứng đồng thời 2 mặt hàng p1 và p2.
(select s# from sp where p#='p1') intersect (select s# from sp where p#='p2');
 

--Liệt kê s# chưa cung ứng mặt hàng nào.
(select s# from s) except (select s# from sp);
 

--Liệt kê s# cung ứng p1 hoặc p2
--cach 1:
select distinct s# from sp where p#='p1' or p#='p2';
--cach 2:
(select s# from sp where p#='p1') union (select s# from sp where p#='p2');

--Truy vấn sử dụng toán từ LIKE, IN, BETWEEN,...
--Liệt kê danh sách hãng cung ứng có sname với ký tự đầu là 's'
select sname from s where sname like '%a%';
 

--Liệt s# cung ứng một trong các mặt hàng 'p1','p2' hoặc 'p4'
select distinct s# from sp where p# in ('p1', 'p2', 'p3');
 

--Liệt kê s# cung ứng mặt hàng có qty>=70 và qty<=100
select distinct s# from sp where qty between 100 and 200;