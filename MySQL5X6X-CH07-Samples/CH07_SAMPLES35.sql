DELIMITER $$$
CREATE FUNCTION USER_FORMAT_DATE(
   pSetDateTimeInfo DATETIME,
   pDateTimeShowType VARCHAR(02) ) 
RETURNS VARCHAR(100) 
BEGIN
   DECLARE sProcessDateTime 
           VARCHAR(100) DEFAULT '' ;
   CASE WHEN pDateTimeShowType = 'DT' THEN
     IF (pSetDateTimeInfo IS NULL) THEN
        SET sProcessDateTime = 
           DATE_FORMAT(NOW(),
                       '%Y/%m/%d %H:%i:%s') ;
     ELSE
        SET sProcessDateTime = 
           DATE_FORMAT(pSetDateTimeInfo,
                       '%Y/%m/%d %H:%i:%s') ;
     END IF ;
   ELSE
     IF (pSetDateTimeInfo IS NULL) THEN
        SET sProcessDateTime = 
           DATE_FORMAT(NOW(),'%Y/%m/%d') ;
     ELSE
        SET sProcessDateTime = 
           DATE_FORMAT(pSetDateTimeInfo,'%Y/%m/%d') ;
     END IF ;
   END CASE ;
   RETURN sProcessDateTime ;
END $$$
DELIMITER ;