--��ͬ�������ʽ𷢷ź��տ�ƻ�����˳�����
update tproject_temp_config_button t set t.l_order = '12'
 where t.c_parentcode='more' and  t.c_buttonname in ('�ʽ𷢷�', 'Ͷ�ʷ���');

update tproject_temp_config_button t set t.l_order = '17'
 where t.c_parentcode='more' and  t.c_buttonname='�տ�ƻ�����';
