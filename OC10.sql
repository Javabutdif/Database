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