SELECT SaleMainCode AS 銷售單據號碼 , 
	AveragePriceInRec(SaleTotPrice, SaleTotQty) 
    AS 平均每件單價金額
    FROM CustomSaleMainRec ;