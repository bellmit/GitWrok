--�����˻�����ҳ��ȥ���˻���ˮ���˻���ˮ����˵���ťȨ��
delete  from tsys_user_right t where t.trans_code='amBankMenu' and t.sub_trans_code in ('flowingManage','accountFlow');
delete  from tsys_role_right t where t.trans_code='amBankMenu' and t.sub_trans_code in ('flowingManage','accountFlow');