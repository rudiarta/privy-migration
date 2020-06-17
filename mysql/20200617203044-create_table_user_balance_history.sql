
-- +migrate Up
CREATE TABLE IF NOT EXISTS user_balance_history (
    id int(6) unsigned AUTO_INCREMENT PRIMARY KEY,
    user_balance_id int(6) UNSIGNED NOT NULL,
    balance_before int(6) NOT NULL,
    balance_after int(6) NOT NULL,
    activity text NULL,
    type ENUM('credit','debit') NOT NULL,
    ip varchar(50) NULL,
    location text NULL,
    user_agent text NULL,
    author varchar(100) NULL,
    FOREIGN KEY (user_balance_id)
        REFERENCES user_balance (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
-- +migrate Down
DROP TABLE IF EXISTS user_balance_history;