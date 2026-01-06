/* ******************************************************* */
/* 建立一個TRIGGER：AddLogToLogMainTableForUpdate  */
/* 使用AFTER UPDATE 做為 <Trigger_Event>，  */
/* <Trigger_Body>：新增一筆資料到LOG主Table */
/* ******************************************************* */
DELIMITER $$$
CREATE TRIGGER 
  AddLogToLogMainTableForUpdate
  AFTER UPDATE ON CustomerMain
  FOR EACH ROW 
  BEGIN 
    INSERT INTO MainLogRecordTable 
      SET LOG_DESCRIPTION = 
          CONCAT('修改一筆客戶資料:', 
            NEW.CustomID,'-',
            NEW.CustCHName) ; 
END $$$
DELIMITER ;
