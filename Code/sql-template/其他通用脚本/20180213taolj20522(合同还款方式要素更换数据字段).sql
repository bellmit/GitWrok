--����Ҫ�������ֵ�ȡֵ
update tproject_factor_info t set t.c_valuebound = 'AMC_REPAYWAY' where t.c_factorcode = 'tinvest_contract_repaytype';
--��ʷ�������ݵ���
update tinvest_contract t set t.c_repaytype = '0' where t.c_repaytype = '20';

update tinvest_contract t set t.c_repaytype = '1' where t.c_repaytype = '32';

update tinvest_contract t set t.c_repaytype = '2' where t.c_repaytype = '31';

update tinvest_contract t set t.c_repaytype = '4' where t.c_repaytype = '10';

update tinvest_contract t set t.c_repaytype = '9' where t.c_repaytype = '99';