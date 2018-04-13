create database nhom5_QLBH
go
 
use nhom5_QLBH
go

create table customer
(
id int identity primary key,
email varchar(200),
name nvarchar(200),
gender nvarchar(5),
phone varchar(15),
address nvarchar(500),
avatar varchar(500)
)
create table purchase(
id int identity primary key,
purchase_no char(12),
customer_id int foreign key references customer (id)
)
create table category(
id int identity primary key,
name nvarchar(255),
)
create table products(
id int identity primary key,
name nvarchar(500),
price numeric(9,0),
image nvarchar(2000),
category_id int foreign key references category (id)
)
create table purchase_item(
id int identity primary key,
purchase_id int foreign key references purchase(id),
product_id int foreign key references products(id),
amount int,

)

insert into customer
values(N'Hauvtph04977@fpt.edu.vn',N'Vũ Trọng Hậu',N'Nam','0969829330','Thanh Hóa',N'http://diembaomang.com/images/vov.vn/2018_01_03/vov.vn-714621/justatee_wjve.jpg')
insert into customer
values(N'ngoclh@fpt.edu.vn',N'Lò Hồng Ngọc',N'Nam','01665789846',N'Sơn La',N'https://www.dramafever.com/st/news/images/7ae12e85-b68e-4081-8971-72248014b669.jpg')
insert into customer
values(N'thend@fpt.edu.vn',N'Nguyễn Duy Thế',N'Nam','01662934570z',N'Thái Bình',N'https://image3.tienphong.vn/w665/uploaded/huyquang/2017_10_09/3_nkyi.jpg')
insert into customer
values(N'huydq@fpt.edu.vn',N'Đoàn Quốc Huy',N'Nam','0915478654',N'Hải Phòng',N'https://tudienwiki.com/wp-content/uploads/2016/01/hoang-touliver.jpg')
insert into customer
values(N'baohpph@fpt.edu.vn',N'Hà Phương Bảo',N'Nữ','01664194111',N'Bắc Giang',N'http://s1.img.yan.vn//YanNews/2167221/201505/20150518-060824-q_520x405.jpg')
insert into customer
values(N'duclvph@fpt.edu.vn',N'Lê VIệt Đức',N'Nam','0978523009',N'Lạng SƠn',N'http://www.elvigia.net/u/fotografias/fotosnoticias/2018/1/5/353162.jpg')
insert into customer
values(N'tranglhph@fpt.edu.vn',N'Lưu Hà Trang',N'Nữ','0989100398',N'Quảng Ninh',N'http://thantuong.tv/custom/domain_1/articles/fullsize/article22782/nu-hoang-quang-cao-minh-hang-thua-1491992974-3c4X5c.jpg')
insert into customer
values(N'thuytpph@fpt.edu.vn',N'Trần Phương Thúy',N'Nữ','0989223564',N'Quảng Ninh',N'https://image.vtc.vn/files/ctv.giaoduc/2016/06/15/jun-vu-2-1410.jpg')
insert into customer
values(N'maintph@fpt.edu.vn',N'Nguyễn Thị Mai',N'Nữ','01223456987',N'Hải Dương',N'http://www.tembako.com/wp-content/uploads/2017/08/Jennie-BP.jpg')
insert into customer
values(N'sonnh@fpt.edu.vn',N'Nguyễn Hoàng Sơn',N'Nữ','0989223456',N'Hà Nội',N'https://znews-photo-td.zadn.vn/w1024/Uploaded/oqivovbt/2018_01_15/soobin_1.jpg')



insert into purchase
values('DH1',1)
insert into purchase
values('DH2',2)
insert into purchase
values('DH3',3)
insert into purchase
values('DH4',4)
insert into purchase
values('DH5',5)
insert into purchase
values('DH6',6)
insert into purchase
values('DH7',7)
insert into purchase
values('DH8',8)
insert into purchase
values('DH9',9)
insert into purchase
values('DH10',10)
insert into purchase
values('DH11',6)
insert into purchase
values('DH12',7)
insert into purchase
values('DH13',8)
insert into purchase
values('DH14',9)
insert into purchase
values('DH15',10)


insert into category
values(N'Quần áo')
insert into category
values(N'Xe cộ')
insert into category
values(N'Thể thao')
insert into category
values(N'Điện thoại')
insert into category
values( N'Gia dụng')

insert into products
values (N'Áo thun kẻ nam',300,'https://vn-live.slatic.net/v2/resize/products/102197014-96e5a9e8a0e5222ffa21e18365948cfc.jpg',1) 
insert into products
values (N' Xe máy Suzuki',50000,'https://vn-live.slatic.net/v2/resize/products/S-4611-2c038d367b49eac2828ba9aa37f4fdef.jpg',2) 
insert into products
values (N' Nhông Sên Dĩa',100,'https://vn-live.slatic.net/original/a965409f6bdb0f2d69c56426eb6878b7.jpg',2) 
insert into products
values (N'Ván Trượt',4000,'https://vn-live.slatic.net/v2/resize/products/S-27921-412384ac53ffcc909a44e98d458bdf2e.png',3) 
insert into products
values (N'Bếp nướng điện',1000,'https://vn-live.slatic.net/v2/resize/products/S-100019076-3e8fcf219ca895bd12bd42dfab88db8c.jpg',5) 
insert into products
values (N'Áo thun nữ',200,'https://vn-live.slatic.net/v2/resize/products/S-20274-e1207066eda891afd312d0d43b24aae9.jpg',1) 
insert into products
values (N' Xe máy HonDa',230000,'https://vn-live.slatic.net/v2/resize/products/102246110-dc76cf8fd152da703f2dc2213c6a1438.jpg',2) 
insert into products
values (N' Xe Liberty',70000,'https://vn-live.slatic.net/v2/resize/products/978334-c1cc0b69d1ffccde84b7596477165a6c.jpg',2) 
insert into products
values (N'ĐIện thoại IPX',28000,'https://vn-live.slatic.net/v2/resize/products/S-100068131-2795b738d4fde3405eeb5fc691e843e1.jpg',4) 
insert into products
values (N'Máy đánh trứng Philips',120,'https://vn-live.slatic.net/original/1c4cea0d1470049bdb714b8b09b9b458.jpg',5)
insert into products
values (N'Tủ Lạnh Hitachi',45000,'https://vn-live.slatic.net/v2/resize/products/101680293-0a0ed1c4b743510af5eb20238173b78b.jpg',5)
insert into products
values (N'Áo khoác jean',135,'https://vn-live.slatic.net/v2/resize/products/2419123-9d345070d1ae56a7d152454bee2902fe.jpg',1)
insert into products
values (N'Điện Thoại OPPO A39',4500,'https://vn-live.slatic.net/v2/resize/products/S-100068131-013f42ece14d0b51598df5d0b781dd81.jpg',4)
insert into products
values (N'Quần Jeans Nam bo ống',200,'https://vn-live.slatic.net/v2/resize/products/S-100012893-5538d46ccf1111d01e5350bb6be6c3fa.jpg',1)
insert into products
values (N'Con lăn tập bụng AB Wheel',250,'https://vn-live.slatic.net/v2/resize/products/S-2859-52f004a0acc13ecbd9001090e12d8052.jpg',3)
insert into products
values (N'Gậy bóng chày ',45000,'https://vn-live.slatic.net/v2/resize/products/2605161-288d79d63465736cae07f1a7a00c46e6.jpg',3)
insert into products
values (N'Xe máy điện trẻ em R1200 GS',1300,'https://img.alicdn.com/imgextra/i4/2863251585/TB2DBYdXZuYBuNkSmRyXXcA3pXa_!!2863251585.jpg',2)
insert into products
values (N'Điện thoại Bluboo S8',5500,'https://vn-live.slatic.net/original/98ed2c5a62ada5d92c1ca404d1302ef5.jpg',4)
insert into products
values (N'GIÀY CHẠY BỘ EB123',550,'https://vn-live.slatic.net/v2/resize/products/S-21058-d6a11f81a21849885aa251cd8db6edc6.jpg',3)
insert into products
values (N'Smart Tivi LED Samsung 32inch',5800,'https://vn-live.slatic.net/v2/resize/products/-86a87106528417d727cf5c140c32847b.jpg',5)
insert into products
values (N'Xe KAWASAKI Z1000 ABS ',410000,'https://vn-live.slatic.net/v2/resize/products/102246137-f078f6655e9d15ca80d46aad053cebff.jpg',2)
insert into products
values (N'Xiaomi Mi A1 32GB RAM 4GB',4700,'https://vn-live.slatic.net/v2/resize/products/-fdf6ad70ad35dbe0f49ecff07ffaa7ee.jpg',4)
insert into products
values (N'Găng Tay Phượt , Tập Gym ',55,'https://vn-live.slatic.net/original/f939e12fc94a14a5251f42d8e0e02d31.jpg',3)
insert into products
values (N'Bình lọc nước Hưng Long Magma 15L',5800,'https://vn-live.slatic.net/v2/resize/products/S-16547-9866cee79d0e54ba7948d63618ce983f.jpg',5)
insert into products
values (N'Sơ mi lụa trơn, không nhăn ',120,'https://vn-live.slatic.net/original/cfb84aad3476281ee86f24cd850e5270.jpg',1)

insert into purchase_item
values (1,1,5)
insert into purchase_item
values (2,2,1)
insert into purchase_item
values (3,3,1)
insert into purchase_item
values (4,4,2)
insert into purchase_item
values (5,5,1)
insert into purchase_item
values (6,6,5)
insert into purchase_item
values (7,7,1)
insert into purchase_item
values (8,8,1)
insert into purchase_item
values (9,9,1)
insert into purchase_item
values (10,10,1)
insert into purchase_item
values (11,11,2)
insert into purchase_item
values (12,12,2)
insert into purchase_item
values (13,13,1)
insert into purchase_item
values (14,14,1)
insert into purchase_item
values (15,15,1)
