--[201802230308]20180511shiph22854�ṹ���չ���ͬҲ��Ҫ��ʾת�ù���ȷ�ϰ�ť--start--
declare
begin
--tinvest_contract.c_investtype=57 �ṹ���չ���ͬ
if not fc_IsExistsTempConfigButton('57','transfer','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('57', 'transfer', 'more', 'ת�ù���ȷ��', '3', '1', 'transfer()', 3, 'contractManager', 'transfer', null, 'contractManagerCols', null, null);
end if;

end;
/
--[201802230308]20180511shiph22854�ṹ���չ���ͬҲ��Ҫ��ʾת�ù���ȷ�ϰ�ť--end--
