create database jsp_daEatdak;
use jsp_daEatdak;

-- 회원 테이블에 10명의 더미 데이터 삽입
INSERT INTO users (user_email, user_name, user_password, user_phone)
VALUES
    ('user1@example.com', 'User 1', 'password1', '123-456-7890'),
    ('user2@example.com', 'User 2', 'password2', '987-654-3210'),
    ('user3@example.com', 'User 3', 'password3', '555-555-5555'),
    ('user4@example.com', 'User 4', 'password4', NULL), -- user_phone에 NULL 값
    ('user5@example.com', 'User 5', 'password5', '111-222-3333'),
    ('user6@example.com', 'User 6', 'password6', '444-555-6666'),
    ('user7@example.com', 'User 7', 'password7', '777-888-9999'),
    ('user8@example.com', 'User 8', 'password8', '123-456-7890'),
    ('user9@example.com', 'User 9', 'password9', '987-654-3210'),
    ('user10@example.com', 'User 10', 'password10', '555-555-5555');

INSERT INTO users (user_email, user_name, user_password, user_phone,user_roll)
values ('zriag@naver.com','김성찬','1111','010-7192-1375',1);

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

select * from cart;

INSERT INTO cart_item (cart_num, goods_num)
SELECT c.cart_num, :goodsNum
FROM cart c
LEFT JOIN cart_item ci ON c.cart_num = ci.cart_num AND ci.goods_num = :goodsNum
WHERE c.user_num = :userNum
AND ci.cart_item_num IS NULL;
select * from cart;
select * from cart_item where cart_num =1;

SELECT g.*
FROM cart_item ci
INNER JOIN goods g ON ci.goods_num = g.goods_num
WHERE ci.cart_num = 1;

