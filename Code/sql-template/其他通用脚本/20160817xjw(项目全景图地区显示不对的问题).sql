--�޸������������Ե�����
update tproject_factor_info t set t.c_factorsqlval = 'select t.c_areaname as factorvalue  from tareainfo t where t.c_areaid = ''{tproject_info_county}'''  where t.c_factorcode = 'tproject_info_county';

--�����᰸����
alter table tproject_info modify c_companyname VARCHAR2(200);
update tproject_factor_info t set t.l_maxlength = '200' where t.c_factorcode = 'tproject_info_companyname';