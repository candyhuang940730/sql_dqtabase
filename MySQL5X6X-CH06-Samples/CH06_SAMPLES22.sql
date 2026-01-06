SELECT 
  CustomerMain.CustVAPriority AS 客戶信用等級 ,
  SUM(SaleTotPrice) AS 銷售實價總金額
FROM CustomSaleMainRec 
INNER JOIN CustomerMain ON 
CustomerMain.CustomID = 
CustomSaleMainRec.CustomID 
GROUP BY CustomerMain.CustVAPriority ;
