CREATE PROCEDURE usp_get_holders_with_balance_higher_than(number DECIMAL(10, 4))
BEGIN
    SELECT ac.first_name, ac.last_name
    FROM account_holders ac
             JOIN accounts a ON ac.id = a.account_holder_id
    WHERE number < (SELECT SUM(balance)
                    FROM accounts
                    WHERE account_holder_id = ac.id
                    GROUP BY account_holder_id)
    GROUP BY ac.id
    ORDER BY ac.id;
END;

CALL usp_get_holders_with_balance_higher_than(7000);