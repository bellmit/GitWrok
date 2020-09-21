create or replace function fn_convertSpecialbusintype(
                                v_typeCode    in varchar2)
 /**
  *中信 信托业务特性所选转换成标码值
  */
  return varchar2 as
  v_idx              Number;--分隔符的位置
  v_str              varchar2(500);--截取的转换前的值
  v_convert_str      varchar2(500);--截取的转换后的值
  v_strs_last        varchar2(500):= v_typeCode;--剩余的字符串
  v_convert_typeCode varchar2(256) default '';--返回转换后的字符串
begin
  if v_typeCode is null then
      return '';
  end if;
  loop
    v_idx := instr(v_strs_last, ',');
    if v_idx = 0 then
      v_str       := substr(v_strs_last, 1);
      v_strs_last := substr(v_strs_last, v_idx + 1);
    else
      v_str       := substr(v_strs_last, 1, v_idx - 1);
      v_strs_last := substr(v_strs_last, v_idx + 1);
    end if;
    
    v_convert_str :=
    (case when v_str ='1'
              then '28'--银信理财合作(理财资金)
         when v_str ='2'
              then '22'--信政合作
         when v_str ='3'
              then '23'--私募基金合作（私募阳光化）
         when v_str ='4'
              then '1'--资产证券化
         when v_str ='5'
              then '2'--私募股权投资信托(PE)
         when v_str ='6'
              then '3'--基金化房地产信托(REITS)
         when v_str ='7'
              then '4'--受托境外理财信托(QDII)
         when v_str ='8'
              then '5'--企业年金
         when v_str ='9'
              then '6'--公益信托
         when v_str ='A'
              then '98'--另类投资信托
         when v_str ='B'
              then '9'--土地流转信托
         when v_str ='C'
              then '24'--房地产信托
         when v_str ='D'
              then '25'--矿产能源信托
         when v_str ='E'
              then '8'--家族信托
         when v_str ='F'
              then '10'--消费信托
         when v_str ='G'
              then '26'--证信合作
         when v_str ='H'
              then '99'--其他
         when v_str ='J'
              then '27'--准资产证券化
         else v_str end);

    if v_convert_typeCode is null then
      v_convert_typeCode := v_convert_str;
    else
      v_convert_typeCode := v_convert_typeCode ||','|| v_convert_str;
    end if;
    
    exit when v_idx = 0;
  end loop;
      return v_convert_typeCode;
   EXCEPTION
    WHEN OTHERS THEN
    return '';
end fn_convertSpecialbusintype;
/
