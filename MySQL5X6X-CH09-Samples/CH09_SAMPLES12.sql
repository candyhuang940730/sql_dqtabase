DELIMITER $$$
CREATE PROCEDURE CheckAnalysisTableIsExists()
DETERMINISTIC
BEGIN
   SET @SearchCounter = (SELECT COUNT(*) 
	  FROM INFORMATION_SCHEMA.TABLES
		WHERE LCASE(table_schema) =
              LCASE('CRMCloudSchema')
		AND LCASE(table_name) = 
			LCASE('AnalysisReport')
			LIMIT 1) ;
   IF (@SearchCounter = 0) THEN
      CREATE TABLE 
          IF NOT EXISTS AnalysisReport (
          CustomID INT NOT NULL PRIMARY KEY ,
          TotalEarnM NUMERIC(10) NULL DEFAULT 0 ,
          LastUpdateTime DateTime NULL 
                DEFAULT CURRENT_TIMESTAMP()) ;
       INSERT INTO AnalysisReport (CustomID)
          SELECT CustomID FROM CustomerMain
			 WHERE CustomID > 0 ;
	   UPDATE AnalysisReport set
           TotalEarnM = 
             (SELECT 
				SUM(SaleTotPrice - SaleTotCost) 
			  FROM CustomSaleMainRec
                WHERE CustomSaleMainRec.CustomID
                    = AnalysisReport.CustomID ) 
	   WHERE CustomID > 0 ; 
   END IF ; 
END$$$
DELIMITER ;