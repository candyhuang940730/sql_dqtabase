SELECT 
    CustomerType.CustTypeName
        AS 客戶所屬銷售類別 ,
    COUNT(CustomerMain.CustomTypeID) AS 客戶人數
   FROM CustomerMain
   INNER JOIN CustomerType ON 
         CustomerType.CustomTypeID = 
         CustomerMain.CustomTypeID
   GROUP BY CustomerType.CustTypeName ;