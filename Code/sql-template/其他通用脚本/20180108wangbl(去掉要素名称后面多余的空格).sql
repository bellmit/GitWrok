--去掉要素名称后面多余的空格
update tproject_factor_info  t set t.c_factorname=trim(t.c_factorname);