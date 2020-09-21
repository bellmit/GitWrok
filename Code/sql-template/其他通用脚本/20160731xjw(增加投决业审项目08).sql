insert into tsys_dict_item (DICT_ITEM_CODE, DICT_ENTRY_CODE, DICT_ITEM_NAME, LIFECYCLE, PLATFORM, DICT_ITEM_ORDER, REL_CODE)
values ('08', 'PM_PROJECT_NATURE', 'Ͷ��ҵ��', '', '', 1, '');


--Ͷ��ҵ��Ҫ��
insert into tproject_factor_info (C_FACTORCODE, C_FACTORNAME, C_FACTORTYPECODE, C_FACTORTYPENAME, C_FACTORTYPESUBCODE, C_FACTORTYPESUBNAME, C_FACTORDESC, C_FACTORTABLE, C_FACTORFIELD, C_ISNEED, C_FACTORDEFVAL, C_FIELDTYPE, C_VALUEBOUND, L_MAXLENGTH, L_FIELDWIDTH, L_FIELDHEIGHT, L_ROWSPAN, L_COLSPAN, L_FACTORDEFORDER, C_ALLOWBANK, C_ISNEEDTIPS, C_TIPS, C_ISPUBLIC, C_STORETYPE, C_FACTORFLAG, C_COPYFROMFACTOR, C_RULEID, C_REVIEWMODE, C_FACTORSQLVAL, C_STOREBOUND)
values ('tproject_info_projectnature_tjys', '��Ŀ����(tjys)', '1', '������Ϣ', '11', '������Ϣ', '', 'tproject_info', 'projectnature', '0', '08', '20', '', 2, 250, 18, 1, 1, 0, '1', '0', '', '1', '1', '1', 'tproject_info_projectnature_rz', '', '0', '', '');

--Ͷ��ҵ��ģ��
insert into tproject_factor_temp (C_TEMPCODE, C_TEMPNAME, C_TEMPDESC, C_CREATEUSER, D_CREATETIME, D_UPDATETIME, C_FACTORFLAG, C_DIRECTION, C_UPDATEUSER, C_BUSITYPE, C_DICTITEMCODE, C_ISDEFAULT, C_ISPUBLIC, C_ISUSE)
values ('TJYE_001', 'Ͷ��ҵ��', '', 'admin', to_date('07-08-2016 15:26:59', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-08-2016 15:28:50', 'dd-mm-yyyy hh24:mi:ss'), '1', '', 'admin', '1', '', '', '1', '1');

--Ͷ��ҵ�������ϵ
insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('TJYE_001', 'tproject_info_projectnature_tjys', '', '', 0, '0', '0', '0', '', '');

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('TJYE_001', 'tproject_info_projectcode', '', '', 1, '0', '0', '0', '', '');

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('TJYE_001', 'tproject_info_projectname', '', '', 2, '0', '0', '0', '', '');

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('TJYE_001', 'tproject_info_prodescribe', '', '', 57, '0', '0', '0', '', '');

insert into tproject_factor_relation (C_TEMPCODE, C_FACTORCODE, C_ISCANUPDATE, C_ISRODONLY, L_SHOWORDER, C_ISMOBILE, C_ISOVERVIEW, C_NOTALLOWBLANK, C_FACTORDEFVAL, C_FACTORSHOWNAME)
values ('TJYE_001', 'tproject_info_projectShortName', '', '', 3, '0', '0', '0', '', '');

--Ͷ��ҵ��˵�(��ҵ����Ŀ������)�Ͱ�ťȨ��
insert into tsys_menu (MENU_CODE, KIND_CODE, TRANS_CODE, SUB_TRANS_CODE, MENU_NAME, MENU_ARG, MENU_ICON, WINDOW_TYPE, WINDOW_MODEL, TIP, HOT_KEY, PARENT_CODE, ORDER_NO, OPEN_FLAG, TREE_IDX, REMARK, MENU_URL)
values ('investotherManage', 'BIZFRAME', 'investotherManage', 'investotherManage', 'Ͷ��ҵ����Ŀ����', '', '', '', '', '', '', 'nobussProManage', 1, '', '#bizroot#BIZFRAME#nobussProManage#investotherManage#', '', 'pm/investproject/investProjectlist.htm?projectnature=08');

insert into tsys_trans (TRANS_CODE, TRANS_NAME, KIND_CODE, MODEL_CODE, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'Ͷ��ҵ����Ŀ����', 'BIZFRAME', '2', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'exceldown', 'excel����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'frozen', '����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'investProjectAdd', '������Ŀ', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'investotherManage', 'Ͷ��ҵ����Ŀ����', '', 'pm/investproject/investProjectlist.htm?projectnature=08', '', '1', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'modify', 'ά��', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'startProcess', '��������', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'terminate', '����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'textManage', '�ĵ�����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'unFrozen', '�ⶳ', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'exceldown', 'excel����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'frozen', '����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'investProjectAdd', '������Ŀ', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'investotherManage', 'Ͷ��ҵ����Ŀ����', '', 'pm/investproject/investProjectlist.htm?projectnature=08', '', '1', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'modify', 'ά��', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'startProcess', '��������', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'terminate', '����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'textManage', '�ĵ�����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('investotherManage', 'unFrozen', '�ⶳ', '', '', '', '0', '', '', '', '');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'exceldown', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'exceldown', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'frozen', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'frozen', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'investProjectAdd', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'investProjectAdd', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'investotherManage', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'investotherManage', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'modify', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'modify', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'startProcess', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'startProcess', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'terminate', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'terminate', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'textManage', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'textManage', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'unFrozen', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('investotherManage', 'unFrozen', 'admin', 'admin', 0, 0, 0, '2', '1');



