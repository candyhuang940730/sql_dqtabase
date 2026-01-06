SELECT CustomerMain.CustCHName AS 客戶名稱 , 
    SUM(SaleTotQTY) AS 銷售總數量,
    SUM(SaleTotList) AS 銷售訂價總金額 ,
    SUM(SaleTotPrice) AS 銷售實價總金額,
    SUM(SaleDiscount) AS 銷售折扣金額 ,
    SUM(SaleTotCost) AS 銷售成本總金額 
   FROM CustomSaleMainRec
   INNER JOIN CustomerMain ON 
     CustomSaleMainRec.CustomID = CustomerMain.CustomID
   GROUP BY CustomerMain.CustCHName ;