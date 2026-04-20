CREATE TABLE Admin( 
Admin_id INT PRIMARY KEY, 
Admin_name VARCHAR(15) NOT NULL, 
Admin_password VARCHAR(16) NOT NULL 
);

INSERT INTO Admin VALUES (1,'Team-MEM','MEM@123');


CREATE TABLE customer( 
customer_id INT PRIMARY KEY, 
customer_firstname VARCHAR(30) NOT NULL, 
customer_lastname VARCHAR(30) NOT NULL, 
customer_password VARCHAR(16) NOT NULL, 
customer_phoneno VARCHAR(15) NOT NULL, 
customer_address VARCHAR(100) NOT NULL, 
customer_email VARCHAR(40) NOT NULL, 
Admin_id INT,
FOREIGN KEY (Admin_id) REFERENCES Admin(Admin_id)
);

INSERT INTO customer VALUES 
(101,'Harsh','Mehta','harsh@123','7435068222','1st Cross,Rammurthy nagar,Bangalore','harsh19@gmail.com',1),
(102,'Jainam','Shah','Jainu@123','9924567892','117, Examiner Road, Fort,Mumbai, Maharashtra','1ainam33@gmail.com1',1),
(103,'Aman','Pandya','Aman@123','7834578923','L 69 Sector 11,Delhi,Uttar Pradesh- 201301','aman@gmail.com',1),
(104,'Heer','Madia','Her@123','8902345789','Bee H-138, Kodambakkam Road,Chennai, Tamil Nadu','heer1723@gmail.com',1),
(105,'Akanksha','Yadav','Akayad@123','9934654001','295 AjRoad:10, West Hydrebad, Andhra Pradesh','akuu@gmail.com',1),
(106,'Karan','Punjabi','karpun@123','9934688001','Nirmal House Opp Jain Mandir,Jalandhar,Punjab','karan12@gmail.com',1),
(107,'Divya','Mulchandanr','divmul@123','9874688001','A/3, Tejpal Indl Estate,Andheri (west),Maharashtra','div3421@gmail.com',1),
(108,'Celia','Anthony','Celia@123','7834654881','134,14,Nagarathpet Main Road,Banglore,Karnataka','Celia44@gmail.com',1),
(109,'Johnson','Thomas','Jthomas@123','9931888912','A/108 Paldi,Ahmeadabad,Gujrat','1thomas550@gmail.com',1),
(110,'Dhara','Mohan','BhatrDhara@1231','9875678001','66 Sector 24 Mujessar,Ram Colony,Delhi,Haryana','dbhatt45@gmail.com',1);


CREATE TABLE restaurant( 
restaurant_id INT PRIMARY KEY,
Admin_id INT,
restaurant_name VARCHAR(40) NOT NULL, 
restaurant_address VARCHAR(100) NOT NULL, 
restaurant_password VARCHAR(16) NOT NULL, 
restaurant_phoneno VARCHAR(15) NOT NULL,
FOREIGN KEY (Admin_id) REFERENCES Admin(Admin_id)
);

INSERT INTO restaurant VALUES
(111,1,'Hot chilly','66,Residency Rd. Bengaluru, Karnataka','hc@111','8066604545'),
(112,1,'Hatch','F-30,Sampige Rd,Bengaluru,Karnataka','Hat@112','8762203148'),
(113,1,'Spice Terrace','24,Ashok nagar , ludhiana ,Punjab','Spi@113','8067189999'),
(114,1,'Yay Mumbar','Raheja Tower, Bandra East, Mumbai,Maharashtra','Yay@l14','9222222800'),
(115,1,'UmniraoX','7-215 Andheri east,Maharashtra','Umn@123','9773817937'),
(116,1,'Sowento','Level-8, Connaught Place, New Delhi, Delhi','Sow@l16','1141191040'),
(117,1,'Taj Hotel','154 Khan Market, India Gate, New Delhi. Delhi','tajr@117','1166566162'),
(118,1,'Anna Restaurant','Spur Tank road. Chennai, Tamil Nadu','Anna@118','4428368333'),
(119,1,'Rajwadii','Behind uth-Temple, Ahmedabad, Gujarat','Raj@119','7926643839'),
(120,1,'Kobe sizzler','Vasna Rd. Wake.Society.Nagar Himachal pradesh','Kobe@120','8889323457');


CREATE TABLE category( 
category_id INT PRIMARY KEY, 
category_name VARCHAR(20) NOT NULL, 
restaurant_id INT,
FOREIGN KEY (restaurant_id) REFERENCES restaurant(restaurant_id)
);

INSERT INTO category VALUES 
(201,'SOUTH-INDIAN',112),
(202,'NORTH-INDIAN',111),
(203,'ITALIAN',115),
(204,'CHINESE',113),
(205,'KATHIAWADI',114),
(206,'SNACKS',118),
(207,'BEVERAGES',119),
(208,'DESSERTS',120),
(209,'ALL',116),
(210,'CONTINENTAL',117);


CREATE TABLE Menu_items( 
item_code INT PRIMARY KEY, 
item_name VARCHAR(40) NOT NULL, 
Price INT NOT NULL, 
category_id INT,
FOREIGN KEY (category_id) REFERENCES category(category_id)
);

INSERT INTO Menu_items VALUES
(301,'White Pasta',230,203),
(302,'Arabita Pasta',200,203),
(303,'Magherita pizza',400,203),
(304,'gotala dosa',300,201),
(305,'uttampam',115,201),
(306,'idli-sambhar',120,201),
(307,'aloo-cheese paratha',120,202),
(308,'Paneer pasanda',250,202),
(309,'chole kulche',100,202),
(310,'Dry manchrian',200,204),
(311,'CHINESE BHEL',150,204),
(312,'Fried rice',210,204),
(313,'lasaniya bataka',250,205),
(314,'rigan no olo',300,205),
(315,'sev tameta nu shaak',220,205),
(316,'waffle',220,208),
(317,'chocolate brownie',115,208),
(318,'pancakes',120,208),
(319,'burger',55,206),
(320,'french fries',100,206),
(321,'muskabun',25,206),
(322,'peach mojito',180,207),
(323,'hazlenut coffee',135,207),
(324,'kewi juice',90,207),
(325,'French toast',100,210),
(326,'Pancakes',180,209),
(327,'Steaks',335,210);


CREATE TABLE Payment_details( 
payment_id INT PRIMARY KEY, 
payment_mode VARCHAR(15) NOT NULL, 
payment_timestamp DATETIME NOT NULL
);

INSERT INTO Payment_details VALUES 
(501,'Online','2022-01-15 11:12:33'),
(502,'COD','2022-02-11 09:06:30'),
(503,'CARD','2022-06-22 01:10:22'),
(504,'COD','2021-04-02 05:12:03'),
(506,'COD','2021-07-27 01:13:13'),
(507,'CARD','2022-05-09 09:08:48'),
(508,'COD','2021-12-28 10:07:53'),
(509,'Online','2022-03-05 07:17:37'),
(510,'CARD','2022-01-16 09:19:22');
