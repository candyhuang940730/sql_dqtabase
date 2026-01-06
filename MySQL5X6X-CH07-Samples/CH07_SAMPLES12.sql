SET @iArg01 = Round(Rand() * 10000, 0) ;
SET @sArg02 = 'The Variable Call By Reference' ;
SET @dArg03 = NOW() ;
SELECT 'Before Call Stored Procedure' AS MEMO1, 
       @iArg01 AS ARG1 , @sArg02 AS ARG2 , @dArg03 AS ARG3 ;
CALL ShowParameterValues(@iArg01 , @sArg02 , @dArg03) ;
SELECT 'Call Stored Procedure After' AS MEMO1, 
       @iArg01 AS ARG1 , @sArg02 AS ARG2 , @dArg03 AS ARG3 ;