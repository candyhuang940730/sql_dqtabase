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
    (KeyITEM01, TotValues01)
    SELECT 
LocationForCity.LocationCityName , 
    SUM(CustomSaleMainRec.SaleTotPrice) 
   FROM CustomSaleMainRec
   INNER JOIN CustomerMain ON 	
     CustomSaleMainRec.CustomID = 
CustomerMain.CustomID
   INNER JOIN LocationForCity ON LocationForCity.LocationCityID = CustomerMain.LocationCityID
   GROUP BY LocationForCity.LocationCityName 
   ORDER BY SUM(CustomSaleMainRec.SaleTotPrice)
 DESC ; 
SET @Priority = 0 ;
/* ************************************************************** */
/* 我們使用MySQL的線上設定(:=) 功能來顯示排行名次 */
/* ************************************************************** */
/* @Priority := @Priority + 1 每次將變數@Priority加1後 */
/* 顯示該變數值
/* ************************************************************** */
SELECT 
@Priority := @Priority + 1 AS 銷售排行 ,
KeyITEM01 AS客戶所屬銷售區域, 
TotValues01 AS 銷售總金額 
FROM SaleSortAnaTempTable ;	
