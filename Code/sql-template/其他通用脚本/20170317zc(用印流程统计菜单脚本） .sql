--��ӡ����ͳ�Ʋ˵�
delete from tsys_user_right t where t.trans_code='yongyinflowinfo' and t.user_id='admin';
delete from tsys_role_right t where t.trans_code='yongyinflowinfo' and t.role_code='admin';
delete from tsys_subtrans t where t.trans_code='yongyinflowinfo';
delete from tsys_trans t where t.trans_code='yongyinflowinfo';
delete from tsys_menu t where t.trans_code='yongyinflowinfo';
--��ӡ����ͳ�Ʋ˵�
insert into tsys_menu (MENU_CODE, KIND_CODE, TRANS_CODE, SUB_TRANS_CODE, MENU_NAME, MENU_ARG, MENU_ICON, WINDOW_TYPE, WINDOW_MODEL, TIP, HOT_KEY, PARENT_CODE, ORDER_NO, OPEN_FLAG, TREE_IDX, REMARK, MENU_URL)
values ('yongyinflowinfo', 'BIZFRAME', 'yongyinflowinfo', 'yongyinflowinfo', '��ӡ����ͳ��', null, null, null, null, null, null, 'rpt_menu', 2, null, '#bizroot#BIZFRAME#rpt_menu#yongyinflowinfo#', null, 'report/show/showReport.mw?raq=zheshang/yongyinflowinfo.raq');

--��ӡ����ͳ�ƹ��ܺ�
insert into tsys_trans (TRANS_CODE, TRANS_NAME, KIND_CODE, MODEL_CODE, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('yongyinflowinfo', '��ӡ����ͳ��', 'BIZFRAME', '2', null, null, null, null);

--��ӡ����ͳ���ӹ��ܺ�
insert into tsys_subtrans (TRANS_CODE, SUB_TRANS_CODE, SUB_TRANS_NAME, REL_SERV, REL_URL, CTRL_FLAG, LOGIN_FLAG, REMARK, EXT_FIELD_1, EXT_FIELD_2, EXT_FIELD_3)
values ('yongyinflowinfo', 'yongyinflowinfo', '��ӡ����ͳ��', null, 'report/show/showReport.mw?raq=zheshang/yongyinflowinfo.raq', null, '1', null, null, null, null);

--��ӡ����ͳ��admin�û�Ȩ��
insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('yongyinflowinfo', 'yongyinflowinfo', 'admin', 'admin', 0, 0, 0, '1', '1');

insert into tsys_user_right (TRANS_CODE, SUB_TRANS_CODE, USER_ID, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('yongyinflowinfo', 'yongyinflowinfo', 'admin', 'admin', 0, 0, 0, '2', '1');

--��ӡ����ͳ��admin��ɫȨ��
insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('yongyinflowinfo', 'yongyinflowinfo', 'admin', 'admin', 0, 0, 0, '1', null);

insert into tsys_role_right (TRANS_CODE, SUB_TRANS_CODE, ROLE_CODE, CREATE_BY, CREATE_DATE, BEGIN_DATE, END_DATE, RIGHT_FLAG, RIGHT_ENABLE)
values ('yongyinflowinfo', 'yongyinflowinfo', 'admin', 'admin', 0, 0, 0, '2', null);