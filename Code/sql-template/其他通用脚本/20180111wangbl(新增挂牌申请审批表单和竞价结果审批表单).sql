--新增挂牌申请审批表单和竞价结果审批表单
delete from  jbpm4_ext_formreg t where t.uuid in ('1c80dfefa6d947d9aa9108761c16b85e','7c8f55a86769483b86e8a3d9f5ccdbab');                                                              
delete from  jbpm4_ext_formclass t where t.uuid='1d89d2849b6d4226920b6df8fdfea788';

insert into jbpm4_ext_formclass (UUID, PARENTID, FORMCLASSNAME, DESCRIPTION)
values ('1d89d2849b6d4226920b6df8fdfea788', '0', '挂牌管理', null);

insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('1c80dfefa6d947d9aa9108761c16b85e', '1d89d2849b6d4226920b6df8fdfea788', 'PAGE_MW', '挂牌申请审批表单', 'pm/handleproject/hangout/hangoutform.htm', null, 'listingInfo', null, null, null);

insert into jbpm4_ext_formreg (UUID, CLASSID, FORMTYPE, FORMNAME, FORMURL, DESCRIPTION, FORMCODE, EXTFIELD1, EXTFIELD2, EXTFIELD3)
values ('7c8f55a86769483b86e8a3d9f5ccdbab', '1d89d2849b6d4226920b6df8fdfea788', 'PAGE_MW', '竞价结果审批表单', 'pm/handleproject/hangout/biddingresultform.htm', null, 'biddingResultInfo', null, null, null);


