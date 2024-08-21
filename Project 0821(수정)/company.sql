-- 경기장업체
CREATE TABLE com_stadium (
    com_stadium_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(50),
    com_password VARCHAR(50),
    com_name VARCHAR(50),
    com_phone VARCHAR(13)
);

-- 숙소업체
CREATE TABLE com_accom (
    com_accom_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(50),
    com_password VARCHAR(50),
    com_name VARCHAR(50),
    com_phone VARCHAR(13)
);

-- 식당업체
CREATE TABLE com_rest (
    com_rest_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(50),
    com_password VARCHAR(50),
    com_name VARCHAR(50),
    com_phone VARCHAR(13)
);

