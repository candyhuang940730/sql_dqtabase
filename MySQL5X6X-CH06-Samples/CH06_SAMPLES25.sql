INSERT INTO SaleSortAnaTempTable 
    (KeyITEM01, TotValues01, TotValues02)
    SELECT 
CustomerMain.CustCHName , 
    SUM(SaleTotPrice),
    SUM(SaleTotPrice) - SUM(SaleTotCost) 
   FROM CustomSaleMainRec
   INNER JOIN CustomerMain ON 
     CustomSaleMainRec.CustomID = CustomerMain.CustomID
   GROUP BY CustomerMain.CustCHName 
   ORDER BY SUM(SaleTotPrice) DESC ; 
SET @Priority = 0 ;
SELECT @Priority := @Priority + 1 AS 銷售排行 ,
KeyITEM01 AS 客戶名稱, 
TotValues01 AS 銷售總金額 , 
TotValues02 AS 銷售總利潤
   FROM SaleSortAnaTempTable ;
