DELIMITER $$$
CREATE PROCEDURE GetAnalysisSELECT1()
BEGIN
  SELECT CustomerMain.CustCHName AS 客戶名稱 ,
	CustomSaleMainRec.SaleMainCode AS 銷售單據號碼 , 
	 IF( (CustomSaleMainRec.SaleTotPrice - 
		  CustomSaleMainRec.SaleTotCost) >= 50000, '利潤高的單據' ,
     IF( (CustomSaleMainRec.SaleTotPrice - 
		  CustomSaleMainRec.SaleTotCost) >= 10000, '利潤普通的單據' ,
     IF( (CustomSaleMainRec.SaleTotPrice - 
		  CustomSaleMainRec.SaleTotCost) >= 2000 , '利潤低的單據' ,
     IF( (CustomSaleMainRec.SaleTotPrice - 
		  CustomSaleMainRec.SaleTotCost) >= 0 , '不成功的單據' ,
          '失敗的單據' ))))
	  AS 銷售狀態 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON 
         CustomerMain.CustomID = CustomSaleMainRec.CustomID 
	  ORDER BY CustomSaleMainRec.SaleRecDate ;
END $$$
DELIMITER ;