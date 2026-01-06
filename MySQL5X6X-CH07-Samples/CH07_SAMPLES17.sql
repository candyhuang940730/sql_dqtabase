DELIMITER $$$
CREATE PROCEDURE ShowSaleReportTotalMessage()
BEGIN
SET @sReportMessage = '';
SET @TOTAL_EARN = 
    (SELECT SUM(CustomSaleMainRec.SaleTotPrice - 
		        CustomSaleMainRec.SaleTotCost)
            FROM CustomSaleMainRec ) ;
IF @TOTAL_EARN > 100000 THEN
   SET @sReportMessage = 'BEST';
ELSEIF @TOTAL_EARN > 80000 THEN
   SET @sReportMessage = 'VCERY GOOD';
ELSEIF @TOTAL_EARN > 50000 THEN
   SET @sReportMessage = 'GOOD';
ELSE
   SET @sReportMessage = 'BAD';
END IF ;
SELECT @sReportMessage AS 訊息顯示 ;
END $$$
DELIMITER ;