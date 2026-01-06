/* ********************************************************************* */
/* TRIGGER：ProcessCustomTransactionTimesPlus1建立完  */
/* 成後，再繼續新增2筆客戶銷售交易資料到                */
/* 客戶銷售交易主檔 (CustomSaleMainRec)                 */
/* 使用：INSERT INTO以及REPLACE INTO指令來新增資料 */
/* ********************************************************************* */
  -- //* 使用 INSERT INTO 增加一筆銷售資訊
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0036' ,
    SaleRecDate = '2016/02/20' ,
    CustomID = 2 ,
    SaleTotQTY = ROUND(RAND() * 600, 0) ,
    SaleTotList = SaleTotQTY * 1280 , 
    SaleTotPrice = SaleTotQTY * 1130 ,
    SaleDiscount = SaleTotQTY * 12 ,
    SaleTotCost =  SaleTotQTY * 840 ,
    SaleRecDesc = '轉運' ,
    RecTransPay = 460 ,
    TransPayType = '公司成本';	
  -- //* 使用 REPLACE INTO 增加一筆銷售資訊
  REPLACE INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0037' ,
    SaleRecDate = '2016/02/21' ,
    CustomID = 6 ,
    SaleTotQTY = 120 ,
    SaleTotList = SaleTotQTY * 1500 , 
    SaleTotPrice = SaleTotQTY * 1180 ,
    SaleDiscount = SaleTotQTY * 14 ,
    SaleTotCost =  SaleTotQTY * 960 ,
    SaleRecDesc = '轉運' ,
    RecTransPay = 5200 ,
    TransPayType = '公司成本';	
