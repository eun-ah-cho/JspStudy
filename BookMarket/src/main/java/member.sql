USE bookmarketDB;

CREATE TABLE IF NOT EXISTS member (
    id VARCHAR(20) NOT NULL PRIMARY KEY,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    birth DATE,
    mail VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200),
    regist_day DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM member;

INSERT INTO member (id, password, name, gender, birth, mail, phone, address)
VALUES ('admin', 'admin1234', '관리자', '여', '1990-01-01', 'admin@bookmarket.com', '010-0000-0000', '본사');