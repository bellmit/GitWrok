declare
begin

delete tinvest_type t where t.C_INVESTTYPE in ('54','58') ;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''13''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('13', '���ʺ�ͬ', '���ʺ�ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''50''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('50', 'ծȨת�ú�ͬ', 'ծȨת�ú�ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''51''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('51', '����Ȩת�ú�ͬ', '����Ȩת�ú�ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''52''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('52', '�Թɵ�ծ��ͬ', '�Թɵ�ծ��ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''53''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('53', '�ۿ۱��ֺ�ͬ', '�ۿ۱��ֺ�ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''54''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('54', 'ծ����º�ͬ', 'ծ����º�ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''56''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('56', '��ҵ���չ���ͬ', '��ҵ���չ���ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''57''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('57', '�ṹ���չ���ͬ', '�ṹ���չ���ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''58''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('58', '���д��÷����ͬ', '���д��÷����ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''59''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('59', '���ŷ����ͬ', '���ŷ����ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''60''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('60', 'Զ�ڲ���ծ�������ͬ', 'Զ�ڲ���ծ�������ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''61''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('61', 'ί�д��÷����ͬ', 'ί���÷����ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''62''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('62', '�н���������ͬ', '�н���������ͬ', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

end;
/


