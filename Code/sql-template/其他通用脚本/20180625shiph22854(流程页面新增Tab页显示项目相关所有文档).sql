
--[201806210603]20180625shiph22854(����ҳ������Tabҳ��ʾ��Ŀ��������ĵ�)--start--
declare
begin
if not fc_IsDataExists('select count(*) from tflow_tabpage t where t.C_PAGECODE = ''relativeProjectText''') then 
	insert into tflow_tabpage (C_PAGECODE, C_PAGENAME, C_URL, C_ISSHOWTAB, C_ISSHOWBYNODEVARIABLE)
values ('relativeProjectText', '�ĵ�����', '/pm/project/relativeProjectText.htm', null, ' <#if isShowProjectTextTab??>
    <#if isShowProjectTextTab="1">
    yes
    <#else>
    no
    </#if>  
<#else>
   no
</#if>');
end if;
end;
/
--[201806210603]20180625shiph22854(����ҳ������Tabҳ��ʾ��Ŀ��������ĵ�)--end--