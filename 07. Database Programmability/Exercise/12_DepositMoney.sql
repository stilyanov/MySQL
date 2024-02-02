CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(19, 4))
BEGIN
    IF money_amount > 0 THEN
        START TRANSACTION;
        UPDATE accounts
        SET balance = balance + money_amount
        WHERE id = account_id;

        IF EXISTS(SELECT id
                  FROM accounts
                  WHERE id = account_id) THEN
            COMMIT;
        ELSE
            ROLLBACK;
        END IF;
    END IF;
END;

CALL usp_deposit_money(1, 10);
DROP PROCEDURE usp_deposit_money;