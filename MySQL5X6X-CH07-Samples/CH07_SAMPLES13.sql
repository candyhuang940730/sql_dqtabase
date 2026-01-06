DELIMITER $$$
CREATE PROCEDURE GetAnalysisSELECT()
BEGIN
  SELECT CustomerMain.CustCHName AS 客戶名稱 ,
     CustomSaleMainRec.SaleMainCode AS 銷售單據號碼 , 
	 (CASE WHEN (CustomSaleMainRec.SaleTotPrice - 
                CustomSaleMainRec.SaleTotCost) >= 50000 THEN '利潤高的單據'
           WHEN (CustomSaleMainRec.SaleTotPrice - 
                CustomSaleMainRec.SaleTotCost) >= 10000 THEN '利潤普通的單據'
           WHEN (CustomSaleMainRec.SaleTotPrice - 
				CustomSaleMainRec.SaleTotCost) >= 2000  THEN '利潤低的單據'
           WHEN (CustomSaleMainRec.SaleTotPrice - 
                CustomSaleMainRec.SaleTotCost) >= 0     THEN '不成功的單據'
           ELSE '失敗的單據'
      END) AS 銷售狀態 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON 
         CustomerMain.CustomID = CustomSaleMainRec.CustomID 
	  ORDER BY CustomSaleMainRec.SaleRecDate ;
END $$$
DELIMITER ;