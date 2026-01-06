/* ********************************************************* */
/* 使用UPDATE指令修改一筆CustomerMain Table */
/* 的資料來觸發TRIGGER */
/* ********************************************************* */
UPDATE CustomerMain SET
    CustCHName = 'Next貿易事業股份有限公司' ,
    CustVAPriority = 'B' ,
    LocationCityID = 3 ,
    CustomTypeID = 3 ,
    CustPayKindID = 1 ,
    CustAddress1 = '高雄市',
    CustAddress2 = '高雄市' 
WHERE CustomID = 8;
