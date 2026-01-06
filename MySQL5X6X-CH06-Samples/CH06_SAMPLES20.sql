SELECT 
    CustomerPayKind.PayKindName
        AS 客戶結帳方式 ,
    COUNT(CustomerMain.CustPayKindID) AS 客戶人數
   FROM CustomerMain
   INNER JOIN CustomerPayKind ON 
      CustomerPayKind.CustPayKindID = 
      CustomerMain.CustPayKindID
   GROUP BY CustomerPayKind.PayKindName ;