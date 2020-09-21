declare
begin

--上市股权资产管理中添加“资产作废流程”按钮
if not fc_IsExistsSysSubTrans('ListingEquityAssetManage','delReview') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('ListingEquityAssetManage', 'delReview', '资产作废流程', null, null, null, null, null, null, null, null);
end if;

--股权资产管理中添加“资产作废流程”按钮
if not fc_IsExistsSysSubTrans('equityAssetManage','delReview') then 
	insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('equityAssetManage', 'delReview', '资产作废流程', null, null, null, null, null, null, null, null);
end if;

end;
/
