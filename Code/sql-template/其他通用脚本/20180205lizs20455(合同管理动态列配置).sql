declare
begin
if not fc_IsExistsProjectModelConfig('contractManager') then
insert into tproject_model_config (C_MODELCODE, C_MODELNAME, C_QUERYSERVER, C_ISINITQUERY, C_ISHIGHQUERY, C_SCRIPTURL, C_ISCOLBTN, C_ISMUTISELECT, C_TABLEKEY)
values ('contractManager', '合同管理', '/pm/project/projectManageInfoList.json', '1', '0', '/js/tempconfig/contract/contractManage.js', '1', '0', 'contractId');
end if;
--合同按钮
if not fc_IsExistsTempConfigButton('50','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('50', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('52','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('52', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('52','equityDelivery','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('52', 'equityDelivery', 'more', '股权交割', '3', '1', 'equityDelivery()', 13, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('54','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('54', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','feeDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','feeDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','feeDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('08','investDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('08', 'investDistribute', 'more', '投资发放', '3', '1', 'investDistribute()', 21, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('08','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('08', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('56','delivAssetApprove','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('56', 'delivAssetApprove', 'more', '发起交割审批流程', '3', '1', 'approveAssetsDeliv()', 2, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('53','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('53', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','deleteContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'deleteContract', null, '合同作废', '1', '1', 'deleteContract', 6, null, null, null, 'contractManager', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','viewContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'viewContract', null, '合同查看', '1', '1', 'viewContract', 5, null, null, null, 'contractManager', null, null);
end if;

if not fc_IsExistsTempConfigButton('56','payMent','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('56', 'payMent', 'more', '支付', '3', '1', 'payMent()', 1, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('56','transfer','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('56', 'transfer', 'more', '转让公告确认', '3', '1', 'transfer()', 3, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','reviewContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'reviewContract', null, '合同复核', '1', '1', 'reviewContract', 3, null, null, null, 'contractManager', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','editContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'editContract', null, '合同变更', '1', '1', 'editContract', 2, null, null, null, 'contractManager', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','startProjectProcess','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'startProjectProcess', null, '发起流程', '1', '1', 'startProjectProcess', 1, null, null, null, 'contractManager', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','addContract','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'addContract', null, '合同创设', '1', '1', 'addContract', 0, null, null, null, 'contractManager', null, null);
end if;

if not fc_IsExistsTempConfigButton('contractManager','more','contractManager')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('contractManager', 'more', null, '更多', '3', '1', null, null, null, null, null, 'contractManager', '/contract/newcontract/generateCols.json?templatecode=contractManagerCols', null);
end if;

if not fc_IsExistsTempConfigButton('57','payMent','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('57', 'payMent', 'more', '支付', '3', '1', 'payMent()', 1, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('50','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('50', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('52','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('52', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('52','equityDelivery','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('52', 'equityDelivery', 'more', '股权交割', '3', '1', 'equityDelivery()', 13, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('54','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('54', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','feeDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('05','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('05', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','feeDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('01','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('01', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','feeDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'feeDistribute', 'more', '资金发放', '3', '1', 'feeDistribute()', 17, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','guaranteeContract','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'guaranteeContract', 'more', '保证合同管理', '3', '1', 'guaranteeContract()', 9, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('60','pawnManage','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('60', 'pawnManage', 'more', '抵质押物管理', '3', '1', 'pawnManage()', 8, null, null, null, 'contractManagerCols', null, null);
end if;

if not fc_IsExistsTempConfigButton('08','investDistribute','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('08', 'investDistribute', 'more', '投资发放', '3', '1', 'investDistribute()', 21, null, null, null, 'contractManagerCols', null, null); 
end if;

if not fc_IsExistsTempConfigButton('08','collectionPlan','contractManagerCols')then
insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE, C_DROPBTNURL, C_ISALIGNRIGHT)
values ('08', 'collectionPlan', 'more', '收款计划管理', '3', '1', 'collectionPlan()', 12, null, null, null, 'contractManagerCols', null, null);
end if;
--合同字段
if not fc_IsExistsTemplateField('contractManager','projectphase') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('projectphase', '项目阶段', 'contractManager', 0, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contractId') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contractId', '合同Id', 'contractManager', 0, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','busitype') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('busitype', '合同类型', 'contractManager', 0, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contractTypeName') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contractTypeName', '合同类型', 'contractManager', 5, '3', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contractNo') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contractNo', '纸质合同编号', 'contractManager', 2, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','projectName') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('projectName', '项目名称', 'contractManager', 3, '3', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contractName') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contractName', '合同名称', 'contractManager', 4, '1', '0', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contractType') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contractType', '合同类型code', 'contractManager', 5, '3', '6', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','signDate') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('signDate', '签约日期', 'contractManager', 6, '1', '1', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','rivalaccountcode') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('rivalaccountcode', '交易对手', 'contractManager', 7, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contractBalance') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contractBalance', '合同金额', 'contractManager', 8, '1', '16', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','payBal') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('payBal', '已付款', 'contractManager', 9, '1', '16', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','reciveBal') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('reciveBal', '已收款', 'contractManager', 10, '1', '16', null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','stock_state') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('stock_state', '合同状态code', 'contractManager', 0, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','rejectType') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('rejectType', '驳回状态code', 'contractManager', 0, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','noticeId') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('noticeId', '转让公告code', 'contractManager', 13, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','projectCode') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('projectCode', '项目名称', 'contractManager', 0, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','contract_state') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('contract_state', '合同状态', 'contractManager', 11, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','rejecttype') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('rejecttype', '驳回状态', 'contractManager', 12, '1', null, null, 1, null, null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','noticename') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('noticename', '转让公告', 'contractManager', 13, '1', null, null, 1, 'transNoticeDownload', null, null);
end if;

if not fc_IsExistsTemplateField('contractManager','investProp') then
insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH, C_ISNOTFACTORFIELD)
values ('investProp', '合同分类', 'contractManager', 5, '3', '6', 'COMMON_CONTRACT_TYPE', 1, null, null, null);
end if;

--
if not fc_IsExistsProjectTempConfig('contractManager') then 
insert into tproject_temp_config (C_TEMPLATECODE, C_TEMPLATENAME, C_ISPUBLIC, C_ISDEFAULT, L_ORDER, C_CREATEUSER, D_CREATETIME, C_ISSHOW, C_TEMPLATEDESC, C_LASTUPDATEUSER, D_LASTUPDATETIME, C_MODELCODE)
values ('contractManager', '合同管理', '0', '1', null, 'admin', to_date('01-08-2013 15:03:33', 'dd-mm-yyyy hh24:mi:ss'), '1', null, 'admin', to_date('22-09-2013 11:07:36', 'dd-mm-yyyy hh24:mi:ss'), 'contractManager');
end if;

if not fc_IsExistsTempConfigQuery('contractManager','contractNo','contractManager') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('contractManager', 'contractNo', '纸质合同编号', '1', 3, null, 'contractManager', '1');
end if;

if not fc_IsExistsTempConfigQuery('contractManager','projectName','contractManager') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('contractManager', 'projectName', '项目名称', '1', 1, null, 'contractManager', '1');
end if;

if not fc_IsExistsTempConfigQuery('contractManager','investProp','contractManager') then 
insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
values ('contractManager', 'investProp', '合同分类', '1', 2, null, 'contractManager', '1');
end if;

if not fc_IsExistsTempConfigField('contractManager','contractNo','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('contractNo', 'contractManager', '纸质合同编号', '1', 1, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','projectName','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('projectName', 'contractManager', '项目名称', '1', 2, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','contractName','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('contractName', 'contractManager', '合同名称', '1', 3, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','contractTypeName','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('contractTypeName', 'contractManager', '合同类型', '1', 4, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','signDate','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('signDate', 'contractManager', '签约日期', '1', 5, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','rivalaccountcode','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('rivalaccountcode', 'contractManager', '交易对手', '1', 6, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','contractBalance','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('contractBalance', 'contractManager', '合同金额', '1', 7, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','payBal','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('payBal', 'contractManager', '已付款', '1', 8, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','reciveBal','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('reciveBal', 'contractManager', '已收款', '1', 9, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','contract_state','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('contract_state', 'contractManager', '合同状态', '1', 10, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','rejecttype','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('rejecttype', 'contractManager', '驳回状态', '1', 11, 'contractManager');
end if;

if not fc_IsExistsTempConfigField('contractManager','noticename','contractManager') then 
insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
values ('noticename', 'contractManager', '转让公告', '1', 12, 'contractManager');
end if;
--合同管理页面按钮权限begin--
--合同作废按钮配置
--合同按钮权限
update  tproject_temp_config_button t set t.trans_code ='contractManager'  where t.c_templatecode in ('contractManager','contractManagerCols')
 and t.c_buttoncode not in ('more','viewContract') and t.trans_code is null;

update  tproject_temp_config_button t set t.sub_trans_code = t.c_buttoncode  where t.c_templatecode in ('contractManager','contractManagerCols')
 and t.c_buttoncode not in ('more','viewContract') and t.sub_trans_code is null;

--合同查看不做权限控制
update tproject_temp_config_button t set t.trans_code='',t.sub_trans_code='' where t.c_templatecode ='contractManager' and t.c_buttoncode='viewContract';

--合同创设
if not fc_IsExistsSysSubTrans('contractManager','addContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'addContract', '合同创设', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','addContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','addContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','addContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','addContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同发起流程
if not fc_IsExistsSysSubTrans('contractManager','startProjectProcess') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'startProjectProcess', '合同发起流程', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','startProjectProcess','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','startProjectProcess','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','startProjectProcess','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','startProjectProcess','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同变更
if not fc_IsExistsSysSubTrans('contractManager','editContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'editContract', '合同变更', null, null, null, null, null, null, null, null);
end  if;

if not fc_IsExistsSysUserRight('contractManager','editContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','editContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','editContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','editContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同复核
if not fc_IsExistsSysSubTrans('contractManager','reviewContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'reviewContract', '合同复核', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','reviewContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','reviewContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','reviewContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','reviewContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同作废
if not fc_IsExistsSysSubTrans('contractManager','reviewContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'deleteContract', '合同作废', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','deleteContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','deleteContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','deleteContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','deleteContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同收款计划管理
if not fc_IsExistsSysSubTrans('contractManager','collectionPlan') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'collectionPlan', '收款计划管理', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','collectionPlan','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','collectionPlan','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','collectionPlan','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','collectionPlan','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同股权交割
if not fc_IsExistsSysSubTrans('contractManager','equityDelivery') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'equityDelivery', '股权交割', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','equityDelivery','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','equityDelivery','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','equityDelivery','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','equityDelivery','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同资金发放
if not fc_IsExistsSysSubTrans('contractManager','feeDistribute') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'feeDistribute', '资金发放', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','feeDistribute','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','feeDistribute','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','feeDistribute','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','feeDistribute','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同保证合同管理
if not fc_IsExistsSysSubTrans('contractManager','guaranteeContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'guaranteeContract', '保证合同管理', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','guaranteeContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','guaranteeContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','guaranteeContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','guaranteeContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同投资发放
if not fc_IsExistsSysSubTrans('contractManager','investDistribute') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'investDistribute', '投资发放', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('investDistribute','more','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investDistribute', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('investDistribute','more','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investDistribute', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('investDistribute','more','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investDistribute', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('investDistribute','more','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investDistribute', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同抵质押物管理
if not fc_IsExistsSysSubTrans('contractManager','pawnManage') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'pawnManage', '抵质押物管理', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','investDistribute','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','investDistribute','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','investDistribute','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','investDistribute','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同支付
if not fc_IsExistsSysSubTrans('contractManager','payMent') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'payMent', '支付', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','payMent','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','payMent','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payMent','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payMent','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同支付后端分成费
if not fc_IsExistsSysSubTrans('contractManager','sharingFee') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'sharingFee', '支付后端分成费', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','sharingFee','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'sharingFee', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','sharingFee','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'sharingFee', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','sharingFee','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'sharingFee', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','sharingFee','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'sharingFee', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;


--合同转让公告确认
if not fc_IsExistsSysSubTrans('contractManager','transfer') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'transfer', '转让公告确认', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','transfer','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','transfer','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','transfer','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','transfer','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--更多
if not fc_IsExistsSysSubTrans('contractManager','more') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'more', '更多', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','more','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','more','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','more','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','more','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--发起交割审批流程--
if not fc_IsExistsSysSubTrans('contractManager','delivAssetApprove') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'delivAssetApprove', '发起交割审批流程', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','delivAssetApprove','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'delivAssetApprove', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','delivAssetApprove','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'delivAssetApprove', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','delivAssetApprove','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'delivAssetApprove', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','delivAssetApprove','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'delivAssetApprove', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--合同管理--
if not fc_IsExistsSysSubTrans('contractManager','contractManager') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'contractManager', '合同管理', null, 'contract/newcontract/list.htm', null, '1', null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','contractManager','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'contractManager', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','contractManager','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'contractManager', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','contractManager','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'contractManager', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','contractManager','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'contractManager', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--资产交割--
if not fc_IsExistsSysSubTrans('contractManager','deliveryOfAssets') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'deliveryOfAssets', '资产交割', null, null, null, '1', null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','deliveryOfAssets','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deliveryOfAssets', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','deliveryOfAssets','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deliveryOfAssets', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','deliveryOfAssets','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deliveryOfAssets', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','deliveryOfAssets','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deliveryOfAssets', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--合同作废--
if not fc_IsExistsSysSubTrans('contractManager','deleteContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'deleteContract', '合同作废', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','deleteContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','deleteContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','deleteContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','deleteContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'deleteContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同创设--
if not fc_IsExistsSysSubTrans('contractManager','addContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'addContract', '合同创设', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','addContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','addContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','addContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','addContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'addContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同发起流程--
if not fc_IsExistsSysSubTrans('contractManager','startProjectProcess') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'startProjectProcess', '合同发起流程', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','startProjectProcess','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','startProjectProcess','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','startProjectProcess','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','startProjectProcess','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'startProjectProcess', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--合同变更--
if not fc_IsExistsSysSubTrans('contractManager','editContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'editContract', '合同变更', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','editContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','editContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','editContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','editContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'editContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--合同复核--
if not fc_IsExistsSysSubTrans('contractManager','reviewContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'reviewContract', '合同复核', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','reviewContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','reviewContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','reviewContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','reviewContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'reviewContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--收款计划管理--
if not fc_IsExistsSysSubTrans('contractManager','collectionPlan') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'collectionPlan', '收款计划管理', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','collectionPlan','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','collectionPlan','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','collectionPlan','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','collectionPlan','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'collectionPlan', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--股权交割--
if not fc_IsExistsSysSubTrans('contractManager','equityDelivery') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'equityDelivery', '股权交割', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','equityDelivery','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','equityDelivery','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','equityDelivery','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','equityDelivery','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'equityDelivery', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--资金发放--
if not fc_IsExistsSysSubTrans('contractManager','feeDistribute') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'feeDistribute', '资金发放', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','feeDistribute','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','feeDistribute','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','feeDistribute','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','feeDistribute','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'feeDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--保证合同管理--
if not fc_IsExistsSysSubTrans('contractManager','guaranteeContract') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'guaranteeContract', '保证合同管理', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','guaranteeContract','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','guaranteeContract','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','guaranteeContract','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','guaranteeContract','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'guaranteeContract', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--投资发放--
if not fc_IsExistsSysSubTrans('contractManager','investDistribute') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'investDistribute', '投资发放', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','investDistribute','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','investDistribute','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','investDistribute','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','investDistribute','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'investDistribute', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--抵质押物管理--
if not fc_IsExistsSysSubTrans('contractManager','pawnManage') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'pawnManage', '抵质押物管理', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','pawnManage','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'pawnManage', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','pawnManage','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'pawnManage', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','pawnManage','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'pawnManage', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','pawnManage','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'pawnManage', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

--支付--
if not fc_IsExistsSysSubTrans('contractManager','payMent') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'payMent', '支付', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','payMent','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','payMent','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payMent','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payMent','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--支付后端分成费--
if not fc_IsExistsSysSubTrans('contractManager','sharingFee') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'sharingFee', '支付后端分成费', null, null, null, null, null, null, null, null);
end if;
if not fc_IsExistsSysUserRight('contractManager','payMent','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','payMent','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payMent','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','payMent','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'payMent', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--转让公告确认--
if not fc_IsExistsSysSubTrans('contractManager','transfer') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'transfer', '转让公告确认', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','transfer','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','transfer','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','transfer','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','transfer','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'transfer', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
--更多--
if not fc_IsExistsSysSubTrans('contractManager','more') then 
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('contractManager', 'more', '更多', null, null, null, null, null, null, null, null);
end if;

if not fc_IsExistsSysUserRight('contractManager','more','admin',0,0,'1') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;

if not fc_IsExistsSysUserRight('contractManager','more','admin',0,0,'2') then
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','more','admin',0,0,'2') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '2', '1');
end if;

if not fc_IsExistsSysRoleRight('contractManager','more','admin',0,0,'1') then
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('contractManager', 'more', 'admin', 'admin', 0, 0, 0, '1', '1');
end if;
end;
/