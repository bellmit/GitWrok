--修改出资平台的默认值
update tproject_factor_info tfi set tfi.c_factordefval = 'FDefault' where tfi.c_factorcode = 'tproject_info_extfield10_ts';