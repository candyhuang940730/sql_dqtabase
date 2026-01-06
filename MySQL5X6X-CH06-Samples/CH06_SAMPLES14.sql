SELECT CustomerMain.CustomID AS 客戶編號 ,
    CustomerMain.CustCHName AS 客戶名稱 ,
    LocationForCity.LocationCityName
 AS 客戶所屬銷售區域 ,
    CustomerType.CustTypeName 
AS 客戶分類類別 ,
    CustomerPayKind.PayKindName 
AS 客戶結帳方式 ,
    CustomerMain.CustVAPriority 
AS 客戶信用等級
   FROM CustomerMain
   INNER JOIN LocationForCity ON LocationForCity.LocationCityID = CustomerMain.LocationCityID
    INNER JOIN CustomerType ON CustomerType.CustomTypeID = CustomerMain.CustomTypeID
    INNER JOIN CustomerPayKind ON CustomerPayKind.CustPayKindID = CustomerMain.CustPayKindID 
    ORDER BY CustomerMain.CustomID ;

