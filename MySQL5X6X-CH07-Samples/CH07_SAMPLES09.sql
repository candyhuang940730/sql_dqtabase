DELIMITER $$$
CREATE PROCEDURE ChangeVariableDataType()
BEGIN
  SET @intNumber_TOTAL = FLOOR(RAND() * PI() * 1000) ;
  SELECT @intNumber_TOTAL ;
  SET @intNumber_TOTAL = 'THIS IS A STRING CHANGE ' ;
  SELECT @intNumber_TOTAL ;
END $$$
DELIMITER ;