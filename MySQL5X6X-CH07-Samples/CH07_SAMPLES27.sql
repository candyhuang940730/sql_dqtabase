DELIMITER $$$
CREATE PROCEDURE GetCustomerNameToStringVar() 
BEGIN
   DECLARE boolExecGetRow BOOL DEFAULT TRUE ;
   DECLARE sCustomerNameString TEXT DEFAULT '' ;
   DECLARE sGetRowCustomName VARCHAR(80) DEFAULT '' ;
   DECLARE objCUstomerMainCURSOR CURSOR FOR 
           SELECT CustCHName FROM CustomerMain ;
   /* ****************************************** */
   /* 使用 FETCH 讀取 CURSOR 資料, 若讀不到時 ,  */
   /* 將變數 boolExecGetRow 設定為 FALSE         */
   /* ****************************************** */
   DECLARE CONTINUE HANDLER 
           FOR NOT FOUND SET boolExecGetRow = FALSE ;
   OPEN objCUstomerMainCURSOR ;
   GetRowInfoLabel: WHILE (TRUE) DO
      FETCH objCUstomerMainCURSOR INTO sGetRowCustomName ;
      IF NOT boolExecGetRow THEN
         LEAVE GetRowInfoLabel ;
      END IF ;
      SET sCustomerNameString = 
          CONCAT(sCustomerNameString, '-', sGetRowCustomName) ;
   END WHILE GetRowInfoLabel ;
   CLOSE objCUstomerMainCURSOR ;
   SELECT sCustomerNameString AS 客戶名稱串列顯示 ;
END $$$
DELIMITER ;