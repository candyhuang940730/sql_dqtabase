DELIMITER $$$
CREATE PROCEDURE InsertDataToCustomSaleMainRec()
BEGIN
   BEGIN
   REPLACE INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0017' ,
    SaleRecDate = '2016/02/08' ,
    CustomID = 5 ,
    SaleTotQTY = 80 ,
    SaleTotList = 8800 , 
    SaleTotPrice = 8600 ,
    SaleDiscount = 0 ,
    SaleTotCost = 6950 ,
    SaleRecDesc = '直接出貨' ,
    RecTransPay = 250 ,
    TransPayType = '客戶支付';
   INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0018' ,
    SaleRecDate = '2016/02/08' ,
    CustomID = 2 ,
    SaleTotQTY = 110 ,
    SaleTotList = 9600 , 
    SaleTotPrice = 9100 ,
    SaleDiscount = 0 ,
    SaleTotCost = 7080 ,
    SaleRecDesc = '直接出貨' ,
    RecTransPay = 350 ,
    TransPayType = '公司成本';
   REPLACE INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0018' ,
    SaleRecDate = '2016/02/08' ,
    CustomID = 6 ,
    SaleTotQTY = 100 ,
    SaleTotList = 9200 , 
    SaleTotPrice = 8800 ,
    SaleDiscount = 0 ,
    SaleTotCost = 7200 ,
    SaleRecDesc = '直接出貨' ,
    RecTransPay = 300 ,
    TransPayType = '客戶支付';
   END ;
END $$$
DELIMITER ;