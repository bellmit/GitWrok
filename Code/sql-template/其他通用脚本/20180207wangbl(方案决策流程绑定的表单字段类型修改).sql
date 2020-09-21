--方案决策流程绑定的表单字段类型修改为金额输入框
update tflowformdesign t  set t.c_fieldtype = '12' where t.process_id='meetingApprove' and t.c_fieldcode = 'authorizedprice';