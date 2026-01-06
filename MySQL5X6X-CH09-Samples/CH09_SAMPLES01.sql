DELIMITER $$$
CREATE TRIGGER 
   AddLogToLogMainTable
   AFTER INSERT ON CustomerMain
   FOR EACH ROW 
     BEGIN
       INSERT INTO MainLogRecordTable 
          SET LOG_DESCRIPTION = 
            CONCAT('新增一筆客戶資料:',
                 NEW.CustomID,'-',
                 NEW.CustCHName) ;
     END $$$
DELIMITER ;