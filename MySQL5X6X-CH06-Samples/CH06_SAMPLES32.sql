SELECT CustomerMain.CustVAPriority AS 客戶等級 , 
   COUNT(CustomerMain.CustomID) AS 客戶總數 ,
   (SELECT
	  SUM(CustomSaleMainRec.SaleTotPrice) 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain AS CM ON
		 CM.CustomID = 
		 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.CustVAPriority =
		 CM.CustVAPriority) AS 客戶等級銷售總金額 ,
      (SELECT
	  SUM(CustomSaleMainRec.SaleTotPrice -
          CustomSaleMainRec.SaleTotCost) 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain AS CM ON
		 CM.CustomID = 
		 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.CustVAPriority =
		 CM.CustVAPriority) AS 客戶等級銷售總利潤
   FROM CustomerMain
   GROUP BY CustomerMain.CustVAPriority 
   ORDER BY (SELECT 
       SUM(CustomSaleMainRec.SaleTotPrice) 
      FROM CustomSaleMainRec 
      INNER JOIN CustomerMain AS CM ON
                 CM.CustomID = 
                 CustomSaleMainRec.CustomID 
	     WHERE CustomerMain.CustVAPriority =
               CM.CustVAPriority) DESC ;