CREATE OR REPLACE FUNCTION "FN_GETCHINESEBALANCE" (OriBala  in varchar2,
                                                                                                   chartype in varchar2   --汉字类型 ,1为财务记账，0为普通大写
                                      )
--整数部分支持20位数字，小数部分支持4位
 return varchar2
is
groupcount  number(4);
Type typeTabMapping Is Table Of Varchar2(16) Index By Binary_Integer;
tabNumMapping  typeTabMapping;
tabUnitMapping   typeTabMapping;
i                      number(2);
iadd              number(2);
cadd            char(1);
ipos              number(2);
vcbala  varchar2(30);
vcdecimal   varchar2(4);
errorinfo      varchar2(20);
vcresult       varchar2(100);
begin
    tabNumMapping(0) := '';
    tabNumMapping(1) := '';
    tabNumMapping(2) := '';
    tabNumMapping(3) := '';
    tabNumMapping(4) := '';
    tabNumMapping(5) := '';

    tabUnitMapping(0) := '万万亿';
    tabUnitMapping(1) := '万亿';
    tabUnitMapping(2) := '亿';
    tabUnitMapping(3) := '万';
    tabUnitMapping(4) := '元';

     ipos:=instr(OriBala,'.',1,1);
     if(ipos=0) then
        vcbala:=substr(OriBala,-20,20);
        vcbala:=lpad(OriBala,ceil(length(OriBala)/4)*4,'0');
        vcdecimal:='';
     else
        if(ipos>21) then
           vcbala:=substr(OriBala,ipos-20,20);
        else
           vcbala:=substr(OriBala,1,ipos-1);
        end if;
        vcbala:=lpad(vcbala,ceil(length(vcbala)/4)*4,'0');
        vcdecimal:=substr(OriBala,ipos+1);
     end if;
     vcresult:='';

     groupcount:=ceil(length(vcbala)/4);
     iadd:=5-groupcount;
     i:=0;
     loop
     exit when i>groupcount-1;
     if(i=0)then
        cadd:='1';
     else
        cadd:=substr(vcbala,i*4,1);
     end if;
     tabNumMapping(i):=fn_getChsBalance(substr(vcbala,i*4+1,4),1,chartype,i,cadd);
     if(tabNumMapping(i) is null) then
        if(i=groupcount-1) then
          vcresult:=vcresult||tabNumMapping(i)||tabUnitMapping(i+iadd);
        else
          vcresult:=vcresult||tabNumMapping(i);
        end if;
     else
        vcresult:=vcresult||tabNumMapping(i)||tabUnitMapping(i+iadd);
     end if;
     i:=i+1;
     end loop;
     tabNumMapping(5):=fn_getChsBalance(vcdecimal,0,chartype,1,substr(vcbala,groupcount*4,1));
     vcresult:=vcresult||tabNumMapping(5);
     return vcresult;
EXCEPTION
    WHEN OTHERS THEN
    RETURN 'Convert  failed:'||OriBala;
end fn_getChineseBalance;


 
 
 
 
/
