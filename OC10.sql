DBCC CHECKIDENT ('Customers',RESEED,0)


insert into Customers
values('Frank Garcia','fg@yahoo.com','Pardo, Cebu City')
insert into Customers
values('Niño Monta','nm123@yahoo.com',	'Talisay City, Cebu')
insert into Customers
values('Jun Mar Lemosnero','jml69@gmail.com','Tuyabang, Oroquieta City')
insert into Customers
values('Jesus Villaceran','omegazigma@gmail.com','Consolacion, Cebu')
insert into Customers
values('Rose Ygot','Rosywhite@gmail.com','Lapu-lapu City, Cebu')
insert into Customers
values('Roger Intong','rogint@gmail.com','Tanjay, Negros Occ.')


insert into Orders 
(order_id,order_add,cus_id)
values(1,'Pardo, Cebu City',1)
insert into Orders 
(order_id,order_add,cus_id)
values(2,'Talisay City, Cebu',	3)
insert into Orders 
(order_id,order_add,cus_id)
values(3,'Oroquieta City',	2)
insert into Orders 
(order_id,order_add,cus_id)
values(4,'Consolacion, Cebu',	4)
insert into Orders 
(order_id,order_add,cus_id)
values(5,'Lapu-lapu City, Cebu',	5)
insert into Orders 
(order_id,order_add,cus_id)
values(6,'Tanjay, Negros Occ.',	6)



select r.review_rate, r.review_com,i.item_title from Review r
inner join items i on i.item_id = r.[item.id]
inner join OrderDetails od on od.item_id = i.item_id
inner join Orders o on o.order_id = od.order_id


select i.item_title as Title,r.review_rate as Rating,r.review_com as Comment,c.cus_name as c_name from Review r
inner join OrderDetails od on od.item_id = r.[item.id]
inner join Orders o on o.order_id = od.order_id
inner join items i on i.item_id = od.item_id
inner join Customers c on c.cus_id = o.order_id

select c.cus_name as c_name, o.order_date as o_date, o.order_add as ship_address from Customers c
inner join Orders o on o.cus_id = c.cus_id


select i.item_title as title, od.od_qty as [Quantity Ordered], o.order_date as [Date Ordered] from Orders o
inner join OrderDetails od on od.order_id = o.order_id
right outer join items i on i.item_id = od.item_id
where od.od_qty is not null or o.order_date is not null




