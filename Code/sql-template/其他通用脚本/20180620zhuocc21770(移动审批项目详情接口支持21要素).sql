declare
begin
--��Ŀ���Ա--
update tproject_factor_info t set t.c_contentbound ='amcProjectMobileManager.getProjectMembersForMobile()' where t.c_factorcode ='tproject_info_teammembers';
--�ʽ���Դ--
update tproject_factor_info t set t.c_contentbound ='amcProjectMobileManager.getFundSourceForMobile()' where t.c_factorcode ='tproject_transStructureinfo';
--Ͷ��ͨ��--
update tproject_factor_info t set t.c_contentbound ='amcProjectMobileManager.getInvestApproachForMobile()' where t.c_factorcode ='tproject_transStructureinfo_ts';
end;
/
