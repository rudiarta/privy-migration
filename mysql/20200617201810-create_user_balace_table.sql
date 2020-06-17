
-- +migrate Up
CREATE TABLE IF NOT EXISTS user_balance (
    id int(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id int(6) UNSIGNED NOT NULL,
    balance int DEFAULT 0,
    balance_achieve int DEFAULT 0,
    FOREIGN KEY (user_id)
        REFERENCES user (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
-- +migrate Down
DROP TABLE IF EXISTS user_balance;
