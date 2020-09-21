create or replace function fn_projectshortname_convert(projectshortname in varchar2,
                                                                                     accountnumber in varchar2,
                                                                                     projectaliasname in varchar2,
                                                                                     projectaliascode in varchar2 default null ) return varchar2 is
/**
��Ŀ��Ƶ�ת��������
����˵��
1. projectshortname ��Ŀ���
2. accountnumber ���׺�
3. projectaliasname ��Ŀ���

�������
1. ���accountnumberΪ�ա�projectaliasnameΪ�գ��ͷ���projectshortname
2. ���accountnumber�ǿա�projectaliasnameΪ�գ��ͷ���[accountnumber]projectshortname
3. ���accountnumberΪ�ա�projectaliasname�ǿգ��ͷ���projectshortname(projectaliasname)
4. ���accountnumber�ǿա�projectaliasname�ǿգ��ͷ���[accountnumber]projectshortname(projectaliasname)
5. ����������ͷ���projectshortname
6. �������ԭ���У�����ֵǰ���projectaliascode
**/
  companyCode varchar2(20);
  result varchar2(640) := '';
begin
  --��Ŀ���Ϊ�գ�ֱ�ӷ��ؿ��ַ���
  if fn_varchar_empty(projectshortname) then
    return '' ;
  end if;

  select a.param_value into companyCode from tsys_parameter a where a.param_code='companyCode';
  if not fn_varchar_empty(accountnumber) and companyCode='sz' then
    result := '[' || trim(accountnumber) || ']' ;
  end if;

  result := result || trim(projectshortname) ;

  if not fn_varchar_empty(projectaliasname) then
    result := result || '(' || trim(projectaliasname) || ')';
  end if;

  if not fn_varchar_empty(projectaliascode) and companyCode='zy' then
     result:=trim(projectaliascode) || '_' || result;
  end if;
  return result;
end fn_projectshortname_convert;
/
