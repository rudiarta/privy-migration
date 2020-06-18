
-- +migrate Up
ALTER TABLE user_balance
ADD created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE user_balance_history
ADD created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
-- +migrate Down
ALTER TABLE user_balance
DROP COLUMN created_at;
ALTER TABLE user_balance_history
DROP COLUMN created_at;
