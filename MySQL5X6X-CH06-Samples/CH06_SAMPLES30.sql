SELECT LocationForCity.LocationCityName AS 所屬銷售區域 ,
   (SELECT COUNT(CustomerMain.CustomID) 
       FROM CustomerMain 
       WHERE CustomerMain.LocationCityID =
             LocationForCity.LocationCityID LIMIT 1) 
       AS 銷售區域客戶總數 ,
   (SELECT SUM(CustomSaleMainRec.SaleTotPrice) 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON CustomerMain.CustomID = 
                 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.LocationCityID =
               LocationForCity.LocationCityID LIMIT 1) 
       AS 區域銷售總金額 ,
	  IF((SELECT COUNT(CustomerMain.CustomID) 
       FROM CustomerMain 
       WHERE CustomerMain.LocationCityID =
             LocationForCity.LocationCityID LIMIT 1) = 0,0,
      ROUND((SELECT SUM(CustomSaleMainRec.SaleTotPrice) 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON CustomerMain.CustomID = 
                 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.LocationCityID =
               LocationForCity.LocationCityID LIMIT 1) / 
	  (SELECT COUNT(CustomerMain.CustomID) 
       FROM CustomerMain 
       WHERE CustomerMain.LocationCityID =
             LocationForCity.LocationCityID LIMIT 1) ,0))
     AS 區域各客戶平均銷售金額
FROM LocationForCity 
ORDER BY IF((SELECT COUNT(CustomerMain.CustomID) 
       FROM CustomerMain 
       WHERE CustomerMain.LocationCityID =
             LocationForCity.LocationCityID LIMIT 1) = 0,0,
      ROUND((SELECT SUM(CustomSaleMainRec.SaleTotPrice) 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain ON CustomerMain.CustomID = 
                 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.LocationCityID =
               LocationForCity.LocationCityID LIMIT 1) / 
	  (SELECT COUNT(CustomerMain.CustomID) 
       FROM CustomerMain 
       WHERE CustomerMain.LocationCityID =
             LocationForCity.LocationCityID LIMIT 1) ,0)) DESC ;
