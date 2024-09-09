INSERT INTO mem_info (id, password, name, phone) VALUES('test1', '1234', 'user', '01012345678');
SELECT id, password, name, CONCAT(SUBSTR(phone, 1, 3), '-', SUBSTR(phone, 4, 4), '-', SUBSTR(phone, 8, 4)) AS phone
FROM mem_info;
INSERT INTO mem_info (id, password, name, phone)
VALUES ('test1','1234','user1','01012345678');
-- 식당, 숙소 리뷰를 받는데 따로 받지않고 한번에 받는 리뷰 기능? 
-- 한번에 받으려면 xml에도 테이블을 조인해서 select를 받는다면 resultmap association도 추가하여 
-- resultmap을 받는다?

SET foreign_key_checks = 0;

DROP TABLE mem_info;
DROP TABLE accom;
DROP TABLE accom_reservation;
DROP TABLE review;

-- 회원 정보
CREATE TABLE mem_info (
    mem_code INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    id VARCHAR(255) NOT NULL UNIQUE,            
    password VARCHAR(255) NOT NULL,           
    name VARCHAR(255) NOT NULL,            
    phone VARCHAR(255) NOT NULL,  
    email VARCHAR(255) NOT NULL
);
SELECT * FROM mem_info;
SELECT * FROM mem_info WHERE id = 'test';
INSERT INTO mem_info (id, password, name, phone, email) 
VALUES('qwer1234','1234','user','01012345678','test1234@naver.com');
-- 관광지
CREATE TABLE theme_park (
    theme_code INT PRIMARY KEY AUTO_INCREMENT,
    theme_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    theme_phone VARCHAR(255)
);
SELECT * FROM review;
-- 굿즈
CREATE TABLE goods (
    goods_code INT PRIMARY KEY AUTO_INCREMENT,
    goods_name VARCHAR(255) NOT NULL, 
    price DECIMAL(10, 2) NOT NULL, 
    stock INT DEFAULT 0, 
    description TEXT, 
    category VARCHAR(255), 
    theme_code INT, 
    mem_code INT, 
    FOREIGN KEY (theme_code) REFERENCES theme_park(theme_code),
    FOREIGN KEY (mem_code) REFERENCES mem_info(mem_code)
);

-- 경기장
CREATE TABLE stadium (
    stadium_code INT PRIMARY KEY AUTO_INCREMENT,
    stadium_event VARCHAR(255),
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    price INT,
    game VARCHAR(255),
    stadium_name VARCHAR(255),
    location VARCHAR(255)
);

-- 경기장 예약
CREATE TABLE stadium_reservation (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,         
    stadium_code INT NOT NULL,
    stadium_name VARCHAR(255),
    start_date DATE, 
    end_date DATE,
    seats INT NOT NULL,               -- 예약 인원 수
    FOREIGN KEY (mem_code) REFERENCES mem_info(mem_code),
    FOREIGN KEY (stadium_code) REFERENCES stadium (stadium_code)
);
SELECT * FROM stadium_reservation;
DROP TABLE stadium_reservation;
INSERT INTO accom_reservation (mem_id, accom_code, start_date, end_date, seats)
VALUES ('1','1','20240726','20240811','2');
-- 식당
CREATE TABLE rest (
    rest_code INT PRIMARY KEY AUTO_INCREMENT,
    rest_name VARCHAR(255),
    rest_location VARCHAR(255),
    rest_phone VARCHAR(255),
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    seats INT
);

-- 식당 식사 기록
CREATE TABLE meal_history (
	history_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_code INT NOT NULL,            
    rest_code INT NOT NULL,           
    menu_name VARCHAR(255),           
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (mem_code) REFERENCES mem_info(mem_code),
    FOREIGN KEY (rest_code) REFERENCES rest(rest_code)
);

-- 숙소
CREATE TABLE accom (
    accom_code INT PRIMARY KEY AUTO_INCREMENT,
    accom_name VARCHAR(255),
    accom_phone VARCHAR(255),
    location VARCHAR(255),
    price INT
);
INSERT INTO accom (accom_name,accom_phone,location,price) VALUES ('숙소','01012345678','서울','9999');
SELECT * FROM mem_info WHERE mem_code = '1';
SELECT * FROM accom WHERE accom_code = '1';

-- 숙소 예약
CREATE TABLE accom_reservation (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_code INT,         
    accom_code INT,
    accom_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    seats INT NOT NULL,               -- 예약 인원 수
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code),
    FOREIGN KEY (accom_code) REFERENCES accom (accom_code)
);
DROP TABLE accom_reservation;
SET foreign_key_checks = 1;
INSERT INTO accom_reservation (mem_code, accom_code, accom_name, start_date, end_date, seats)
VALUES ('1','1','르 르믹스 호텔','20240528','20241113','5');
SELECT * FROM accom_reservation;
SELECT r.mem_code, r.accom_name, r.start_date,r.end_date,r.seats
FROM accom_reservation r;
SELECT 
   		r.accom_name AS accomName, 
   		r.start_date AS startDate, 
   		r.end_date AS endDate, 
   		r.seats AS seats
		FROM accom_reservation r
		JOIN mem_info m ON r.mem_code = m.mem_code
		WHERE m.mem_code = 1;
        
SELECT * FROM mem_info WHERE mem_code = '1';

-- 리뷰
CREATE TABLE review (
    review_id BIGINT PRIMARY KEY AUTO_INCREMENT, 
    mem_code INT NOT NULL,
    title VARCHAR(255), 
    entity_type VARCHAR(255) NOT NULL,          
    entity_id INT,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5), 
    review_text TEXT,
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX entity_index (entity_type, entity_id),
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);
SELECT * FROM review WHERE entity_type = '1' AND entity_id = 1;
SELECT AVG(rating) FROM review WHERE entity_type = '1' AND entity_id = 1;

DROP TABLE review;
SELECT * FROM review;
SELECT * FROM mem_info;

DELETE FROM review WHERE review_id = '11';

-- 업체 (경기장, 숙소, 식당) <-- 구분할 컬럼 하나만 추가!
CREATE TABLE company (
    com_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(50),
    com_password VARCHAR(50),
    com_name VARCHAR(50),
    com_phone VARCHAR(13),
    com_type VARCHAR(20) -- 경기장, 숙소, 식당
);
-- SELECT를 사용한다고 했을 때 --> 경기장 업체들만 가지고 오고 싶을 수도 있죠
SELECT * FROM company
WHERE com_type = "숙소";
INSERT INTO company (com_id, com_password, com_name, com_phone, com_type)
VALUES ('com1', '1234', 'comname', '01012345678', '숙소');

-- 관리자
CREATE TABLE admin (
ad_code INT PRIMARY KEY AUTO_INCREMENT,
ad_id VARCHAR(255),
ad_password VARCHAR(255),
ad_name VARCHAR(255),
ad_phone VARCHAR(255),
ad_role VARCHAR(255)
);

SELECT * FROM admin;
DROP TABLE admin;
SET foreign_key_checks = 1;