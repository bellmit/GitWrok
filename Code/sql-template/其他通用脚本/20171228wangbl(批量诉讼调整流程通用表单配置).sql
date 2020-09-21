----诉讼时效批量调整流程通用表单配置
delete  from  tflowformdesign t where t.process_id='limitationBatchAdjust';
delete  from  tflowformconfig t where t.process_id='limitationBatchAdjust';

insert into tflowformconfig (PROCESS_ID, C_ISUPLOADTEXT, C_TEXTTYPE, C_ISMULTIPROJECT, C_ISSELECTEXISTTEXT)
values ('limitationBatchAdjust', '1', 4000011, '0', '0');

insert into tflowformdesign (C_FIELDUUID, PROCESS_DBID, C_FIELDCODE, C_FIELDNAME, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_WIDTH, L_HEIGHT, L_FIELDORDER, L_ROWSPAN, L_COLSPAN, C_ISSHOW, C_ISREADONLY, PROCESS_ID, C_ALLOWBLANK, C_DEFVALUE, C_FIELDSUFFIX, C_ISMOBILE, C_ISVARIABLE, C_ISCHANGEABLE, C_RULEID, C_SQL)
values ('3f77d87786d815ec7c3533687e48e7b7', '578256', 'noticeday', '公告日期', '4', null, 1000, 250, 22, 2, 1, 1, '1', '0', 'limitationBatchAdjust', '0', null, null, '0', '0', '0', null, null);

insert into tflowformdesign (C_FIELDUUID, PROCESS_DBID, C_FIELDCODE, C_FIELDNAME, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_WIDTH, L_HEIGHT, L_FIELDORDER, L_ROWSPAN, L_COLSPAN, C_ISSHOW, C_ISREADONLY, PROCESS_ID, C_ALLOWBLANK, C_DEFVALUE, C_FIELDSUFFIX, C_ISMOBILE, C_ISVARIABLE, C_ISCHANGEABLE, C_RULEID, C_SQL)
values ('4e861804e36dccdcf886d4a6297a1f3f', '578256', 'noticeconfirmation', '公告确认方式', '14', 'TRANS_NOTICE_TYPE', 1000, 250, 22, 1, 1, 1, '1', '0', 'limitationBatchAdjust', '0', null, null, '0', '0', '0', null, null);

insert into tflowformdesign (C_FIELDUUID, PROCESS_DBID, C_FIELDCODE, C_FIELDNAME, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_WIDTH, L_HEIGHT, L_FIELDORDER, L_ROWSPAN, L_COLSPAN, C_ISSHOW, C_ISREADONLY, PROCESS_ID, C_ALLOWBLANK, C_DEFVALUE, C_FIELDSUFFIX, C_ISMOBILE, C_ISVARIABLE, C_ISCHANGEABLE, C_RULEID, C_SQL)
values ('f665a8baeba007949ba24beebc2f0db3', '578256', 'choosetime', '是否自动调整诉讼时效', '6', 'YES_OR_NO', 1000, 250, 22, 3, 1, 1, '1', '0', 'limitationBatchAdjust', '0', null, null, '0', '0', '0', null, null);

