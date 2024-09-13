CREATE TABLE admin(
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