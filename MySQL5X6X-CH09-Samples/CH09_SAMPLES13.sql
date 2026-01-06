DELIMITER $$$
CREATE TRIGGER 
   CalcAnalyCustomSaleTOT
AFTER INSERT ON 
   CustomSaleMainRec
FOR EACH ROW 
BEGIN 
  UPDATE AnalysisReport SET
     TotalEarnM = TotalEarnM + 
         ( NEW.SaleTotPrice - NEW.SaleTotCost )
     WHERE AnalysisReport.CustomID =
           NEW.CustomID ;
	-- //* **********************************************
    -- //* [ 新增1筆LOG資料到LOG主記錄檔 ]
    -- //* **********************************************
    INSERT INTO
	  MainLogRecordTable 
      SET LOG_DESCRIPTION = 
          CONCAT('計算:', 
            NEW.SaleMainCode,'-',
            New.SaleRecDate) ; 
END $$$
DELIMITER ;