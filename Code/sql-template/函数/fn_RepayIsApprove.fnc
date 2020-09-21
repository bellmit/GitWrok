create or replace function fn_RepayIsApprove(in_projectcode in varchar2,
                                             in_contractid  in varchar2)
  return varchar2
/************************************************************************
      名  称: 根据划款指令的项目编号和合同编号查询是否存在审批条件核准记录
      功  能: 根据划款指令的项目编号和合同编号查询是否存在审批条件核准记录
      入  参: in_projectcode        项目编号
      入  参：in_contractid         合同ID
      出  参：iExists               判断结果:0-否，4-是

      创建者: caoyi20323
      描  述:
      版  本: 20180518 add  by caoyi20323:
              20180528 modify by caoyi20323: 添加对基金的判断
              20190116 modify by chenhy18048: 项目条件核准类型增加4-无需核准

  *************************************************************************/
 as
  isNULLABLE    number;
  projectnature varchar2(10); --项目性质：99为基金
  implementType varchar2(10) default '1'; --审批条件核准类型
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
    --基金无须审批
    isNULLABLE := 1;
  elsif implementType = '1' then
    --按项目审批
    select count(1)
      into isNULLABLE
      from tapprove_state t
     where t.c_projectcode = in_projectcode;
  elsif implementType = '3' then
    --按合同审批
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
    --逐条审批
    isNULLABLE := 0;
  end if;
  return case when isNULLABLE = 0 then '0' else '4' end;
end;
/
