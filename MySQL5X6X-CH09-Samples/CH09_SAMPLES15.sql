SELECT AnalysisReport.CustomID AS 客戶編號 ,
       CustomerMain.CustCHName AS 客戶名稱 ,
       AnalysisReport.TotalEarnM AS 銷售利潤
  FROM AnalysisReport
  INNER JOIN CustomerMain 
    ON CustomerMain.CustomID = 
       AnalysisReport.CustomID ;