declare
begin
--���ɻ�ծ--
update tproject_template_field t set t.c_fieldwidth ='150' where t.c_modelcode ='investProjectManage';
update tproject_template_field t set t.c_comptype ='16' where t.c_modelcode ='investProjectManage' and t.c_fieldcode in('trustscale');
--������ʾ--
update tproject_template_field t set t.c_comptype ='4' where t.c_modelcode ='investProjectManage' and t.c_fieldcode in('projectschedule','projectphase_view','projectstatus_view');
--���׶���
--��ծת��ҳ�����--
update tproject_template_field t set t.c_fieldwidth ='150' where t.c_modelcode ='debtToStockProjectManage';
update tproject_template_field t set t.c_comptype ='16' where t.c_modelcode ='debtToStockProjectManage' and t.c_fieldcode 
in('debtcorpusamount','debtinterest','bidamount','ys','qrsr','zf');
update tproject_template_field t set t.c_comptype ='4' where t.c_modelcode ='debtToStockProjectManage' and t.c_fieldcode in('projectphase_display','projectstatus_display','activity','loancount','assetCount');
end;
/
