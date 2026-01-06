USE CRMCloudSchema ;
CREATE TABLE IF NOT EXISTS CustomerType (
    CustomTypeID INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    CustTypeName VARCHAR(80) NOT NULL ,
    CustTypeMark VARCHAR(80) NULL ,
    CustTypeStatus ENUM('1:啟用', '2:停用') NOT NULL ,
    CreateDateTime DateTime NOT NULL DEFAULT NOW() ) ;
