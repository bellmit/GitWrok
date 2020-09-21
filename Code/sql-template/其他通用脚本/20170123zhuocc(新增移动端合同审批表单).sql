delete from tmobile_config_form t where t.C_FORMURL='/contract/newcontract/approveContractFlowForm.htm';
insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('/contract/newcontract/approveContractFlowForm.htm', '合同审批表单', null, 'newContractManager.getContractAproveForMobile()', '1', 'MOBILE', null,'1');
