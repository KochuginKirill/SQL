DROP FUNCTION IF EXISTS count_even;
DELIMITER $$
CREATE FUNCTION count_even(border_limit INT)
RETURNS VARCHAR(100) READS SQL DATA
BEGIN
	DECLARE start_number INT DEFAULT 2;
    DECLARE result VARCHAR(100) DEFAULT '';
	WHILE start_number <= border_limit DO
		SET result = CONCAT(result, ' ', start_number);
        SET start_number = start_number + 2;
    END WHILE;
    return result;
END$$
DELIMITER ;
SELECT count_even(10) AS 'count_even';