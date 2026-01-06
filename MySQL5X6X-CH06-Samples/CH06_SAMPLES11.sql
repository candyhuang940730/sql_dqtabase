SET @PayTypeSetString = 
     '現結客戶月結客戶季結客戶' ;
SET @PayTypeDescString = 
     '現金結帳本票支票本票支票' ;

REPLACE INTO CustomerPayKind
  SET CustPayKindID = 1 ,
      PayKindName = SUBSTRING(@PayTypeSetString,1,4) ,
      PayKindMark = SUBSTRING(@PayTypeDescString,1,4) ;

REPLACE INTO CustomerPayKind
  SET CustPayKindID = 2 ,
      PayKindName = SUBSTRING(@PayTypeSetString FROM 5 FOR 4) ,
      PayKindMark = SUBSTRING(@PayTypeDescString FROM 5 FOR 4) ;

REPLACE INTO CustomerPayKind
  SET CustPayKindID = 3 ,
      PayKindName = SUBSTRING(@PayTypeSetString FROM 9 FOR 4) ,
      PayKindMark = SUBSTRING(@PayTypeDescString FROM 9 FOR 4) ;