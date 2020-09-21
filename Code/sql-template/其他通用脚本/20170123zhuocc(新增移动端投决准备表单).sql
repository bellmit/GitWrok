delete from tmobile_config_form t where t.C_FORMURL='pm/project/voteflow/meetingprepare.htm';
delete from tmobile_config_field t where t.C_MODELCODE='pm/project/voteflow/meetingprepare.htm';

insert into tmobile_config_form (C_FORMURL, C_FORMNAME, C_STOREBOUND, C_CONTENTBOUND, C_ISLOADATTACH, C_CLIENTTYPE, C_LOADATTCHBOUND, C_ISUSE)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', null, 'meetingApplyManager.getMeetingPrepareMapForMoblie()', '0', 'MOBILE', null, '1');

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'convenedate', null, '拟召开日期', '4', 3, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingnum', null, '会议期次', '1', 2, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingtable', null, '提案信息', '9', 12, '{"title":"提案信息","columns":[{"name":"拟上会提案","code":"companyname","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"会议类型","code":"meetingtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"所需/回收资金","code":"requiredfund","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"动议部门","code":"startmotiondept_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"},{"name":"投决方式","code":"votingtype_display","fieldType":"1","iscanupdate":"0","valuebound":"","isshow":"true"}]}', null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingtype', null, '会议类型', '6', 1, 'MEETING_TYPE', null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'memo', null, '备注', '3', 4, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingPlace', null, '会议地点', '1', 6, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingAccessCode', null, '会议访问码', '1', 7, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingNo', null, '电话会议号码', '1', 8, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingLink', null, '会议链接', '1', 9, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'meetingtime', null, '会议时间', '1', 10, null, null, null, null, '表单信息', null);

insert into tmobile_config_field (C_MODELCODE, C_MODELNAME, C_FIELDCODE, C_FROMFIELDCODE, C_FIELDNAME, C_FIELDTYPE, L_ORDER, C_VALUEBOUND, C_DEFVALUE, C_ALLOWBANK, L_MAXLENGTH, C_FIELDTYPENAME, C_FIELDSQLVAL)
values ('pm/project/voteflow/meetingprepare.htm', '投决准备表单', 'view_participants', null, '参会人员', '1', 11, null, null, null, null, '表单信息', null);


