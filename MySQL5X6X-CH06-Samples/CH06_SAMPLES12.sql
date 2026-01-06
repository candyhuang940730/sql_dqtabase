USE CRMCloudSchema ;
SET @CustVAPriority_SET = 'ABDE' ;
SET @CustAddressCity = '台北市台中市高雄市' ;	
INSERT INTO CustomerMain (CustCHName, CustESName, 
            CustPIDCode, CustTeleNO, CustFaxNO, 
            CustVAPriority ,LocationCityID, 
            CustomTypeID, CustPayKindID,
            CustAddress1,CustAddress2) 
VALUES ('第一貿易股份有限公司','First Trade Corp.Ltd',
        '6168980001','02-98765432','02-98765421'
        ,SUBSTRING(@CustVAPriority_SET,2,1),2,1,2, 
         SUBSTRING(@CustAddressCity,1,3) ,
SUBSTRING(@CustAddressCity,1,3) ) ;
INSERT INTO CustomerMain (CustCHName, CustESName, 
            CustPIDCode, CustTeleNO, CustFaxNO, 
            CustVAPriority ,LocationCityID, 
            CustomTypeID, CustPayKindID,
            CustAddress1,CustAddress2) 
VALUES ('宇宙貿易股份有限公司','Universal Trade Corp.Ltd',
        '6190011001','02-12345678','02-12345676'
        ,SUBSTRING(@CustVAPriority_SET,2,1),1,1,1, 
         SUBSTRING(@CustAddressCity,1,3),
SUBSTRING(@CustAddressCity,1,3) );
INSERT INTO CustomerMain (CustCHName, CustESName, 
            CustPIDCode, CustTeleNO, CustFaxNO, 
            CustVAPriority ,LocationCityID, 
            CustomTypeID, CustPayKindID,
            CustAddress1,CustAddress2) 
VALUES ('ABC Trade股份有限公司','ABC Trade Corp.Ltd',
        '6190011001','02-32145678','02-32145676'
        ,SUBSTRING(@CustVAPriority_SET,1,1),2,2, 2,
         SUBSTRING(@CustAddressCity,1,3) ,
SUBSTRING(@CustAddressCity,1,3) ) ;
INSERT INTO CustomerMain (CustCHName, CustESName, 
            CustPIDCode, CustTeleNO, CustFaxNO, 
            CustVAPriority ,LocationCityID, 
            CustomTypeID, CustPayKindID,
            CustAddress1,CustAddress2) 
VALUES ('Star Month股份有限公司','Star Month Corp.Ltd',
        '6190011001','04-32145651','04-32140276'
        ,SUBSTRING(@CustVAPriority_SET,3,1),1,2, 2,
         SUBSTRING(@CustAddressCity,4,3),
SUBSTRING(@CustAddressCity,4,3) ) ;
REPLACE INTO CustomerMain SET
    CustCHName = 'Wing King股份有限公司' ,
    CustESName = 'Wing King Corp.Ltd',
    CustPIDCode = '2678211728' ,
    CustTeleNO = '04-28901234' ,
    CustFaxNO = '04-28921234' ,	
    CustVAPriority = SUBSTRING(@CustVAPriority_SET,2,1) ,
    LocationCityID = 2 ,
    CustomTypeID = 3 ,
    CustPayKindID = 3 ,
    CustAddress1 = SUBSTRING(@CustAddressCity,4,3),
    CustAddress2 = SUBSTRING(@CustAddressCity,4,3) ;
REPLACE INTO CustomerMain SET
    CustCHName = 'City Role事業股份有限公司' ,
    CustESName = 'City Role Corp.Ltd',
    CustPIDCode = '1982211902' ,
    CustTeleNO = '07-28908790' ,
    CustFaxNO = '07-28908769',	
    CustVAPriority = SUBSTRING(@CustVAPriority_SET,2,1) ,
    LocationCityID = 3 ,
    CustomTypeID = 4 ,
    CustPayKindID = 2 ,
    CustAddress1 = SUBSTRING(@CustAddressCity,7,3),
    CustAddress2 = SUBSTRING(@CustAddressCity,7,3) ;	
