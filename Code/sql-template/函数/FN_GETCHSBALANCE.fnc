CREATE OR REPLACE FUNCTION "FN_GETCHSBALANCE" (vcbala  in varchar2, --4位长字符串
                                                                                           flag in varchar2,        --整数小数标志位，1为整数，0为小数
                                                                                           chartype in varchar2,   --汉字类型 ,1为财务记账，0为普通大写 ,2为数字
                                                                                           zeroflag in varchar2,    --高位是否补“零” , 1补零，0 不补零
                                                                                           beforechar in varchar2  --前位数
                                      )
 return varchar2
is
checkbala varchar2(4);
zerocount number(2);
tmp number(1);
vcflag char(1);
vcresult varchar2(16);
Type typeTabMapping Is Table Of Varchar2(2) Index By Binary_Integer;
tabNumMapping  typeTabMapping;
tabUnitMapping   typeTabMapping;
iaddnum  number(2);
iaddunit   number(2);
i                      number(2);
errorinfo      varchar2(20);
begin
    tabNumMapping(0) := '零';
    tabNumMapping(1) := '壹';
    tabNumMapping(2) := '贰';
    tabNumMapping(3) := '叁';
    tabNumMapping(4) := '肆';
    tabNumMapping(5) := '伍';
    tabNumMapping(6) := '陆';
    tabNumMapping(7) := '柒';
    tabNumMapping(8) := '捌';
    tabNumMapping(9) := '玖';
    tabNumMapping(10) := '零';
    tabNumMapping(11) := '一';
    tabNumMapping(12) := '二';
    tabNumMapping(13) := '三';
    tabNumMapping(14) := '四';
    tabNumMapping(15) := '五';
    tabNumMapping(16) := '六';
    tabNumMapping(17) := '七';
    tabNumMapping(18) := '八';
    tabNumMapping(19) := '九';
    tabNumMapping(20) := '0';
    tabNumMapping(21) := '1';
    tabNumMapping(22) := '2';
    tabNumMapping(23) := '3';
    tabNumMapping(24) := '4';
    tabNumMapping(25) := '5';
    tabNumMapping(26) := '6';
    tabNumMapping(27) := '7';
    tabNumMapping(28) := '8';
    tabNumMapping(29) := '9';

    tabUnitMapping(1) := '仟';
    tabUnitMapping(2) := '佰';
    tabUnitMapping(3) := '拾';
    tabUnitMapping(4) := '';

    tabUnitMapping(5) := '千';
    tabUnitMapping(6) := '百';
    tabUnitMapping(7) := '十';
    tabUnitMapping(8) := '';

    tabUnitMapping(9) := '角';
    tabUnitMapping(10) := '分';
    tabUnitMapping(11) := '毫';
    tabUnitMapping(12) := '厘';

     if(flag='0') then
         iaddunit:=8;
         checkbala:=rpad(vcbala,4,'0');
     else
         iaddunit:=0;
         checkbala:=lpad(vcbala,4,'0');
     end if;
     if(chartype='0') then
        iaddnum:=10;
        if(flag='0') then iaddunit:=8; else iaddunit:=4; end if;
     elsif(chartype='1') then
        iaddnum:=0;
     else
        iaddnum:=20;
        if(flag='0') then iaddunit:=8; else iaddunit:=4; end if;
     end if;

     zerocount:=-1;
     vcresult:='';
     tmp:='';
     vcflag:='0';
     i:=4;
     loop
     exit when i=0;
     tmp:=to_number(substr(checkbala,i,1));
     if(vcflag<>'0') then
        if(tmp=0) then
           zerocount:=zerocount+1;
        else
           if(zerocount>0) then
               vcresult:=  tabNumMapping(tmp+iaddnum)||tabUnitMapping(i+iaddunit)||'零'||vcresult;
               zerocount:=0;
           else
               vcresult:=  tabNumMapping(tmp+iaddnum)||tabUnitMapping(i+iaddunit)||vcresult;
           end if;
        end if;
     else
         if(tmp>0) then
             vcflag:='1';
             zerocount:=0;
             vcresult:=  tabNumMapping(tmp+iaddnum)||tabUnitMapping(i+iaddunit)||vcresult;
         end if;
     end if;
     i:=i-1;
     end loop;
     if(vcflag='0') then
        vcresult:='';
     else
        if((zeroflag<>'0' and zerocount>0) or(beforechar='0')) then
           vcresult:='零'||vcresult;
        end if;
     end if;
     return vcresult;
EXCEPTION
    WHEN OTHERS THEN
    RETURN 'Convert  failed';
end fn_getChsBalance;


 
 
 
 
/
