SELECT CustomerMain.CustomID AS 客戶編號 ,
    CustomerMain.CustCHName AS 客戶名稱 , 
    SaleMainCode AS 銷售單據號碼,
    SaleRecDate AS 銷售日期,
    SaleTotQTY AS 銷售數量,
    SaleTotList AS 銷售訂價總金額 ,
    SaleTotPrice AS 銷售實價總金額,
    SaleDiscount AS 銷售折扣金額 ,
    SaleTotCost AS 銷售成本總金額 ,
    RecTransPay AS 銷售單據運費金額 ,
    TransPayType AS 銷售單據運費負擔方式
FROM CustomSaleMainRec 
INNER JOIN CustomerMain ON 
CustomerMain.CustomID = CustomSaleMainRec.CustomID 
   ORDER BY CustomSaleMainRec.SaleMainRecID ;
