CLOSE ALL
USE CARGO IN 0
USE TRANDATA IN 0
GOTO TOP
DO WHILE !EOF()
       SELECT CARGO
       SET ORDER TO BCODE
       SEEK TRANDATA.BCODE
       IF FOUND()
           SELECT TRANDATA
           REPLACE ID WITH CARGO.ID,DEID WITH CARGO.DEID,;
           VEID WITH CARGO.VENID
       ENDIF     
       SELECT TRANDATA
       SKIP
  ENDDO     
  CLOSE ALL