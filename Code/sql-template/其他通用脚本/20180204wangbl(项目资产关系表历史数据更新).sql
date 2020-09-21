--项目资产表历史数据更新
update TDISPOSAL_OBJECTINFO t set t.c_isvalid = '1' where t.c_isvalid is null;