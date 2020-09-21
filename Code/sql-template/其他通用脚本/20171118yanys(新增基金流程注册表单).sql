
insert into jbpm4_ext_formclass (UUID, PARENTID, FORMCLASSNAME, DESCRIPTION)
values ('c4e52c8a896b4e348e1dc9f4aca2799b', '0', '基金表单', null);

insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('947814eaa81548f9b9db3abf180c42fa', 'c4e52c8a896b4e348e1dc9f4aca2799b', 'PAGE_MW', '基金可研', 'pm/fund/fundWorkFlow.htm?phase=03', null, 'fundModify', null, null, null);

insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('8c95779f20824e86b313eea59617905b', 'c4e52c8a896b4e348e1dc9f4aca2799b', 'PAGE_MW', '基金立项', 'pm/fund/fundWorkFlow.htm?phase=01', null, 'fundApproval', null, null, null);

