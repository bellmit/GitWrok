create or replace function fn_getParentList(listId IN VARCHAR2,projectcode IN VARCHAR2) 
RETURN VARCHAR2
AS
pTemp VARCHAR2(1000);
projectlist varchar2(100);
BEGIN
  select c_projectlist into projectlist from tproject_list_temp t where t.c_projectcode=projectcode;
select replace(concatstr(c_listname),',','/') as zllx into  pTemp from
  (select t.*,LEVEL from  (select * from tproject_list where c_projectlist=projectlist) t start with c_listid=listId connect by prior c_parentid = c_listid  order  by LEVEL desc ); 
RETURN pTemp;
END fn_getParentList;
/
