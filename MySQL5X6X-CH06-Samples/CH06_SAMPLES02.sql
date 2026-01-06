USE CRMCloudSchema ;
CREATE TABLE IF NOT EXISTS LocationForCity (
    LocationCityID INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
    LocationCityName VARCHAR(80) NOT NULL ,
    LocationCityDesc VARCHAR(80) NULL ,
    LocationNation ENUM('1:國內', '2:國外') NOT NULL ,
    CreateDateTime DateTime NOT NULL DEFAULT NOW() ) ;

