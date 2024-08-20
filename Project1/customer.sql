-- 회원 정보
CREATE TABLE mem_info (
    mem_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(13)
);

INSERT INTO mem_info (id, password, name, phone) VALUES('test1', '1234', 'user', '01012345678');
DROP TABLE mem_info;
SELECT id, password, name, CONCAT(SUBSTR(phone, 1, 3), '-', SUBSTR(phone, 4, 4), '-', SUBSTR(phone, 8, 4)) AS phone
FROM mem_info;


-- 지불금액
CREATE TABLE pmt_amt (
    pmt_amt_code INT PRIMARY KEY AUTO_INCREMENT,
    accom VARCHAR(50),
    meal VARCHAR(20),
    goods VARCHAR(50),
    ticket VARCHAR(50),
    sum_price INT,
    mem_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);


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
    location VARCHAR(100),
    theme_phone VARCHAR(13)
);

-- 기념품
CREATE TABLE goods (
    goods_code INT PRIMARY KEY AUTO_INCREMENT,
    goods VARCHAR(50),
    pmt_amt_code INT,
    FOREIGN KEY (theme_code) REFERENCES theme_park (theme_code)
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

-- 리뷰 (평점)
CREATE TABLE review (
    review_code INT PRIMARY KEY AUTO_INCREMENT,
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    package_review VARCHAR(100),
    mem_code INT,
    pmt_amt_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code),
    FOREIGN KEY (pmt_amt_code) REFERENCES pmt_amt (pmt_amt_code)
);

-- 질문게시판
CREATE TABLE question_table (
    question_code INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    qna VARCHAR(100),
    mem_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

-- 숙소
CREATE TABLE accom (
    accom_code INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(15),
    location VARCHAR(70),
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    headcount INT,
    price INT,
    name_of_accom VARCHAR(70)
);

-- 숙소 즐겨찾기
CREATE TABLE accom_favorites (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL, 
    accom_id INT NOT NULL,
    date_added DATETIME DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (accom_id) REFERENCES accom(accom_code)
);
