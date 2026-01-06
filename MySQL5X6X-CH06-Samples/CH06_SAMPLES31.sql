SELECT CustomerMain.CustomID AS 客戶編號 ,
   CustomerMain.CustCHName AS 客戶名稱 ,
   (SELECT SUM(CustomSaleMainrec.RecTransPay) 
      FROM CustomSaleMainRec
      WHERE CustomerMain.CustomID = 
         CustomSaleMainRec.CustomID)
	AS 客戶銷售產生運費費用 ,
   (SELECT SUM(CustomSaleMainrec.RecTransPay) 
      FROM CustomSaleMainRec
      WHERE CustomerMain.CustomID = 
           CustomSaleMainRec.CustomID And 
      CustomSaleMainRec.TransPayType = '公司成本')
	AS 銷售運費_公司成本 ,
   (SELECT SUM(CustomSaleMainrec.RecTransPay) 
      FROM CustomSaleMainRec
      WHERE CustomerMain.CustomID = 
           CustomSaleMainRec.CustomID And 
	  CustomSaleMainRec.TransPayType = '客戶支付')
	AS 銷售運費_客戶支付
   FROM CustomerMain 
   ORDER BY 
     (SELECT SUM(CustomSaleMainrec.RecTransPay) 
        FROM CustomSaleMainRec
      WHERE CustomerMain.CustomID = 
            CustomSaleMainRec.CustomID) DESC ;