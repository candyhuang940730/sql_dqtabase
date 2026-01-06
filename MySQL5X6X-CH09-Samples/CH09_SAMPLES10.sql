DELIMITER $$$
CREATE TRIGGER 
  ProcessCustomTransactionTimesPlus1
  AFTER INSERT ON CustomSaleMainRec
  FOR EACH ROW 
  BEGIN 
	UPDATE CustomerMain SET
       Transaction_Times = Transaction_Times + 1
	WHERE CustomID = NEW.CustomID ;
    INSERT INTO MainLogRecordTable 
      SET LOG_DESCRIPTION = 
          CONCAT('新增該筆客戶銷售資料:', 
            NEW.SaleMainCode,'-',
            New.SaleRecDate) ; 
END $$$
DELIMITER ;
