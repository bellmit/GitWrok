CREATE OR REPLACE FUNCTION fn_parsejson(p_jsonstr varchar2,p_key varchar2) RETURN VARCHAR2
IS
  rtnVal VARCHAR2(1000);
  i NUMBER(2);
  jsonkey VARCHAR2(500);
  jsonvalue VARCHAR2(1000);
  json VARCHAR2(3000);
BEGIN
  IF p_jsonstr IS NOT NULL THEN
     json := replace(p_jsonstr,'":[{"','&') ;
     json := REPLACE(json,'{','') ;
     json := REPLACE(json,'}','') ;
     json := replace(json,'","','&') ;
     json := replace(json,',"','&') ;
     json := replace(json,'"','') ;
     json := replace(json,'[','') ;
     json := replace(json,']','') ;
     FOR temprow IN(SELECT strvalue AS VALUE FROM TABLE(fn_split2(json, '&'))) LOOP
        IF temprow.VALUE IS NOT NULL THEN
           i := 0;
           jsonkey := '';
           jsonvalue := '';
           FOR tem2 IN(SELECT strvalue AS VALUE FROM TABLE(fn_split2(temprow.value, ':'))) LOOP
               IF i = 0 THEN
                  jsonkey := tem2.VALUE;
               END IF;
               IF i = 1 THEN
                  jsonvalue := tem2.VALUE;
               END IF;

               i := i + 1;
           END LOOP;

           IF(jsonkey = p_key) THEN
               rtnVal := jsonvalue;
           END if;
        END IF;
     END LOOP;
  END IF;
  RETURN rtnVal;
END fn_parsejson;
/