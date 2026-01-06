/* ********************************************************************* */
/* TRIGGER：CalcAnalyCustomSaleTOT建立完   */
/* 成後，同樣新增2筆客戶銷售交易資料到        */
/* 客戶銷售交易主檔 (CustomSaleMainRec)，觀察 */
/* AnalysisReport Table的統計資訊  */
/* ********************************************************************* */
-- //* STEP-1：叫用預儲程序：CheckAnalysisTableIsExists()
-- //* 來檢查AnalysisReport是否已建立
-- //* **********************************************
CALL CheckAnalysisTableIsExists() ;
/* ********************************************************************* */
/* STEP-2：使用：INSERT INTO以及REPLACE INTO指令 */
/* 來新增資料 */
/* ********************************************************************* */
  -- //* 使用 INSERT INTO 增加一筆銷售資訊
  INSERT INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-03-SA-0001' ,
    SaleRecDate = '2016/03/01' ,
    CustomID = 2 ,
    SaleTotQTY = ROUND(RAND() * 800, 0) ,
    SaleTotList = SaleTotQTY * 1280 , 
    SaleTotPrice = SaleTotQTY * 1130 ,
    SaleDiscount = SaleTotQTY * 12 ,
    SaleTotCost =  SaleTotQTY * 840 ,
    SaleRecDesc = '轉運' ,
    RecTransPay = 420,
    TransPayType = '公司成本';
  -- //* ************************************************
  -- //* 使用 REPLACE INTO 增加一筆銷售資訊
  -- //* ************************************************
  REPLACE INTO CustomSaleMainRec SET 
    SaleMainCode = '2016-03-SA-0002' ,
    SaleRecDate = '2016/03/01' ,
    CustomID = 3 ,
    SaleTotQTY = 120 ,
    SaleTotList = SaleTotQTY * 1360 , 
    SaleTotPrice = SaleTotQTY * 1180 ,
    SaleDiscount = SaleTotQTY * 14 ,
    SaleTotCost =  SaleTotQTY * 960 ,
    SaleRecDesc = '轉運' ,
    RecTransPay = 560 ,
    TransPayType = '公司成本';
