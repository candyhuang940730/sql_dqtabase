SELECT 
    CustomerMain.CustVAPriority
        AS 客戶信用等級 ,
    COUNT(CustomerMain.CustVAPriority) AS 客戶人數
   FROM CustomerMain
   GROUP BY CustomerMain.CustVAPriority ;