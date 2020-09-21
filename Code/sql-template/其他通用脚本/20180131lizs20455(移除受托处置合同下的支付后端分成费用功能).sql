declare
begin
delete from TPROJECT_TEMP_CONFIG_BUTTON t where t.C_MODELCODE = '58' and  t.C_BUTTONCODE ='sharingFee' and t.C_TEMPLATECODE ='contractManagerCols';
end;
/

