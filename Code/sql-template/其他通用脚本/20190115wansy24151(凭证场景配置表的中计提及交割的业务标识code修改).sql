declare
begin
--��֤��ת�չ��ɱ�
update tvoucher_scene_config t set t.c_code = '22163' where t.c_code = 'nocash';
--�������
update tvoucher_scene_config t set t.c_code = '22400' where t.c_code = 'profit_accured';
--���ʳɱ�����
update tvoucher_scene_config t set t.c_code = '22401' where t.c_code = 'financing_accured';
--���ʼ�ֵ����
update tvoucher_scene_config t set t.c_code = '22402' where t.c_code = 'value_adjust';
--���ʲ�����
update tvoucher_scene_config t set t.c_code = '22403' where t.c_code = 'asset_transfer';
commit;
end;
/
