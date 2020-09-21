CREATE OR REPLACE FUNCTION "FN_GETCHSBALANCE" (vcbala  in varchar2, --4λ���ַ���
                                                                                           flag in varchar2,        --����С����־λ��1Ϊ������0ΪС��
                                                                                           chartype in varchar2,   --�������� ,1Ϊ������ˣ�0Ϊ��ͨ��д ,2Ϊ����
                                                                                           zeroflag in varchar2,    --��λ�Ƿ񲹡��㡱 , 1���㣬0 ������
                                                                                           beforechar in varchar2  --ǰλ��
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
    tabNumMapping(0) := '��';
    tabNumMapping(1) := 'Ҽ';
    tabNumMapping(2) := '��';
    tabNumMapping(3) := '��';
    tabNumMapping(4) := '��';
    tabNumMapping(5) := '��';
    tabNumMapping(6) := '½';
    tabNumMapping(7) := '��';
    tabNumMapping(8) := '��';
    tabNumMapping(9) := '��';
    tabNumMapping(10) := '��';
    tabNumMapping(11) := 'һ';
    tabNumMapping(12) := '��';
    tabNumMapping(13) := '��';
    tabNumMapping(14) := '��';
    tabNumMapping(15) := '��';
    tabNumMapping(16) := '��';
    tabNumMapping(17) := '��';
    tabNumMapping(18) := '��';
    tabNumMapping(19) := '��';
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

    tabUnitMapping(1) := 'Ǫ';
    tabUnitMapping(2) := '��';
    tabUnitMapping(3) := 'ʰ';
    tabUnitMapping(4) := '';

    tabUnitMapping(5) := 'ǧ';
    tabUnitMapping(6) := '��';
    tabUnitMapping(7) := 'ʮ';
    tabUnitMapping(8) := '';

    tabUnitMapping(9) := '��';
    tabUnitMapping(10) := '��';
    tabUnitMapping(11) := '��';
    tabUnitMapping(12) := '��';

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
               vcresult:=  tabNumMapping(tmp+iaddnum)||tabUnitMapping(i+iaddunit)||'��'||vcresult;
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
           vcresult:='��'||vcresult;
        end if;
     end if;
     return vcresult;
EXCEPTION
    WHEN OTHERS THEN
    RETURN 'Convert  failed';
end fn_getChsBalance;


 
 
 
 
/
