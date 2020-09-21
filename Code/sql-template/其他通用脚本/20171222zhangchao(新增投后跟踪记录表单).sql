	delete from jbpm4_ext_formclass t where t.uuid = '2cabb42eb92842558a555202a97410f2';
  insert into jbpm4_ext_formclass (UUID, PARENTID, FORMCLASSNAME, DESCRIPTION)
  values ('2cabb42eb92842558a555202a97410f2', '0', '投后管理', null);
  
  delete from jbpm4_ext_formreg t where t.uuid='af3a548413eb412ea99df30e1205a20c';
  insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
  values ('af3a548413eb412ea99df30e1205a20c', '2cabb42eb92842558a555202a97410f2', 'PAGE_MW', '投后跟踪记录', '/afterinvest/afterinvestadd.htm', null, null, null, null, null);
  