DELIMITER $$$
CREATE PROCEDURE ShowAddingNumber(IN iValues01 INT, IN iValues02 INT)
BEGIN
   BEGIN
      SET @Total_01 = iValues01 + iValues02 ;
      SET @Total_02 = IF(@Total_01 > 1000,'GREAT THEN 1000','< 1000') ;
	  SELECT @Total_01 , @Total_02 ;
   END ;
   BEGIN
      SET @Total_01 = ROUND((iValues01 + iValues02) * 100 * RAND(),0) ;
      SET @Total_02 = IF(@Total_01 > 1000,'GREAT THEN 1000','< 1000') ;
      SELECT @Total_01 , @Total_02 ;
   END ;
END $$$
DELIMITER ;