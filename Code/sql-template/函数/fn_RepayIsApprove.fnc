create or replace function fn_RepayIsApprove(in_projectcode in varchar2,
                                             in_contractid  in varchar2)
  return varchar2
/************************************************************************
      ��  ��: ���ݻ���ָ�����Ŀ��źͺ�ͬ��Ų�ѯ�Ƿ��������������׼��¼
      ��  ��: ���ݻ���ָ�����Ŀ��źͺ�ͬ��Ų�ѯ�Ƿ��������������׼��¼
      ��  ��: in_projectcode        ��Ŀ���
      ��  �Σ�in_contractid         ��ͬID
      ��  �Σ�iExists               �жϽ��:0-��4-��

      ������: caoyi20323
      ��  ��:
      ��  ��: 20180518 add  by caoyi20323:
              20180528 modify by caoyi20323: ��ӶԻ�����ж�
              20190116 modify by chenhy18048: ��Ŀ������׼��������4-�����׼

  *************************************************************************/
 as
  isNULLABLE    number;
  projectnature varchar2(10); --��Ŀ���ʣ�99Ϊ����
  implementType varchar2(10) default '1'; --����������׼����
begin
  select nvl(max(t.c_implementtype), '1')
    into implementType
    from tproject_info_amc t
   where t.c_projectcode = in_projectcode;
  select max(ti.c_projectnature)
    into projectnature
    from tproject_info ti
   where ti.c_projectcode = in_projectcode;
  if projectnature = '99' then
    --������������
    isNULLABLE := 1;
  elsif implementType = '1' then
    --����Ŀ����
    select count(1)
      into isNULLABLE
      from tapprove_state t
     where t.c_projectcode = in_projectcode;
  elsif implementType = '3' then
    --����ͬ����
    if in_contractid is not null then
      select count(1)
        into isNULLABLE
        from tapprove_state t
       where t.c_contractid = in_contractid;
    else
      isNULLABLE := 1;
    end if;
  elsif implementType = '4' then
        isNULLABLE := 1;
  else
    --��������
    isNULLABLE := 0;
  end if;
  return case when isNULLABLE = 0 then '0' else '4' end;
end;
/
