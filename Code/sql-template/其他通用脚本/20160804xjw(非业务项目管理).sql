--��Ͷ����Ŀ����˵������ӷ�ҵ����Ŀ����
insert into tsys_menu (MENU_CODE, KIND_CODE, TRANS_CODE, SUB_TRANS_CODE, MENU_NAME, MENU_ARG, MENU_ICON, WINDOW_TYPE, WINDOW_MODEL, TIP, HOT_KEY, PARENT_CODE, ORDER_NO, OPEN_FLAG, TREE_IDX, REMARK, MENU_URL)
values ('nobuss', 'BIZFRAME', 'nobuss', 'nobuss', '��ҵ����Ŀ����', '', '', '', '', '', '', 'investProject', 15, '', '#bizroot#BIZFRAME#investProject#nobuss#', '', 'pm/investproject/investProjectlist.htm?projectnature=07');

insert into tsys_trans (TRANS_CODE, TRANS_NAME, KIND_CODE, MODEL_CODE, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', '��ҵ����Ŀ����', 'BIZFRAME', '2', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'exceldown', 'excel����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'investProjectAdd', '������Ŀ', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'nobuss', '��ҵ����Ŀ����', '', 'pm/investproject/investProjectlist.htm?projectnature=07', '', '1', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'startProcess', '��������', '', '', '', '0', '', '', '', '');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'exceldown', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'exceldown', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'investProjectAdd', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'investProjectAdd', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'nobuss', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'nobuss', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'startProcess', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'startProcess', 'admin', 'admin', 0, 0, 0, '2', '1');


--8.10����Ȩ��
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'frozen', '����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'modify', 'ά��', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'terminate', '����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'textManage', '�ĵ�����', '', '', '', '0', '', '', '', '');

insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('nobuss', 'unFrozen', '�ⶳ', '', '', '', '0', '', '', '', '');


insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'frozen', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'frozen', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'modify', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'modify', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'terminate', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'terminate', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'textManage', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'textManage', 'admin', 'admin', 0, 0, 0, '2', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'unFrozen', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('nobuss', 'unFrozen', 'admin', 'admin', 0, 0, 0, '2', '1');