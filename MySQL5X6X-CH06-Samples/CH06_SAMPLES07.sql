USE CRMCloudSchema ;
CREATE TABLE IF NOT EXISTS CustomSaleMainRec (
    SaleMainRecID INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    SaleMainCode VARCHAR(36) NOT NULL ,
    SaleRecDate DateTime NOT NULL DEFAULT NOW() ,
    CustomID INT NOT NULL ,
    SaleTotQTY INT NOT NULL DEFAULT 0 ,
    SaleTotList  INT NOT NULL DEFAULT 0 ,
   SaleTotPrice  INT NOT NULL DEFAULT 0 ,
   SaleDiscount  INT NOT NULL DEFAULT 0 ,
   SaleTotCost INT NOT NULL DEFAULT 0 ,
   SaleRecDesc TEXT NULL ,
   RecTransPay INT NOT NULL DEFAULT 0 ,
   TransPayType ENUM('客戶支付', '公司成本') NOT NULL ,
   CreateDateTime DateTime NOT NULL DEFAULT NOW() ) ;
