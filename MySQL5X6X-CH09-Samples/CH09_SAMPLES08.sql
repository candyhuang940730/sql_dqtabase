/* ******************************************** */
/* 使用REPLACE INTO來新增一筆資料 */
/* 到CustomerMain Table */
/* 來觸發TRIGGER */
/* ******************************************** */
REPLACE INTO CustomerMain SET
    CustomID = 8 ,
    CustCHName = 'Next事業股份有限公司' ,
    CustESName = 'Next Corp.Ltd',
    CustPIDCode = '1989065932' ,
    CustTeleNO = '07-23808936' ,
    CustFaxNO = '07-23808937',	
    CustVAPriority = 'B' ,
    LocationCityID = 3 ,
    CustomTypeID = 4 ,
    CustPayKindID = 2 ,
    CustAddress1 = '高雄市',
    CustAddress2 = '高雄市' ;	
