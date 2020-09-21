--债权合同模板所属资产包要素改成文本框
update tproject_factor_info t set t.c_fieldtype = '1' where t.c_factorcode = 'tasset_creditorcontract_projectcode';