--20171228wangbl(合同管理首页转让公告确认按钮改为发起诉讼时效批量调整流程)
update  tproject_temp_config_button t set t.c_buttonname = '发起诉讼时效批量调整流程' where  t.c_buttoncode = 'transfer' and t.c_templatecode='contractManagerCols';
