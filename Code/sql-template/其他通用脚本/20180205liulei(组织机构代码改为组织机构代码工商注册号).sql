update tproject_factor_info t set t.c_factorname='组织机构代码/工商注册号' where t.c_factorcode = 'customer_organizationcode'; 

update tproject_temp_config_field t set t.c_fieldname='组织机构代码/工商注册号' where t.c_fieldcode = 'amcorganizationcode'; 