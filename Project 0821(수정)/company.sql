-- 업체 (경기장, 숙소, 식당) <-- 구분할 컬럼 하나만 추가!
CREATE TABLE company (
    com_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(50),
    com_password VARCHAR(50),
    com_name VARCHAR(50),
    com_phone VARCHAR(13)-- ,
--     com_type VARCHAR(20) -- 경기장, 숙소, 식당 
);
