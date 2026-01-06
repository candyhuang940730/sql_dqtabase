SELECT 
    LocationForCity.LocationCityName
        AS 客戶所屬銷售區域 ,
    COUNT(CustomerMain.LocationCityID) AS 客戶人數
   FROM CustomerMain
   INNER JOIN LocationForCity ON 
         LocationForCity.LocationCityID = 
         CustomerMain.LocationCityID
   GROUP BY LocationForCity.LocationCityName ;
