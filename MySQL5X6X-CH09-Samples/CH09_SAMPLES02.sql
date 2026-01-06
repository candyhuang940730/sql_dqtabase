/* ******************************************************* */
/* CREATE LOG TABLE：AddLogToLogMainTable */
/* ******************************************************* */
CREATE TABLE IF NOT EXISTS
  MainLogRecordTable ( 
   LOG_KEY_ID INT AUTO_INCREMENT 
        NOT NULL PRIMARY KEY ,            
   LOG_DESCRIPTION VARCHAR(600) NULL ,
   LOG_REG_DATE DateTime
        NOT NULL DEFAULT NOW());
