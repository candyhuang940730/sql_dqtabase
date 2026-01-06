DELIMITER $$$
CREATE PROCEDURE ShowParameterValues(
    IN iValues1 INT ,
    OUT sValues2 VARCHAR(100) ,
    INOUT dValues3 DateTime)
BEGIN
   SET iValues1 = iValues1 + ROUND(RAND() * 999,0) ;
   SET sValues2 = "Passing By Reference Parameter" ;
   SET dValues3 = DATE_ADD(dValues3 , INTERVAL 12 HOUR) ;
   SELECT iValues1 AS Parameter1 ,
          sValues2 AS Parameter2 ,
		  dValues3 AS Parameter3 ;
END $$$
DELIMITER ;