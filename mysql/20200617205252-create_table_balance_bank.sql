
-- +migrate Up
CREATE TABLE IF NOT EXISTS balance_bank (
    id int(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    balance int(6) NOT NULL,
    balance_achieve int(6) NOT NULL,
    code varchar(150) NOT NULL,
    enable boolean NOT NULL default false
);
-- +migrate Down
DROP TABLE IF EXISTS balance_bank;