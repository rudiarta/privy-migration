
-- +migrate Up
CREATE TABLE IF NOT EXISTS balance_bank_history (
    id int(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    balance_bank_id int(6) UNSIGNED,
    balance_before int(6) NOT NULL,
    balance_after int(6) NOT NULL,
    activity text NULL,
    type enum ('credit','debit') NOT NULL,
    ip varchar(50) NULL,
    location text NULL,
    user_agent varchar(150) NULL,
    author varchar(150) NULL,
    FOREIGN KEY (balance_bank_id)
        REFERENCES balance_bank (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
-- +migrate Down
DROP TABLE IF EXISTS balance_bank_history;