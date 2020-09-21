declare 
begin
 if not fc_isseqexists('seq_assetcode') then
   execute immediate 'create sequence seq_assetcode
   increment by 1
   start with 1
   maxvalue 9999
   nocache';
 end if; 
end;
/