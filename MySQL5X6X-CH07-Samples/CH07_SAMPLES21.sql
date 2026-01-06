/* ********************************************************** */
/* 設計一預儲程序，使用REPEAT … UNTIL …                      DynamicAddingNumber1 */
/* END REPEAT迴圈計算兩個數字間所有數字之和，並將加總結果傳出 */                    */
/* ********************************************************** */
DELIMITER $$$ 
CREATE PROCEDURE DynamicAddingNumber1 (
    IN iValues1 INT , 
    IN iValues2 INT , 
    OUT iTotalResult INT)
BEGIN
  BEGIN
    SET iTotalResult = 0 ;
    AddingNumberLoopLabel: REPEAT
      SET iTotalResult = iTotalResult + iValues1 ; 
      SET iValues1 = iValues1 + 1 ;
    UNTIL iValues1 > iValues2
    END REPEAT AddingNumberLoopLabel ;
  END ;
END $$$
DELIMITER ;
