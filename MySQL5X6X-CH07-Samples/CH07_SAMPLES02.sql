/* ******************************* */
/* 建立一個使用客戶編號來查詢客戶  */
/* 資料主檔對應編號的資料          */
/* ******************************* */
DELIMITER ###
CREATE PROCEDURE QueryCustomerMainTable(IN ps_QueryCustomID INT)
BEGIN
   SELECT * FROM CustomerMain 
       WHERE CustomID = ps_QueryCustomID ;
END ###
DELIMITER ;
