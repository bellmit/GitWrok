CREATE OR REPLACE FUNCTION fn_check_flowautoconfig(in_configid IN VARCHAR2,--��������
in_basedate IN VARCHAR2,-- ��׼����
in_iscycle IN VARCHAR2,--�Ƿ�ѭ��
in_cyclefreq IN VARCHAR2,-- ѭ��Ƶ�� ������
in_cycleunit IN VARCHAR2 --ѭ����λ 0��1��
) RETURN varchar2 IS
out_value varchar2(2) :=0; -- ����Ȩ�� 0 ��Ȩ�� 1 ��Ȩ��
vnum number; -- ��ʱ����
BEGIN
     -- �������� ֪ͨ��λ Ȩ��У��
     if in_configid is not null and out_value <> '1' then
       if in_iscycle <> '1' then
         if to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd') = to_date(in_basedate,'yyyy-mm-dd') then
           out_value:='1';
         end if;
       end if;
       if in_iscycle = '1' and in_cyclefreq is not null and in_cycleunit is not null and to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd') >= to_date(in_basedate,'yyyy-mm-dd') then
         --ѭ����������
         if in_cycleunit='0' then
           vnum:= to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd') - to_date(in_basedate,'yyyy-mm-dd');
           if mod(vnum,in_cyclefreq) = 0 then
             out_value:='1';
           end if;
         end if;
         --ѭ�������·�
         if in_cycleunit='1' then
           --�������ͻ�׼������ͬһ��
           if to_char(last_day(sysdate), 'dd') < to_char(to_date(in_basedate,'yyyy-mm-dd'),'dd') then
             --�����׼���������������һ�죬ȡ�������һ��
             if to_char(sysdate,'dd') = to_char(last_day(sysdate), 'dd') then
               vnum:=ceil(months_between(to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'),to_date(in_basedate,'yyyy-mm-dd')));
               if mod(vnum,in_cyclefreq) = 0 then
                 out_value:='1';
               end if;
             end if;
           end if;
           --�����׼����δ�����������һ�죬ȡ���»�׼����
           if to_char(last_day(sysdate), 'dd') >= to_char(to_date(in_basedate,'yyyy-mm-dd'),'dd') then
             if to_char(sysdate,'dd') = to_char(to_date(in_basedate,'yyyy-mm-dd'),'dd') then
               vnum:=months_between(to_date(to_char(sysdate,'yyyy-mm-dd'),'yyyy-mm-dd'),to_date(in_basedate,'yyyy-mm-dd'));
               if mod(vnum,in_cyclefreq) = 0 then
                 out_value:='1';
               end if;
             end if;
           end if;
         end if;
       end if;
     end if;
  RETURN out_value;
EXCEPTION
  WHEN OTHERS THEN
  RETURN '0';
END fn_check_flowautoconfig;
/
