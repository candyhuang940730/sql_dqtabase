DELIMITER $$$
CREATE PROCEDURE CreateNewBrowserTable() 
BEGIN
   DECLARE boolExecGetRow BOOL DEFAULT TRUE ;
   DECLARE sGetRowPayKindName VARCHAR(80) DEFAULT '' ;
   DECLARE objCustomerPayKindCURSOR CURSOR FOR 
           SELECT PayKindName FROM CustomerPayKind ;
   DECLARE CONTINUE HANDLER 
           FOR NOT FOUND SET boolExecGetRow = FALSE ;
   OPEN objCustomerPayKindCURSOR ;
   SET @sCustomerPayKindString = '' ;
   GetRowInfoLabel: WHILE (TRUE) DO
      FETCH objCustomerPayKindCURSOR INTO sGetRowPayKindName ;
      IF NOT boolExecGetRow THEN
         LEAVE GetRowInfoLabel ;
      END IF ;
      SET sGetRowPayKindName = TRIM(sGetRowPayKindName) ;
      IF LENGTH(TRIM(@sCustomerPayKindString)) = 0 THEN
         SET @sCustomerPayKindString = CONCAT(sGetRowPayKindName
             , ' INT NULL ') ;
      ELSE
		 SET @sCustomerPayKindString = CONCAT(@sCustomerPayKindString
             , ' , ' ,
			 sGetRowPayKindName , ' INT NULL ') ;
      END IF ;
   END WHILE GetRowInfoLabel ;
   CLOSE objCustomerPayKindCURSOR ;
   SET @sCustomerPayKindString = 
       CONCAT('CREATE TABLE IF NOT EXISTS AndlysisREPORT001 (' ,
       @sCustomerPayKindString , ') ;' ) ;
   PREPARE CREATE_TABLE_PREPARE_STATEMENT FROM 
           @sCustomerPayKindString ;
   EXECUTE CREATE_TABLE_PREPARE_STATEMENT ;
   DEALLOCATE PREPARE CREATE_TABLE_PREPARE_STATEMENT ;
   SELECT * FROM AndlysisREPORT001 ; 
END $$$
DELIMITER ;