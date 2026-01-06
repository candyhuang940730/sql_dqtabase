SELECT LocationForCity.LocationCityName AS 所屬銷售區域 ,
   (SELECT COUNT(CustomerMain.CUstomID) FROM CustomerMain 
       WHERE CustomerMain.LocationCityID =
             LocationForCity.LocationCityID LIMIT 1) 
       AS 銷售區域客戶總數 ,
   (SELECT SUM(CustomSaleMainRec.SaleTotPrice) FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON CustomerMain.CustomID = 
                 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.LocationCityID =
               LocationForCity.LocationCityID LIMIT 1) 
       AS 區域銷售總金額
FROM LocationForCity 
ORDER BY (SELECT SUM(CustomSaleMainRec.SaleTotPrice) FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON CustomerMain.CustomID = 
                 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.LocationCityID =
               LocationForCity.LocationCityID LIMIT 1) DESC ;
