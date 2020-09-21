--修改投资方式输入长度
update tproject_factor_info tfi set tfi.l_maxlength = 100 where tfi.c_factorcode ='tproject_info_investtype';
