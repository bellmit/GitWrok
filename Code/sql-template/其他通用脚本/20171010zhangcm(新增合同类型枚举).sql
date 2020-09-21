declare
begin

delete tinvest_type t where t.C_INVESTTYPE in ('54','58') ;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''13''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('13', '融资合同', '融资合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''50''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('50', '债权转让合同', '债权转让合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''51''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('51', '收益权转让合同', '收益权转让合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''52''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('52', '以股抵债合同', '以股抵债合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''53''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('53', '折扣变现合同', '折扣变现合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''54''') then
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('54', '债务更新合同', '债务更新合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '4');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''56''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('56', '商业化收购合同', '商业化收购合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''57''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('57', '结构化收购合同', '结构化收购合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''58''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('58', '受托处置服务合同', '受托处置服务合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''59''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('59', '增信服务合同', '增信服务合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''60''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('60', '远期不良债务重组合同', '远期不良债务重组合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''61''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('61', '委托处置服务合同', '委托置服务合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

if not fc_IsDataExists('select count(*) from tinvest_type t where t.C_INVESTTYPE = ''62''') then	
	insert into tinvest_type (C_INVESTTYPE, C_NAME, C_ALIAS, C_TRANS, C_ISUSE, C_CREATEUSER, D_CREATETIME, C_LSTMNTUSER, D_LSTMNTTIME, C_INVESTPROP)
values ('62', '中介机构服务合同', '中介机构服务合同', null, '0', 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('27-04-2017 17:17:15', 'dd-mm-yyyy hh24:mi:ss'), '3');
end if;

end;
/


