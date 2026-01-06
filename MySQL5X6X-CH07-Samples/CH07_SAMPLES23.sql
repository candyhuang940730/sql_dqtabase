/* ********************************************************* */
/* 設計一預儲程序，使用REPEAT … UNTIL …    */
/* END REPEAT迴圈計算兩個數字間所有數字之和 */
/*，並將加總結果傳出                           */
/* ********************************************************* */
DELIMITER $$$ 
CREATE PROCEDURE DynamicAddingNumber2 (
    IN iValues1 INT , 
    IN iValues2 INT , 
    OUT iTotalResult INT)
BEGIN
  BEGIN
    SET iTotalResult = 0 ;
    WHILE ( iValues1 <= iValues2 ) DO
      SET iTotalResult = iTotalResult + iValues1 ; 
      SET iValues1 = iValues1 + 1 ;
    END WHILE ;
  END ;
END $$$
DELIMITER ;
