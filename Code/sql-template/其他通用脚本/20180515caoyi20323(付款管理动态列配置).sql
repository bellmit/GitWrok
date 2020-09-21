declare
begin
if not fc_IsExistsProjectModelConfig('paymentList') then
    insert into tproject_model_config (C_MODELCODE, C_MODELNAME, C_QUERYSERVER, C_ISINITQUERY, C_ISHIGHQUERY, C_SCRIPTURL, C_ISCOLBTN, C_ISMUTISELECT, C_TABLEKEY, C_ISCOMMONQUERY, C_QUERYSQL)
    values ('paymentList', '�������', '/financial/payment/paymentList.json', '1', null, null, '1', '1', 'ijourid', null, null);
end if;

if not fc_IsExistsTempConfigButton('paymentList','pay','default') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
    values ('paymentList', 'pay', null, 'ҵ��֧��', '1', '1', 'pay', 0, 'paymentmanage', 'pay', null, 'default');
end if;

if not fc_IsExistsTempConfigButton('paymentList','viewRecord','default') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
    values ('paymentList', 'viewRecord', null, '�鿴', '2', '1', 'viewRecord', 1, null, null, null, 'default');
end if;

if not fc_IsExistsTempConfigButton('paymentList','approvalpayment','default') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
    values ('paymentList', 'approvalpayment', null, '����ָ������', '1', '1', 'approvalpayment', 2, 'paymentmanage', 'approvalpayment', null, 'default');
end if;

if not fc_IsExistsTempConfigButton('paymentList','backpay','default') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
    values ('paymentList', 'backpay', null, '�ؿ�ת��', '1', '1', 'backpay', 3, 'paymentmanage', 'backpay', null, 'default');
end if;

if not fc_IsExistsTempConfigButton('paymentList','exceldown','default') then
    insert into tproject_temp_config_button (C_MODELCODE, C_BUTTONCODE, C_PARENTCODE, C_BUTTONNAME, C_BUTTONTYPE, C_EVENTTYPE, C_CLICKBOUND, L_ORDER, TRANS_CODE, SUB_TRANS_CODE, C_ICON, C_TEMPLATECODE)
    values ('paymentList', 'exceldown', null, 'Excel����', '1', '1', 'exceldown', 4, 'paymentmanage', 'exceldown', null, 'default');
end if;

if not fc_IsExistsTemplateField('paymentList','busiflag') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('busiflag', '����/ת������', 'paymentList', null, '3', '6', 'AMC_PAYMENT_TRANSFER_TYPE', 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','projectname') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('projectname', '��Ŀ����', 'paymentList', null, '3', '1', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','rivalid') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('rivalid', '�տ', 'paymentList', null, '3', '7', 'customerSelectorAsset(''rivalid'',''1'',''4'')', 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','status') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('status', '����״̬', 'paymentList', null, '2', '6', 'CHECK_FLAG', 1, null, null);
else
	update tproject_template_field t set t.C_FIELDNAME = '����״̬',t.C_FIELDTYPE = '2',t.C_VALUEBOUND = 'CHECK_FLAG' where t.C_FIELDCODE = 'status' and t.C_MODELCODE = 'paymentList';
end if;

if not fc_IsExistsTemplateField('paymentList','preoccurdate') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('preoccurdate', 'Ԥ�Ƹ�������', 'paymentList', null, '2', '28', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','preoccurbalance') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('preoccurbalance', '������', 'paymentList', null, '1', '18', null, 1, 'viewMoney', null);
end if;

if not fc_IsExistsTemplateField('paymentList','fundacid') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('fundacid', '����˻���Ϣ', 'paymentList', null, '1', '4', null, 1, 'viewFundacid', null);
end if;

if not fc_IsExistsTemplateField('paymentList','acconame') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('acconame', '�տ�˻�����', 'paymentList', null, '1', '1', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','accoid') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('accoid', '�տ��˻�', 'paymentList', null, '1', '1', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','processinstanceid') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('processinstanceid', '����ʵ����', 'paymentList', null, '1', '1', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','paysource') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('paysource', '������Դ', 'paymentList', null, '1', '1', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','predictdate') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('predictdate', 'Ԥ�Ƹ�������', 'paymentList', null, '1', '4', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','ijourid') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('ijourid', '��ˮ���', 'paymentList', null, '1', '1', null, 1, null, null);
end if;

if not fc_IsExistsTemplateField('paymentList','paystatus') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('paystatus', '����״̬', 'paymentList', null, '1', '4', null, 1, null, null);
end if;

if not fc_IsExistsProjectTempConfig('paymentList') then
    insert into tproject_temp_config (C_TEMPLATECODE, C_TEMPLATENAME, C_ISPUBLIC, C_ISDEFAULT, L_ORDER, C_CREATEUSER, D_CREATETIME, C_ISSHOW, C_TEMPLATEDESC, C_LASTUPDATEUSER, D_LASTUPDATETIME, C_MODELCODE)
    values ('paymentList', '�������', '1', '1', null, 'admin', to_date('10-05-2018 15:14:45', 'dd-mm-yyyy hh24:mi:ss'), '0', '�������', 'admin', to_date('13-05-2018 19:52:58', 'dd-mm-yyyy hh24:mi:ss'), 'paymentList');
end if;


if not fc_IsExistsTempConfigQuery('paymentList','busiflag','paymentList') then
	insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
	values ('paymentList', 'busiflag', '����/ת������', '1', 0, null, 'paymentList', '1');
end if;

if not fc_IsExistsTempConfigQuery('paymentList','projectname','paymentList') then
	insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
	values ('paymentList', 'projectname', '��Ŀ����', '1', 1, null, 'paymentList', '1');
end if;

if not fc_IsExistsTempConfigQuery('paymentList','rivalid','paymentList') then
	insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
	values ('paymentList', 'rivalid', '�տ', '1', 2, null, 'paymentList', '1');
end if;

if not fc_IsExistsTempConfigQuery('paymentList','preoccurdate','paymentList') then
	insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
	values ('paymentList', 'preoccurdate', 'Ԥ�Ƹ�������', '1', 3, null, 'paymentList', '1');
end if;

if not fc_IsExistsTempConfigQuery('paymentList','status','paymentList') then
	insert into tproject_temp_config_query (C_TEMPLATECODE, C_FIELDCODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_DEFVALUE, C_MODELCODE, C_ISBASEQUERY)
	values ('paymentList', 'status', '����״̬', '1', 4, null, 'paymentList', '1');
else
	update tproject_temp_config_query t set t.C_FIELDNAME = '����״̬' where t.C_TEMPLATECODE = 'paymentList' and t.C_MODELCODE = 'paymentList' and t.C_FIELDCODE = 'status';
end if;


if not fc_IsExistsTempConfigField('paymentList','projectname','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('projectname', 'paymentList', '��Ŀ����', '1', 1, 'paymentList');
end if;

if fc_IsExistsTempConfigField('paymentList','status','paymentList') then
	delete from tproject_temp_config_field t where t.C_TEMPLATECODE = 'paymentList' and t.C_MODELCODE = 'paymentList' and t.C_FIELDCODE = 'status';
end if;

if not fc_IsExistsTempConfigField('paymentList','paystatus','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('paystatus', 'paymentList', '����״̬', '1', 2, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','busiflag','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('busiflag', 'paymentList', '����/ת������', '1', 3, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','predictdate','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('predictdate', 'paymentList', 'Ԥ�Ƹ�������', '1', 4, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','preoccurbalance','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('preoccurbalance', 'paymentList', '������', '1', 5, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','fundacid','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('fundacid', 'paymentList', '����˻���Ϣ', '1', 7, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','rivalid','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('rivalid', 'paymentList', '�տ', '1', 8, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','acconame','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('acconame', 'paymentList', '�տ�˻�����', '1', 9, 'paymentList');
end if;

if not fc_IsExistsTempConfigField('paymentList','accoid','paymentList') then
	insert into tproject_temp_config_field (C_FIELDCODE, C_TEMPLATECODE, C_FIELDNAME, C_ISSHOW, L_ORDER, C_MODELCODE)
	values ('accoid', 'paymentList', '�տ��˻�', '1', 10, 'paymentList');
end if;

if not fc_IsExistsTemplateField('paymentList','checkflag') then
    insert into tproject_template_field (C_FIELDCODE, C_FIELDNAME, C_MODELCODE, L_ORDER, C_FIELDTYPE, C_COMPTYPE, C_VALUEBOUND, L_COLSPAN, C_COLRENDERER, C_FIELDWIDTH)
    values ('checkflag', '����״ֵ̬', 'paymentList', null, '1', '4', null, 1, null, null);
end if;

end;
/
