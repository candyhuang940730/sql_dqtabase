USE CRMCloudSchema ;
CREATE TABLE IF NOT EXISTS CustomerMain (
    CustomID INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    CustCHName VARCHAR(80) NOT NULL ,
    CustESName VARCHAR(80) NULL ,
    CustPIDCode VARCHAR(16) NOT NULL DEFAULT ' ',
    CustTeleNO VARCHAR(80) NOT NULL DEFAULT ' ',
    CustFaxNO VARCHAR(80) NULL ,
    CustEMail VARCHAR(120) NULL ,
    CustVAPriority ENUM('A','B','C','D','E') NOT NULL ,
    CustAddress1 VARCHAR(250) NULL ,
    CustAddress2 VARCHAR(250) NULL ,
    LocationCityID INT NOT NULL ,
    CustomTypeID INT NOT NULL ,
    CustPayKindID INT NOT NULL ,
    CreateDateTime DateTime NOT NULL DEFAULT NOW() ) ;
