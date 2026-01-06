DELIMITER $$$ 
CREATE PROCEDURE DynamicAddingNumber (
    IN iValues1 INT , 
    IN iValues2 INT , 
    OUT iTotalResult INT)
BEGIN
  BEGIN
    SET iTotalResult = 0 ;
    AddingNumberLoopLabel: LOOP
      SET iTotalResult = iTotalResult + iValues1 ;
      IF iValues1 >= iValues2 THEN
         LEAVE  AddingNumberLoopLabel ;
      ELSE
         SET iValues1 = iValues1 + 1 ;
      END IF ;
    END LOOP  AddingNumberLoopLabel ;
  END ;
END $$$
DELIMITER ;