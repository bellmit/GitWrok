declare
begin
--20181012liusl25724(修改文档表字段长度) --start--
if fc_IsColExists('tproject_text','c_projectcode') then
   execute immediate 'alter table tproject_text modify c_projectcode varchar2(25)';
end if;
--20181012liusl25724(修改文档表字段长度) --end--
commit;
end;
/