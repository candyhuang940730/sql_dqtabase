DELIMITER $$$
CREATE FUNCTION ProessPlusNumberValues(
       p_iValuesStart INT , p_iValuesEnd INT)
RETURNS INT
BEGIN
   DECLARE iAddTotalValues INT DEFAULT 0 ;
   WHILE (p_iValuesStart <= p_iValuesEnd ) DO
      SET iAddTotalValues =
          iAddTotalValues + p_iValuesStart ;
      SET p_iValuesStart = p_iValuesStart + 1 ;
   END WHILE ;
   RETURN iAddTotalValues ;
END $$$
DELIMITER ;