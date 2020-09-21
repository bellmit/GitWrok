declare
begin
if  fc_IsExistsProjectFactorInfo('tproject_info_corpusamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_corpusamount';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_debtamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_debtamount';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_assetinterest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_assetinterest';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_defaultinterest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_defaultinterest';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_assistpayfee') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_assistpayfee';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_othermoney') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_othermoney';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_requiredfund') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_requiredfund';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_prereclaimbalance') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_prereclaimbalance';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_trustscale') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_trustscale';
end if;

if  fc_IsExistsProjectFactorInfo('tproject_info_destineDimensions') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tproject_info_destineDimensions';
end if;

if  fc_IsExistsProjectFactorInfo('ttrust_contract_contractamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='ttrust_contract_contractamount';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_rdebtamount_zr') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_rdebtamount_zr';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_debtamount_zr') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_debtamount_zr';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_debtinterest_zr') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_debtinterest_zr';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract-contractbalance_zr') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract-contractbalance_zr';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract-assignbalance') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract-assignbalance';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_disbursementfee_zg') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_disbursementfee_zg';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_rdebtamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_rdebtamount';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_debtamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_debtamount';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_debtinterest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_debtinterest';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_rdebtamount_cj') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_rdebtamount_cj';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_debtamount_cj') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_debtamount_cj';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_debtinterest_cj') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_debtinterest_cj';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_guaranteeamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_guaranteeamount';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract-contractbalance_hk') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract-contractbalance_hk';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract-tzje') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract-tzje';
end if;


if  fc_IsExistsProjectFactorInfo('tinvest_contract_equityinvestmentamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_equityinvestmentamount';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_frontfee') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_frontfee';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_financial_advisorfee') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_financial_advisorfee';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_agreedrepurchaseprice') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_agreedrepurchaseprice';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_qgzycontractbalance') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_qgzycontractbalance';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_detail_npaassetpenaltyinterest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_detail_npaassetpenaltyinterest';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract-contractbalance') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract-contractbalance';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_backenddesc') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_backenddesc';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_contractamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_contractamount';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_gqfe') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_gqfe';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_disbursementfee_cj') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_disbursementfee_cj';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_disbursementfee_zr') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_disbursementfee_zr';
end if;

if  fc_IsExistsProjectFactorInfo('tinvest_contract_promisebalance') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tinvest_contract_promisebalance';
end if;

if  fc_IsExistsProjectFactorInfo('tasset_creditorcontract_corpusamount') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tasset_creditorcontract_corpusamount';
end if;


if  fc_IsExistsProjectFactorInfo('tasset_creditorcontract_interest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tasset_creditorcontract_interest';
end if;


if  fc_IsExistsProjectFactorInfo('tasset_creditorcontract_compoundinterest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tasset_creditorcontract_compoundinterest';
end if;

if  fc_IsExistsProjectFactorInfo('tasset_creditorcontract_defaultinterest') then
	update tproject_factor_info t set t.l_maxlength = 16 ,t.c_valuebound ='2' , t.c_fieldconfig ='{"integerNum":"13"}' where t.c_factorcode ='tasset_creditorcontract_defaultinterest';
end if;
end;
/