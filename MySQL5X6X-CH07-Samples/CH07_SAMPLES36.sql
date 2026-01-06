SELECT SaleMainCode AS 銷售單據號碼 , 
	USER_FORMAT_DATE(SaleRecDate,'DT')
    AS 銷售單據日期
    FROM CustomSaleMainRec ;
