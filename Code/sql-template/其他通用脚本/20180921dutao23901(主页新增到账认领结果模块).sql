--[M201809211033]20180921dutao23901(主页新增到账认领结果模块)--start--
declare
begin

if not fc_IsDataExists('select count(*) from TSYSINFO_PAGELET t where t.C_PAGELETCODE = ''arrivalClaim''') then
  insert into TSYSINFO_PAGELET (C_PAGELETCODE, C_PAGELETNAME, C_URL, L_ORDER, C_ISUSE, C_KEYWORDS, C_NEED_MOREBTN, C_NEED_MOREBTN1, C_LOADMODE, C_PAGECODE, C_SYSTYPE, C_ISHASSUBTAB, C_PARENTPAGELETCODE, C_ISDEFAULT, C_ISSHOWNEXTBTN, C_NEXTBTNNAME, C_ISSHOWFLOWBTN, C_FLOWBTNNAME, C_LAYOUTTYPE, C_NEED_REFRESHBTN, C_NEED_PAGEBTN, C_ISCANEDIT_ITEMNUM, C_ITEMNUMBERENUM, C_SNAPSHOT_PATH, C_MOREINFO_URL, C_PARSE_PATH, L_DEFAULT_ITEM_NUMBER, C_NEED_TOTALBTN, TRANS_CODE, SUB_TRANS_CODE)
  values('arrivalClaim', '到账认领结果', 'mainpage/pagelet_arrivalClaim.htm', 20, '1', null, '1', '1', '1', 'mainpage', 'S08', null, null, '1', '0', null, '0', null, 'flow', '1', '1', '0', null, null, 'financial/arrivaldata/claimResult.htm', 'mainpage/pagelet_arrivalClaim.vm', 5, '1', 'mainpageright', null);
end if;

end;
/
--------------------------------------------------------------------------------------------------------------------------
--[M201809211033]20180921dutao23901(主页新增到账认领结果模块)--end--