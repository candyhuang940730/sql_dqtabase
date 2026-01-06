/* ******************************************************* */
/* 建立一個TRIGGER：AddLogToLogMainTableForUpdate  */
/* 使用BEFORE DELETE做為 <Trigger_Event>，*/
/* <Trigger_Body>：新增一筆客戶刪除記錄資料到  */
/* LOG主Table */
/* ******************************************************* */
DELIMITER $$$
CREATE TRIGGER 
  AddLogToLogMainTableForDELETE
  BEFORE DELETE ON CustomerMain
  FOR EACH ROW 
  BEGIN 
    INSERT INTO MainLogRecordTable 
      SET LOG_DESCRIPTION = 
          CONCAT('刪除該筆客戶資料:', 
            OLD.CustomID,'-',
            OLD.CustCHName) ; 
END $$$
DELIMITER ; 
