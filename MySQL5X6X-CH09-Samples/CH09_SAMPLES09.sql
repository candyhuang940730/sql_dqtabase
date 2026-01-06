-- // ======================================
-- // CustomerMain 客戶資料主檔增加一個欄位:
-- // Transaction_Times INT NULL
-- // 記錄該客戶的交易次數
-- // ======================================
ALTER TABLE CustomerMain 
  ADD COLUMN Transaction_Times INT NULL
  DEFAULT 0 ;
UPDATE CustomerMain SET
  Transaction_Times = 
  ( SELECT COUNT(*) 
            FROM CustomSaleMainRec 
            WHERE CustomSaleMainRec.CustomID = 
                  CustomerMain.CustomID )
WHERE CustomerMain.CustomID IS NOT NULL ;
				
