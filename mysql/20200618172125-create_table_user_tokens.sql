
-- +migrate Up
CREATE TABLE IF NOT EXISTS user_tokens (
    id int(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id int(6) UNSIGNED NOT NULL,
    token text NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id)
        REFERENCES user (id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);
-- +migrate Down
DROP TABLE IF EXISTS user_tokens;