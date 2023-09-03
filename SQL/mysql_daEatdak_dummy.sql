use jsp_daEatdak;

insert into address (address,road_address,detail_address)
values (null,null,null);

-- 회원 테이블에 10명의 더미 데이터 삽입
INSERT INTO users (user_num, user_email, user_name, user_password, user_phone, user_roll,address_num)
VALUES
    (1, 'user1@example.com', 'User1', 'password1', 1234567890, '0',1),
    (2, 'user2@example.com', 'User2', 'password2', 2345678901, '0',1),
    (3, 'user3@example.com', 'User3', 'password3', 3456789012, '0',1),
    (4, 'user4@example.com', 'User4', 'password4', 4567890123, '0',1),
    (5, 'user5@example.com', 'User5', 'password5', 5678901234, '0',1),
    (6, 'user6@example.com', 'User6', 'password6', 6789012345, '0',1),
    (7, 'user7@example.com', 'User7', 'password7', 7890123456, '0',1),
    (8, 'user8@example.com', 'User8', 'password8', 8901234567, '0',1),
    (9, 'user9@example.com', 'User9', 'password9', 9012345678, '0',1),
    (10, 'user10@example.com', 'User10', 'password10', 1234509876, '0',1);

insert into category (category_num,category_name)
values(1,'ChickenGoods'),(2,'PigGoods'),(3,'CowGoods'),(4,'CFGoods');

-- 각 카테고리별로 10개의 더미 데이터 삽입
INSERT INTO goods (category_num, goods_name, goods_price, goods_quantity, sale_count) VALUES
(1, 'Product 1-1', 10, 100, 0),
(1, 'Product 1-2', 15, 50, 0),
(1, 'Product 1-3', 20, 75, 0),
(1, 'Product 1-4', 12, 60, 0),
(1, 'Product 1-5', 30, 40, 0),
(1, 'Product 1-6', 25, 80, 0),
(1, 'Product 1-7', 18, 90, 0),
(1, 'Product 1-8', 22, 70, 0),
(1, 'Product 1-9', 14, 85, 0),
(1, 'Product 1-10', 28, 55, 0);

INSERT INTO goods (category_num, goods_name, goods_price, goods_quantity, sale_count) VALUES
(2, 'Product 2-1', 10, 100, 0),
(2, 'Product 2-2', 15, 50, 0),
(2, 'Product 2-3', 20, 75, 0),
(2, 'Product 2-4', 12, 60, 0),
(2, 'Product 2-5', 30, 40, 0),
(2, 'Product 2-6', 25, 80, 0),
(2, 'Product 2-7', 18, 90, 0),
(2, 'Product 2-8', 22, 70, 0),
(2, 'Product 2-9', 14, 85, 0),
(2, 'Product 2-10', 28, 55, 0);

INSERT INTO goods (category_num, goods_name, goods_price, goods_quantity, sale_count) VALUES
(3, 'Product 3-1', 10, 100, 0),
(3, 'Product 3-2', 15, 50, 0),
(3, 'Product 3-3', 20, 75, 0),
(3, 'Product 3-4', 12, 60, 0),
(3, 'Product 3-5', 30, 40, 0),
(3, 'Product 3-6', 25, 80, 0),
(3, 'Product 3-7', 18, 90, 0),
(3, 'Product 3-8', 22, 70, 0),
(3, 'Product 3-9', 14, 85, 0),
(3, 'Product 3-10', 28, 55, 0);

INSERT INTO goods (category_num, goods_name, goods_price, goods_quantity, sale_count) VALUES
(4, 'Product 4-1', 10, 100, 0),
(4, 'Product 4-2', 15, 50, 0),
(4, 'Product 4-3', 20, 75, 0),
(4, 'Product 4-4', 12, 60, 0),
(4, 'Product 4-5', 30, 40, 0),
(4, 'Product 4-6', 25, 80, 0),
(4, 'Product 4-7', 18, 90, 0),
(4, 'Product 4-8', 22, 70, 0),
(4, 'Product 4-9', 14, 85, 0),
(4, 'Product 4-10', 28, 55, 0);

SELECT * FROM goods;

insert into image (goods_num, goods_img, goods_detail_img1, goods_detail_img2, goods_detail_img3, goods_detail_img4, goods_detail_img5)
			value(1,'resources/goods/img/Chicken/1/1.png','resources/goods/img/Chicken/1/2.png',null,null,null,null);

insert into image (goods_num, goods_img, goods_detail_img1, goods_detail_img2, goods_detail_img3, goods_detail_img4, goods_detail_img5)
			value(11,'resources/goods/img/Pig/1/1.png','resources/goods/img/Pig/1/2.jpg',
				'resources/goods/img/Pig/1/3.jpg','resources/goods/img/Pig/1/4.jpg','resources/goods/img/Pig/1/5.jpg',null);
		
insert into image (goods_num, goods_img, goods_detail_img1, goods_detail_img2, goods_detail_img3, goods_detail_img4, goods_detail_img5)
			value(21,'resources/goods/img/Cow/1/1.png','resources/goods/img/Cow/1/2.jpg','resources/goods/img/Cow/1/3.jpg','resources/goods/img/Cow/1/4.jpg',null,null);	
		
insert into image (goods_num, goods_img, goods_detail_img1, goods_detail_img2, goods_detail_img3, goods_detail_img4, goods_detail_img5)
			value(31,'resources/goods/img/CF/1/1.png','resources/goods/img/CF/1/2.jpg','resources/goods/img/CF/1/3.jpg',
					'resources/goods/img/CF/1/4.jpg',null,null);	
		
select * from image;


select * from goods where category_num = 1;

drop table image;





