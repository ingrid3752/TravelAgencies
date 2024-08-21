-- 회원 정보
CREATE TABLE mem_info (
    mem_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(13),
    date_registered DATETIME DEFAULT CURRENT_TIMESTAMP
);
-- 
-- 회원 구매목록
CREATE TABLE mem_purchases (
    purchase_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,              -- 사용자 ID
    goods_code INT NOT NULL,           -- 구매한 상품 코드
    theme_code INT NOT NULL,           -- 테마파크 코드 (구매한 상품의 테마와 연결)
    purchase_date DATETIME NOT NULL,   -- 구매 날짜
    FOREIGN KEY (goods_code) REFERENCES goods(goods_code),
    FOREIGN KEY (mem_id) REFERENCES members (mem_id)
);

INSERT INTO mem_info (id, password, name, phone) VALUES('test1', '1234', 'user', '01012345678');
DROP TABLE mem_info;
SELECT id, password, name, CONCAT(SUBSTR(phone, 1, 3), '-', SUBSTR(phone, 4, 4), '-', SUBSTR(phone, 8, 4)) AS phone
FROM mem_info;

-- 경기장
CREATE TABLE stadium (
    stadium_code INT PRIMARY KEY AUTO_INCREMENT,
    stadium_event VARCHAR(20),
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    price INT,
    game VARCHAR(20)
);

-- 관광지
CREATE TABLE theme_park (
    theme_code INT PRIMARY KEY AUTO_INCREMENT,
    theme_name VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL,
    theme_phone VARCHAR(13)
);

-- 굿즈
CREATE TABLE goods (
    goods_code INT PRIMARY KEY AUTO_INCREMENT,
    goods_name VARCHAR(50) NOT NULL, -- 상품 이름
    price DECIMAL(10, 2) NOT NULL, -- 상품 가격
    stock INT DEFAULT 0, -- 재고량
    description TEXT, -- 상품 설명
    category VARCHAR(50), -- 상품 카테고리
    theme_code INT, -- 테마파크 코드
    mem_code INT, -- 회원 코드 (추가된 컬럼)
    FOREIGN KEY (theme_code) REFERENCES theme_park(theme_code),
    FOREIGN KEY (mem_code) REFERENCES mem_info(mem_code)
);

-- 식당
CREATE TABLE rest (
    rest_code INT PRIMARY KEY AUTO_INCREMENT,
    rest_name VARCHAR(20),
    rest_location VARCHAR(100),
    rest_phone VARCHAR(13),
    avg_price INT,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    people INT,
    amount INT
);

-- 식당 예약
CREATE TABLE rest_reservation (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,         
    rest_code INT NOT NULL,          
    reservation_date DATETIME NOT NULL, 
    seats INT NOT NULL,               -- 예약 인원 수
    requests TEXT,                    -- 추가 요청 사항
    FOREIGN KEY (mem_id) REFERENCES mem_info(mem_code),
    FOREIGN KEY (rest_code) REFERENCES rest(rest_code)
);

-- 숙소
CREATE TABLE accom (
    accom_code INT PRIMARY KEY AUTO_INCREMENT,
    accom_phone VARCHAR(15),
    location VARCHAR(70),
    accom_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    head_count INT,
    price INT,
    accom_name VARCHAR(70)
);

-- 숙소 즐겨찾기
CREATE TABLE accom_favorites (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL, 
    accom_id INT NOT NULL,
    date_added DATETIME DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (accom_id) REFERENCES accom(accom_code)
);

-- 숙소 예약
CREATE TABLE accom_reservation (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,         
    accom_code INT NOT NULL,          
    reservation_date DATETIME NOT NULL, 
    seats INT NOT NULL,               -- 예약 인원 수
    requests TEXT,                    -- 추가 요청 사항
    FOREIGN KEY (mem_id) REFERENCES mem_info (mem_code),
    FOREIGN KEY (accom_code) REFERENCES accom (accom_code)
);


-- 리뷰 (평점)
CREATE TABLE review (
    review_code INT PRIMARY KEY AUTO_INCREMENT,
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    package_review VARCHAR(100),
    mem_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

-- 질문게시판
CREATE TABLE question_table (
    question_code INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    qna VARCHAR(100),
    mem_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

