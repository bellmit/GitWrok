
--Ҫ�ظ��� begin--
--��ϵ��ѡ����Ҫ�� ���� �����ֶ�Ϊ rivalid --
update tproject_factor_info t  set t.c_factorfield ='rivalid' ,t.c_factordesc ='�洢�ֶ�:c_rivalid;��ϵ��ѡ����' where t.c_factorcode = 'tinvest_contract_actualCust';


update tproject_factor_info t  set t.c_factorfield ='rivalid' ,t.c_factordesc ='�洢�ֶ�:c_rivalid;��ϵ��ѡ����' where t.c_factorcode = 'tinvest_contract_financing';

update tproject_factor_info t  set t.c_factorfield ='rivalid' ,t.c_factordesc ='�洢�ֶ�:c_rivalid;��ϵ��ѡ����' where t.c_factorcode = 'tinvest_contract_enterprise';

update tproject_factor_info t  set t.c_factorfield ='rivalaccountcode' ,t.c_factordesc ='�洢�ֶ�:c_rivalaccountcode;�˻�ѡ����' where t.c_factorcode = 'tinvest_contract-beneficiary';

--����ѡ����Ҫ�� ���� �����ֶ�Ϊ rivalid--
update tproject_factor_info t  set t.c_factorfield ='rivalid' ,t.c_factordesc ='�洢�ֶ�:c_rivalid;����ѡ����' where t.c_factorcode = 'tinvest_contract-beneficiary2';

update tproject_factor_info t  set t.c_factordesc ='�洢�ֶ�:c_rivalid;����ѡ����' where t.c_factorcode = 'tinvest_contract-transferee';
--�˻�ѡ���� ����������Ϣ--
update tproject_factor_info t  set t.c_factordesc ='�洢�ֶ�:c_rivalaccountcode;�˻�ѡ����' where t.c_factorcode in ('tinvest_contract-rivalaccountcode','tinvest_contract_rivalid','tinvest_contract_repayer');
--Ҫ�ظ��� end--
update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract-transferee}'' union select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract-transferee}'' and t.c_projectnature = ''99''' where t.c_factorcode ='tinvest_contract-transferee';

update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract_actualCust}'' union select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract_actualCust}'' and t.c_projectnature = ''99''' where t.c_factorcode ='tinvest_contract_actualCust';

update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract_financing}'' union select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract_financing}'' and t.c_projectnature = ''99''' where t.c_factorcode ='tinvest_contract_financing';

update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract_enterprise}'' union select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract_enterprise}'' and t.c_projectnature = ''99''' where t.c_factorcode ='tinvest_contract_enterprise';

update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract-beneficiary}'' union select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract-beneficiary}'' and t.c_projectnature = ''99'' union select ci.c_customername as factorvalue from tcustomer_accountinfo ca, tcustomer_role_relation crr, tcustomer_info ci where ca.c_relationcode=crr.c_relationcode and crr.c_customercode=ci.c_customercode and ca.c_accountcode = ''{tinvest_contract-beneficiary}''' where t.c_factorcode ='tinvest_contract-beneficiary';

update tproject_factor_info t set t.c_factorsqlval ='select t.c_customername factorvalue from tcustomer_info t,tcustomer_role_relation tt where t.c_customercode = tt.c_customercode and tt.c_relationcode= ''{tinvest_contract-beneficiary2}'' union select t.c_projectname factorvalue from tproject_info t  where t.c_projectcode = ''{tinvest_contract-beneficiary2}'' and t.c_projectnature = ''99'' union select ci.c_customername as factorvalue from tcustomer_accountinfo ca, tcustomer_role_relation crr, tcustomer_info ci where ca.c_relationcode=crr.c_relationcode and crr.c_customercode=ci.c_customercode and ca.c_accountcode = ''{tinvest_contract-beneficiary2}''' where t.c_factorcode ='tinvest_contract-beneficiary2';
