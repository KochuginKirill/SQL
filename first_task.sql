USE dz_final;
DROP FUNCTION IF EXISTS seconds_to_time;
DELIMITER $$
CREATE FUNCTION seconds_to_time(time_now BIGINT)
RETURNS VARCHAR(100) READS SQL DATA
BEGIN
	DECLARE time_format VARCHAR(100);
	DECLARE days BIGINT;
    DECLARE hours BIGINT;
    DECLARE minutes BIGINT;
    DECLARE seconds BIGINT;
    DECLARE temp BIGINT;
    SET days = time_now DIV 86400;
    SET temp = time_now % 86400;
    SET hours = temp DIV 3600;
    SET temp = temp % 3600;
    SET minutes = temp DIV 60;
    SET seconds = temp % 60;
    SET time_format = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds ');
	RETURN time_format;
END$$
DELIMITER ;
SELECT seconds_to_time(3423423) AS 'seconds_to_time';