 USE CRMCloudSchema ;
 SET @CustTypeName = '進出口貿易類' ;
 SET @CustTypeMark = '' ;
 SET @CustTypeStatus = '1:啟用' ;
 INSERT INTO CustomerType  
    SET CustTypeName = @CustTypeName ,
      CustTypeMark = @CustTypeMark ,
      CustTypeStatus = @CustTypeStatus ;

 SET @CustTypeName = '進口貿易類' ;
 SET @CustTypeMark = 'Only進口' ;
 SET @CustTypeStatus = '1:啟用' ;
 INSERT INTO CustomerType
    SET CustTypeName = @CustTypeName ,
      CustTypeMark = @CustTypeMark ,
      CustTypeStatus = @CustTypeStatus ;

 SET @CustTypeName = '食品經銷商' ;
 SET @CustTypeMark = '' ;
 SET @CustTypeStatus = '1:啟用' ;
 INSERT INTO CustomerType
    SET CustTypeName = @CustTypeName ,
      CustTypeMark = @CustTypeMark ,
      CustTypeStatus = @CustTypeStatus ;
 

 SET @CustTypeName = '雜貨經銷商' ;
 SET @CustTypeMark = '' ;
 SET @CustTypeStatus = '1:啟用' ;
 INSERT INTO CustomerType
    SET CustTypeName = @CustTypeName ,
      CustTypeMark = @CustTypeMark ,
      CustTypeStatus = @CustTypeStatus ;

 SET @CustTypeName = '3C產品經銷商' ;
 SET @CustTypeMark = '' ;
 SET @CustTypeStatus = '2:停用' ;
 INSERT INTO CustomerType
    SET CustTypeName = @CustTypeName ,
      CustTypeMark = @CustTypeMark ,
      CustTypeStatus = @CustTypeStatus ;

 SET @CustTypeName = '精品銷售' ;
 SET @CustTypeMark = '' ;
 SET @CustTypeStatus = '1:啟用' ;
 INSERT INTO CustomerType
    SET CustTypeName = @CustTypeName ,
      CustTypeMark = @CustTypeMark ,
      CustTypeStatus = @CustTypeStatus ;
