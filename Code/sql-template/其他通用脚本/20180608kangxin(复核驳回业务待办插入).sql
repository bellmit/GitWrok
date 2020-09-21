set define off;
declare 
v_clob_afn clob;

begin
--投后跟踪计划提醒
v_clob_afn :='select distinct t.c_projectcode,
        ft.c_modifyuser userid,
        (t.d_lastupdatetime - to_date(''1970-01-01'', ''yyyy-mm-dd'') - 8 / 24) *86400000 senddate,
        c_projectname||''复核驳回提醒'' msgtitle,
        ''项目名称['' || t.c_projectcode  || '':'' || t.c_projectname || '']''||
		''复核被驳回请尽快修复''  msgcontent,
       case t.c_projectnature when ''01'' then
        ''/packetreception/assetpacket/list.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname 
	   when ''02'' then 
	   ''/pm/investproject/investProjectlist.htm?projectnature=02''||CHR(38) ||''projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname
		when ''06'' then 
	   ''/pm/financingproject/financingprojectlist.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname
	    when ''07'' then 
	   ''/pm/investproject/investProjectlist.htm?projectnature=07''||CHR(38) ||''projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname
	    when ''08'' then 
	   ''/pm/investproject/investProjectlist.htm?projectnature=08''||CHR(38) ||''projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname
		when ''09'' then 
	   ''/pm/project/debttostockprojectmanager.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname 
		when ''10'' then 
	   ''/pm/finanserviceproject/finanserviceprojectlist.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname 
	   when ''11'' then 
	   ''/pm/propertybrokerproject/propertyBrokerProjectList.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname
	   when ''90'' then 
	   ''/pm/handleproject/handleprojectmanager_new.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname
	   when ''99'' then 
	   ''/pm/fund/fundList.htm?projectcode=''||t.c_projectcode
       || CHR(38) || ''projectname=''||t.c_projectname 
       end ||''''  tcmpurl
  from tproject_info  t, (select distinct t.l_serialno, t.c_modifyuser
          from tproject_factor_trace t) ft where t.c_rejecttype = ''1'' and t.l_serialno = ft.l_serialno(+) ';

	delete from TSYSINFO_MSG_PRO t where t.c_msgid='rejectnotice';
	insert into tsysinfo_msg_pro (C_MSGID, C_MSGTYPE, C_ISPROJECTROLE, C_ISUSE, MEMO, C_MSGNAME, C_MSGURL, TRANS_CODE, SUB_TRANS_CODE, C_ISSENDEMAIL, C_SYSTEM, C_SQL)
values ('rejectnotice', '2', '0', '1', '项目复核驳回提醒', '项目复核驳回提醒', null, '', '', '1', '1',v_clob_afn);
commit;
end;
/
set define on;
