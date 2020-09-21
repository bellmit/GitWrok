declare
begin
update  tproject_temp_config_button t set t.C_BUTTONNAME = '转让公告确认' where t.C_TEMPLATECODE ='contractManagerCols' and t.C_BUTTONCODE='transfer';
update  tsys_subtrans t set t.sub_trans_name = '转让公告确认' where t.sub_trans_code = 'transfer' and t.trans_code ='contractManager';
commit;
end;
/

