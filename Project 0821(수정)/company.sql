-- 업체 (경기장, 숙소, 식당) <-- 구분할 컬럼 하나만 추가!
CREATE TABLE company (
    com_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(255),
    com_password VARCHAR(255),
    com_name VARCHAR(255),
    com_phone VARCHAR(255),
    com_role VARCHAR(255),
    com_type VARCHAR(255) -- 경기장, 숙소, 식당
);
-- SELECT를 사용한다고 했을 때 --> 경기장 업체들만 가지고 오고 싶을 수도 있죠
SELECT * FROM company
WHERE com_type = "숙소";
INSERT INTO company (com_id, com_password, com_name, com_phone, com_type)
VALUES ('com1', '1234', 'comname', '01012345678', '숙소');


SET foreign_key_checks = 1;
DROP TABLE company;