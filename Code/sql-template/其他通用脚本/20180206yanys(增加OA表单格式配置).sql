declare
begin
  if not fc_isexistsrecord('TFLOW_FORMCONTENT','c_formcode','assetpacket') then  
	   execute immediate 'insert into tflow_formcontent (C_FORMCODE, C_FROMNAME, C_OUTSYSTEMFLOWKEY, C_FORMCONTENTTYPE, C_OUTSYSTEMFLOWKEYFORVIEW, C_PREVIEWURL, C_PREVIEWJSONDATA, C_FORMCONTENTFORMAT, C_FORMCONTENT)
          values ('||chr(39)||'assetpacketttt'||chr(39)||', '||chr(39)||'资产包立项审批流程'||chr(39)||', null,'||chr(39)|| '1'||chr(39)||', null, null, null, null, '||chr(39)||''||chr(39)||')';
  end if;
end; 
/
