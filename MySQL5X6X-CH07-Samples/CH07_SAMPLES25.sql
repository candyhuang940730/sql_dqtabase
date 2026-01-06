DELIMITER $$$
CREATE PROCEDURE AddSequenceList(IN boolSequenceType BOOL)
BEGIN
  DECLARE iStartNumber INT DEFAULT 1 ;
  DECLARE iEndNumber   INT DEFAULT 100 ;
  DECLARE iInterval    INT DEFAULT 2 ;
  DECLARE iResultTotal INT DEFAULT 0 ;
  IF boolSequenceType = TRUE THEN
     SET iStartNumber = 1 ;
     SET iEndNumber= 99 ;
  ELSE
     SET iStartNumber = 2 ;
     SET iEndNumber = 100 ;
  END IF;
  BeginLoop: WHILE (iStartNumber <= iEndNumber) DO
     IF boolSequenceType = TRUE THEN
        IF iStartNumber = 33 Then
           SET iStartNumber = iStartNumber + iInterval ;
           ITERATE BeginLoop ;
	    ELSE
           SET iResultTotal = iResultTotal + iStartNumber ;
		   SET iStartNumber = iStartNumber + iInterval ;
        END IF ;
     ELSE
        IF iStartNumber = 22 Then
           SET iStartNumber = iStartNumber + iInterval ;
           ITERATE BeginLoop ;
		ELSE
           SET iResultTotal = iResultTotal + iStartNumber ;
           SET iStartNumber = iStartNumber + iInterval ;
        END IF;
     END IF ;
  END WHILE BeginLoop ;
  SELECT iResultTotal AS 數列加總計算結果 ;
END $$$
DELIMITER ;