DROP TEMPORARY TABLE SaleSortAnaTempTable ;
CREATE TEMPORARY TABLE SaleSortAnaTempTable (
KeyITEM01 VARCHAR(60) NULL ,
KeyITEM02 VARCHAR(60) NULL ,
KeyITEM03 VARCHAR(60) NULL ,
TotValues01 NUMERIC(12,0) NULL ,
TotValues02 NUMERIC(12,0) NULL ,
TotValues03 NUMERIC(12,0) NULL ,
TotValues04 NUMERIC(12,0) NULL ,	
TotValues05 NUMERIC(12,0) NULL ) ;
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
   ORDER BY (SUM(SaleTotPrice) - SUM(SaleTotCost)) 
 DESC ; 
SET @Priority = 0 ;
/* ************************************************************** */
/* 我們使用MySQL的線上設定(:=) 功能來顯示排行名次 */
/* ************************************************************** */
/* @Priority := @Priority + 1 每次將變數@Priority加1後 */
/* 顯示該變數值
/* ************************************************************** */
SELECT @Priority := @Priority + 1 AS 銷售排行 ,
KeyITEM01 AS 客戶名稱, 
TotValues01 AS 銷售總金額 , 
TotValues02 AS 銷售總利潤
   FROM SaleSortAnaTempTable ;
