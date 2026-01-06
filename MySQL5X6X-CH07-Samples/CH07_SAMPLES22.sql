SET @Add_1_Plus_100 = 0 ;	
/* 叫用DynamicAddingNumber1()預儲程序計算 1到 100之值*/
/* 並將結果使用變數 @Add_1_Plus_100 傳出 */
CALL DynamicAddingNumber1(1,100, @Add_1_Plus_100) ;
SELECT @Add_1_Plus_100 ;
