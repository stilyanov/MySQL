CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
    RETURNS INT
    NOT DETERMINISTIC
    READS SQL DATA
BEGIN
    DECLARE result INT;
    SET result := (SELECT word REGEXP (CONCAT('^[', set_of_letters, ']+$')));
    RETURN result;
END;

SELECT ufn_is_word_comprised('pppp', 'Guy');