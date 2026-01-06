USE CRMCloudSchema ;
  -- //* 直述式SQL程式設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0001' ,
    SaleRecDate = '2016/02/01' ,
    CustomID = 1 ,
    SaleTotQTY = 10 ,
    SaleTotList = 20000 , 
    SaleTotPrice = 19000 ,
    SaleDiscount = 0 ,
    SaleTotCost = 14500 ,
    SaleRecDesc = '' ,
    RecTransPay = 250 ,
    TransPayType = '客戶支付';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0002' ,
    SaleRecDate = '2016/02/02' ,
    CustomID = 2 ,
    SaleTotQTY = ROUND(RAND() * 1000, 0) ,
    SaleTotList = SaleTotQTY * 1200 , 
    SaleTotPrice = SaleTotQTY * 1120 ,
    SaleDiscount = SaleTotQTY * 8 ,
    SaleTotCost =  SaleTotQTY * 820 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0003' ,
    SaleRecDate = '2016/02/03' ,
    CustomID = 1 ,
    SaleTotQTY = ROUND(RAND() * 500, 0) ,
    SaleTotList = SaleTotQTY * 1200 , 
    SaleTotPrice = SaleTotQTY * 1120 ,
    SaleDiscount = SaleTotQTY * 8 ,
    SaleTotCost =  SaleTotQTY * 820 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0004' ,
    SaleRecDate = '2016/02/03' ,
    CustomID = 3 ,
    SaleTotQTY = ROUND(RAND() * 800, 0) ,
    SaleTotList = SaleTotQTY * 1180 , 
    SaleTotPrice = SaleTotQTY * 1120 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 810 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0005' ,
    SaleRecDate = '2016/02/03' ,
    CustomID = 4 ,
    SaleTotQTY = ROUND(RAND() * 700, 0) ,
    SaleTotList = SaleTotQTY * 1280 , 
    SaleTotPrice = SaleTotQTY * 1180 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 860 ,
    SaleRecDesc = '' ,
    RecTransPay = 280 ,
    TransPayType = '客戶支付';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0006' ,
    SaleRecDate = '2016/02/03' ,
    CustomID = 5 ,
    SaleTotQTY = ROUND(RAND() * 700, 0) ,
    SaleTotList = SaleTotQTY * 1280 , 
    SaleTotPrice = SaleTotQTY * 1180 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 860 ,
    SaleRecDesc = '' ,
    RecTransPay = 280 ,
    TransPayType = '客戶支付';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0007' ,
    SaleRecDate = '2016/02/03' ,
    CustomID = 6 ,
    SaleTotQTY = ROUND(RAND() * 300, 0) ,
    SaleTotList = SaleTotQTY * 1200 , 
    SaleTotPrice = SaleTotQTY * 1120 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 800 ,
    SaleRecDesc = '' ,
    RecTransPay = 250 ,
    TransPayType = '公司成本';
  -- //* 直述式SQL程式設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0008' ,
    SaleRecDate = '2016/02/05' ,
    CustomID = 1 ,
    SaleTotQTY = 30 ,
    SaleTotList = 22000 , 
    SaleTotPrice = 20500 ,
    SaleDiscount = 0 ,
    SaleTotCost = 16500 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '客戶支付';
  -- //* 直述式SQL程式設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0009' ,
    SaleRecDate = '2016/02/05' ,
    CustomID = 3 ,
    SaleTotQTY = 90 ,
    SaleTotList = 22000 , 
    SaleTotPrice = 20500 ,
    SaleDiscount = 0 ,
    SaleTotCost = 16500 ,
    SaleRecDesc = '' ,
    RecTransPay = 280 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0010' ,
    SaleRecDate = '2016/02/06' ,
    CustomID = 6 ,
    SaleTotQTY = ROUND(RAND() * 150, 0) ,
    SaleTotList = SaleTotQTY * 1800 , 
    SaleTotPrice = SaleTotQTY * 1720 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 1520 ,
    SaleRecDesc = '' ,
    RecTransPay = 500 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0011' ,
    SaleRecDate = '2016/02/06' ,
    CustomID = 5 ,
    SaleTotQTY = ROUND(RAND() * 280, 0) ,
    SaleTotList = SaleTotQTY * 1800 , 
    SaleTotPrice = SaleTotQTY * 1720 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 1520 ,
    SaleRecDesc = '' ,
    RecTransPay = 500 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0012' ,
    SaleRecDate = '2016/02/06' ,
    CustomID = 4 ,
    SaleTotQTY = ROUND(RAND() * 175, 0) ,
    SaleTotList = SaleTotQTY * 1700 , 
    SaleTotPrice = SaleTotQTY * 1620 ,
    SaleDiscount = SaleTotQTY * 6 ,
    SaleTotCost =  SaleTotQTY * 1320 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '公司成本';
  -- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0013' ,
    SaleRecDate = '2016/02/06' ,
    CustomID = 3 ,
    SaleTotQTY = ROUND(RAND() * 550, 0) ,
    SaleTotList = SaleTotQTY * 1200 , 
    SaleTotPrice = SaleTotQTY * 1120 ,
    SaleDiscount = SaleTotQTY * 3 ,
    SaleTotCost =  SaleTotQTY * 820 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '客戶支付';
-- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0014' ,
    SaleRecDate = '2016/02/07' ,
    CustomID = 2 ,
    SaleTotQTY = ROUND(RAND() * 550, 0) ,
    SaleTotList = SaleTotQTY * 1200 , 
    SaleTotPrice = SaleTotQTY * 1120 ,
    SaleDiscount = SaleTotQTY * 3 ,
    SaleTotCost =  SaleTotQTY * 820 ,
    SaleRecDesc = '' ,
    RecTransPay = 350 ,
    TransPayType = '客戶支付';
-- //* 使用MySQL函數設計
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-02-SA-0015' ,
    SaleRecDate = '2016/02/07' ,
    CustomID = 3 ,
    SaleTotQTY = ROUND(RAND() * 2000, 0) ,
    SaleTotList = SaleTotQTY * 900 , 
    SaleTotPrice = SaleTotQTY * 840 ,
    SaleDiscount = SaleTotQTY * 12 ,
    SaleTotCost =  SaleTotQTY * 660 ,
    SaleRecDesc = '' ,
    RecTransPay = 550 ,
    TransPayType = '公司成本';
