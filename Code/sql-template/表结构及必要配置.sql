set define off;
declare
begin
  -- 设置标识版本号的系统参数
delete from jres_subsystem_rc where subsystem_name='customer' and subsystem_ver='trunk';
insert into jres_subsystem_rc (subsystem_name, subsystem_ver,begin_time, remark)
values('customer', 'trunk',sysdate, 'customer');
-- 更新脚本
--示例如下：
--[201608190271]20160830lijb(工作日表在日期上增加索引)   --以前的文件名现在做为注释提交，注释格式为：[需求编号]+年月日+修改人+括号+修改内容
--if fc_IsTableExists('TOPENDAY') and not fc_IsIndexExists('TOPENDAY', 'I_WORKDATE_TOPENDAY') then
--	execute immediate 'create index I_WORKDATE_TOPENDAY on TOPENDAY (D_DATE)
--	  tablespace TCMP
--	  pctfree 10
--	  initrans 2
--	  maxtrans 255
--	  storage
--	  (
--		initial 64K
--		minextents 1
--		maxextents unlimited
--	  )';
--end if;
 
 --20160914xjw(投融资合同表增加字段)
  if not fc_IsColExists('tinvest_contract','c_trustmanager') then
     execute immediate 'alter table tinvest_contract  add c_trustmanager VARCHAR2(32)';
   end if;
   if not fc_IsColExists('tinvest_contract','c_contractphase') then
     execute immediate 'alter table tinvest_contract add c_contractphase varchar2(1)';
   end if;

--20161009xjw(借款人增加转让金额)
   if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','f_transferbalance') then
     execute immediate 'alter table TASSET_LOANACCOUNT_INFO add f_transferbalance NUMBER(19,6)';
   end if;
 --20161011wangbl(会议明细表中增加会议明细序号字段)
   if not fc_IsColExists('TMEETING_APPLY_DETAIL','L_serialnumber') then
     execute immediate 'alter table TMEETING_APPLY_DETAIL add L_serialnumber number';
   end if;
--[201610140212]20161020wcy(业务标识表新增字段c_texttype)
   if not fc_IsColExists('tinvest_busiflag','c_texttype') then
     execute immediate 'alter table tinvest_busiflag add c_texttype varchar2(100)';
   end if;
--[M201611030630]20161103zc(流水表新增字段C_PAYMENACCOUNT)
   if not fc_IsColExists('TINVEST_FUNDVARY','C_PAYMENACCOUNT') then
     execute immediate 'alter table TINVEST_FUNDVARY add C_PAYMENACCOUNT varchar2(32)';
   end if;

--20161108zoubin(项目表新增字段-金融许可证编号) -- start--
if not fc_IsColExists('tproject_info','c_lisencenumber') then
	execute immediate 'alter table tproject_info add c_lisencenumber varchar2(100)';
end if;
--20161108zoubin(项目表新增字段-金融许可证编号) --end--

--20161108zoubin(项目表新增字段一小额委托人数最大数)------start--
 if fc_IsTableExists('tproject_info') and not fc_IsColExists('tproject_info','c_smallcommissionmaxnum') then
    execute immediate 'alter table tproject_info add c_smallcommissionmaxnum varchar2(10)';
 end if;
 --20161108zoubin(项目表新增字段一小额委托人数最大数)------end--
 
--20161108zoubin(项目表新增字段-业务分类) -- start--
if not fc_IsColExists('tproject_info','c_busiclassification') then
	execute immediate 'alter table tproject_info add c_busiclassification varchar2(2)';
end if;
--20161108zoubin(项目表新增字段-业务分类) --end--  
--[M201611101166]20161110wcy(保证合同表relationcode字段扩长)
   if fc_IsColExists('TASSET_GUARANTEECONTRACT','C_RELATIONCODE') then
     execute immediate 'alter table TASSET_GUARANTEECONTRACT modify C_RELATIONCODE varchar2(500)';
   end if;
   
   --[20161116]20161116zhangchao(新建方案信息表)-- start ---
if not fc_IsTableExists('TSCHEME_INFO') then
execute immediate 'create table TSCHEME_INFO
(
  l_schemeid         NUMBER(10) not null,
  c_projectcode      VARCHAR2(32),
  c_outprojectcode   VARCHAR2(32),
  process_instanceid VARCHAR2(32),
  c_status           VARCHAR2(2),
  c_isdeclaretype    VARCHAR2(1),
  c_schemetype       VARCHAR2(1),
  c_schemename       VARCHAR2(100),
  c_subtype          VARCHAR2(2),
  c_approvalrights   VARCHAR2(1),
  c_isrelatedtrade   VARCHAR2(1),
  c_isinnertrade     VARCHAR2(1),
  f_investmoney      NUMBER(19,6),
  f_financemoney     NUMBER(19,6),
  f_recovermoney     NUMBER(19,6),
  f_guaranteemoney   NUMBER(19,6),
  c_busitype         VARCHAR2(2),
  f_annualyield      NUMBER(10,6),
  c_guaranteetype		 VARCHAR2(50),
  c_istransregion    VARCHAR2(1),
  c_targetnature     VARCHAR2(50),
  c_cooperation      VARCHAR2(100),
  f_riskrate         NUMBER(12,6),
  c_profitrate       NUMBER(12,6),
  c_busigrade        VARCHAR2(100),
  c_isspecialinvest  VARCHAR2(1),
  c_projecttype      VARCHAR2(3),
  c_targetnature_fcz VARCHAR2(50),
  f_assetallmoney    NUMBER(19,6),
  f_cost             NUMBER(19,6),
  f_assetcount       NUMBER(10),
  c_timelimit        VARCHAR2(25),
  f_reformrate       NUMBER(12,6),
  f_innerrate        NUMBER(12,6),
  c_investtarget     VARCHAR2(25),
  c_investway        VARCHAR2(25),
  f_invvestmoney_gq  NUMBER(19,6),
  f_stockcent        NUMBER(19,6),
  f_investlimit      VARCHAR2(50),
  f_exitway          VARCHAR2(2),
  f_innerrate_gq     NUMBER(12,6),
  f_annualyield_gq   NUMBER(12,6),
  f_fundscale        NUMBER(19,6),
  c_timelimit_zc     VARCHAR2(50),
  f_priscale         NUMBER(19,6),
  f_afterscale       NUMBER(19,6),
  f_groupscale       NUMBER(19,6),
  f_compscale        NUMBER(19,6),
  c_compway          VARCHAR2(1),
  c_afterinvestway   VARCHAR2(1),
  c_investway_zc     VARCHAR2(1),
  c_profitway        VARCHAR2(1),
  f_managerfeerate   NUMBER(12,6),
  f_projectrate_zc   NUMBER(12,6),
  f_pricost          NUMBER(19,6),
  f_comprate         NUMBER(12,6),
  c_leverage         VARCHAR2(10),
  f_irr              NUMBER(12,6),
  f_grouprate        NUMBER(12,6),
  c_projectsupervise VARCHAR2(1000),
  c_fundsupervise    VARCHAR2(1000),
  d_transferdate     DATE,
  f_assetnum         NUMBER(4),
  f_assetallmoney_bl NUMBER(19,6),
  f_principal_bl     NUMBER(19,6),
  f_profit_bl        NUMBER(19,6),
  f_cost_bl          NUMBER(19,6),
  f_investmoney_bl   NUMBER(19,6),
  l_dealtime         NUMBER(3),
  c_possvalue        VARCHAR2(10),
  c_maxvalue         VARCHAR2(10),
  c_minvalue         VARCHAR2(10),
  c_memo1            VARCHAR2(4000),
  c_memo2            VARCHAR2(4000),
  c_memo3            VARCHAR2(4000),
  c_memo4            VARCHAR2(4000),
  c_memo5            VARCHAR2(4000),
  c_dealtype         VARCHAR2(1),
  c_assettype        VARCHAR2(1),
  f_finanrate        NUMBER(12,6),
  c_finanlimit       VARCHAR2(10),
  d_receivedate      DATE,
  d_dealdate         DATE,
  f_receprincipal    NUMBER(19,6),
  f_receprofit       NUMBER(19,6),
  f_receprofitoff    NUMBER(19,6),
  f_receassetmoney   NUMBER(19,6),
  f_rececost         NUMBER(19,6),
  c_prebalance       VARCHAR2(25),
  f_dealprincipal    NUMBER(19,6),
  f_dealprofit       NUMBER(19,6),
  f_dealprofitoff    NUMBER(19,6),
  f_dealassetmoney   NUMBER(19,6),
  f_dealprofitext    NUMBER(19,6),
  f_bookbalance      NUMBER(19,6),
  f_recrivedmoney    NUMBER(19,6),
  c_prereceivemoney  NUMBER(19,6),
  f_creditorrate     NUMBER(12,6),
  f_dealcreditorrate NUMBER(12,6),
  f_prereceivecash   NUMBER(19,6),
  c_stagedes         VARCHAR2(4000),
  f_entitymoney      NUMBER(19,6),
  c_entitydes        VARCHAR2(4000),
  f_stockmoney       NUMBER(19,6),
  c_sotckdes         VARCHAR2(4000),
  f_receiveall       NUMBER(19,6),
  f_prefare          NUMBER(19,6),
  C_DEPCODE  				 VARCHAR2(32),
  C_CREATEUSER			 VARCHAR2(32),
	D_CREATETIME			 DATE,
	C_UPDATEUSER			 VARCHAR2(32),
	D_UPDATETIME			 DATE
)';
execute immediate ' 
  alter table TSCHEME_INFO
  add constraint TSCHEME_INFO primary key (l_schemeid)';
end if;

if not fc_IsSeqExists('SEQ_TSCHEME_INFO_ID') then
    execute immediate 'create sequence SEQ_TSCHEME_INFO_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
  --[20161116]20161116zhangchao(新建方案信息表)-- end ---
if not fc_IsTableExists('TSCHEME_CUSTRELATION') then
  execute immediate 'create table TSCHEME_CUSTRELATION
(
  UUID        VARCHAR2(32),
  C_RELATIONCODE      VARCHAR2(32),
  L_SCHEMEID      NUMBER(10)
)';
end if;
  --[20161118]20161118zhangchao(方案信息表添加历史方案编号，方案来源字段)-- start ---
if not fc_IsColExists('tscheme_info','l_oldschemeid') then
	execute immediate 'alter table tscheme_info add l_oldschemeid NUMBER(10)';
end if;  
 
if not fc_IsColExists('tscheme_info','c_source') then
	execute immediate 'alter table tscheme_info add c_source VARCHAR2(2)';
end if;  
  --[20161118]20161118zhangchao(方案信息表添加历史方案编号，方案来源字段)-- end ---
--[201611130031]20161118wcy(抵质押物表新增字段方案编号、类型、所在地)
if not fc_IsColExists('tasset_pawn_info','L_SCHEMEID') then
	execute immediate 'alter table tasset_pawn_info add L_SCHEMEID NUMBER(10)';
end if; 
if not fc_IsColExists('tasset_pawn_info','C_TYPE') then
	execute immediate 'alter table tasset_pawn_info add C_TYPE VARCHAR2(1)';
end if; 
if not fc_IsColExists('tasset_pawn_info','C_PLACE') then
	execute immediate 'alter table tasset_pawn_info add C_PLACE VARCHAR2(255)';
end if;   
   --[20161118]20161118zhangchao(更改c_projecttype长度)-- start ---
  execute immediate 'alter table tscheme_info modify c_projecttype varchar2(30)'; 
  --[20161118]20161118zhangchao(更改c_projecttype长度)-- end ---
  
  --[20161122]20161122zhangchao(方案信息表添加机构id，非首次申报明细，管理人员字段)-- start ---
if not fc_IsColExists('tscheme_info','c_orgid') then
	execute immediate 'alter table tscheme_info add c_orgid VARCHAR2(40)';
end if;  
if not fc_IsColExists('tscheme_info','c_eclaretypetype') then
	execute immediate 'alter table tscheme_info add c_eclaretypetype VARCHAR2(2)';
end if;  
if not fc_IsColExists('tscheme_info','c_manager') then
	execute immediate 'alter table tscheme_info add c_manager VARCHAR2(255)';
end if;  
  --[20161122]20161122zhangchao(方案信息表添加机构id，非首次申报明细，管理人员字段)-- end ---
   --[20161122]20161122zhangchao(方案信息表添加业务经理字段)-- start ---
if not fc_IsColExists('tscheme_info','c_bussmanager') then
	execute immediate 'alter table tscheme_info add c_bussmanager VARCHAR2(32)';
end if;  
  --[20161122]20161122zhangchao(方案信息表添加业务经理字段)-- end ---
  
   --[20161122]20161122zhangchao(方案信息表添加扩展字段字段)-- start ---
if not fc_IsColExists('tscheme_info','C_EXTFIELD1') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD1 VARCHAR2(255)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD2') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD2 VARCHAR2(255)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD3') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD3 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD4') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD4 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD5') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD5 VARCHAR2(4000)';
end if;  
  --[20161122]20161122zhangchao(方案信息表添加扩展字段)-- end ---
  
  --[20161122]20161122zhangchao(方案信息表添加流水号字段)-- start ---
if not fc_IsColExists('tscheme_info','L_SERIALNO') then
	execute immediate 'alter table tscheme_info add L_SERIALNO VARCHAR2(20)';
end if;  
  --[20161122]20161122zhangchao(方案信息表添加流水号字段)-- end ---
 
   
    --[20161128]20161128zhangchao(添加字段债务人杠杆比率，内部评估值，现金回收是否分期)-- start ---
if not fc_IsColExists('tscheme_info','C_LEVERAGE2') then
	execute immediate 'alter table tscheme_info add C_LEVERAGE2 VARCHAR2(10)';
end if;  
if not fc_IsColExists('tscheme_info','C_INNERVALUE') then
	execute immediate 'alter table tscheme_info add C_INNERVALUE VARCHAR2(20)';
end if;  
if not fc_IsColExists('tscheme_info','C_ISSTAGE') then
	execute immediate 'alter table tscheme_info add C_ISSTAGE VARCHAR2(1)';
end if;  
    
     --[20161128]20161128zhangchao(添加字段债务人杠杆比率，内部评估值，现金回收是否分期)-- end ---
     
      --[20161128]20161128zhangchao(添加字段本次方案新增总投放金额，集团合并新增投放金额（含子公司），我公司新增投放金额（不含子公司）)-- start ---
if not fc_IsColExists('tscheme_info','F_MONEY1') then
	execute immediate 'alter table tscheme_info add F_MONEY1 NUMBER(19,6)';
end if;  
if not fc_IsColExists('tscheme_info','F_MONEY2') then
	execute immediate 'alter table tscheme_info add F_MONEY2 NUMBER(19,6)';
end if;  
if not fc_IsColExists('tscheme_info','F_MONEY3') then
	execute immediate 'alter table tscheme_info add F_MONEY3 NUMBER(19,6)';
end if;  
    
     --[20161128]20161128zhangchao(添加字段本次方案新增总投放金额，集团合并新增投放金额（含子公司），我公司新增投放金额（不含子公司）)-- end ---
     
      --[20161129]20161129zhangchao(修改字段长度)-- start ---
 execute immediate 'alter table tscheme_info modify C_BUSITYPE varchar2(50)'; 
 execute immediate 'alter table tscheme_info modify c_investway_zc varchar2(50)'; 
 execute immediate 'alter table tscheme_info modify c_profitway varchar2(50)'; 
 execute immediate 'alter table tscheme_info modify c_dealtype varchar2(3)';
 execute immediate 'alter table tscheme_info modify C_SUBTYPE varchar2(100)';
 execute immediate 'alter table tscheme_info modify C_ISDECLARETYPE varchar2(2)';
    
     --[20161129]20161129zhangchao(修改字段长度)-- end ---
	 
	 --[20161128]20161128wangbl(方案表中添加字段风险分类（单户）)-- start ---
if not fc_IsColExists('tscheme_info','c_riskclassification') then
	execute immediate 'alter table TSCHEME_INFO add c_riskclassification varchar2(1)';
end if;  
	 --[20161128]20161128wangbl(方案表中添加字段风险分类（单户）)-- start --- 

--[201611130029]zoubin20161128(借款人和债权合同表新增字段)-- start --- 
if not fc_IsColExists('tasset_loanaccount_info','l_schemeid') then
  execute immediate 'alter table tasset_loanaccount_info add l_schemeid number(10)';
end if;  

if not fc_IsColExists('tasset_loanaccount_info','c_isalldeal') then
  execute immediate 'alter table tasset_loanaccount_info add c_isalldeal varchar(1)';
end if;

if not fc_IsColExists('tasset_loanaccount_info','c_assetsource') then
  execute immediate 'alter table tasset_loanaccount_info add c_assetsource varchar(2)';
end if;

if not fc_IsColExists('tasset_creditorcontract','c_credittype') then
  execute immediate 'alter table tasset_creditorcontract add c_credittype VARCHAR2(2)';
end if;  

if not fc_IsColExists('tasset_creditorcontract','c_assetcode') then
  execute immediate 'alter table tasset_creditorcontract add c_assetcode VARCHAR2(50)';
end if;  

if not fc_IsColExists('tasset_creditorcontract','c_assettype') then
  execute immediate 'alter table tasset_creditorcontract add c_assettype VARCHAR2(3)';
end if;   

if not fc_IsColExists('tasset_creditorcontract','f_alldebt') then
  execute immediate 'alter table tasset_creditorcontract add f_alldebt number(19,6)';
end if;  

if not fc_IsColExists('tasset_creditorcontract','f_assetbalance') then
  execute immediate 'alter table tasset_creditorcontract add f_assetbalance number(19,6)';
end if;  

if not fc_IsColExists('tasset_creditorcontract','c_enterprisename') then
  execute immediate 'alter table tasset_creditorcontract add c_enterprisename VARCHAR2(50)';
end if; 

if not fc_IsColExists('tasset_creditorcontract','c_loanaccountnum') then
  execute immediate 'alter table tasset_creditorcontract add c_loanaccountnum VARCHAR2(4)';
end if; 

if not fc_IsColExists('tasset_creditorcontract','c_loanaccountname') then
  execute immediate 'alter table tasset_creditorcontract add c_loanaccountname VARCHAR2(50)';
end if; 
 
if not fc_IsSeqExists('SEQ_TASSET_CREDITORCONTRACT_ID') then
    execute immediate 'create sequence SEQ_TASSET_CREDITORCONTRACT_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;

if fc_IsColExists('tasset_loanaccount_info','c_loanaccountnum') then
     execute immediate 'alter table tasset_loanaccount_info modify c_loanaccountnum varchar2(50)';
 end if;
	 
if fc_IsColExists('tasset_creditorcontract','c_loanaccountnum') then
     execute immediate 'alter table tasset_creditorcontract modify c_loanaccountnum varchar2(50)';
 end if;

if fc_IsColExists('tasset_creditorcontract','c_assetcode') then
     execute immediate 'alter table tasset_creditorcontract drop column c_assetcode ';
end if;

 if not fc_IsColExists('tasset_creditorcontract','c_assetname') then
     execute immediate 'alter table tasset_creditorcontract add c_assetname varchar2(254)';
 end if;

 if fc_IsColExists('tasset_creditorcontract','c_assettype') then
     execute immediate 'alter table tasset_creditorcontract modify c_assettype varchar2(20)';
 end if;

 if not fc_IsColExists('tasset_creditorcontract','c_cykind') then
     execute immediate 'alter table tasset_creditorcontract add c_cykind varchar2(2)';
 end if;
  if  fc_IsColExists('tasset_loanaccount_info','c_assetsource') then
     execute immediate 'alter table tasset_loanaccount_info modify c_assetsource varchar2(6)';
 end if;
--[201611130029]zoubin20161128(借款人和债权合同表新增字段)-- end--- 

--[20161122]20161122zhangchao(方案信息表添加批复文号字段)-- start ---
if not fc_IsColExists('tscheme_info','C_TEXTCODE') then
	execute immediate 'alter table tscheme_info add C_TEXTCODE VARCHAR2(40)';
end if;  
  --[20161122]20161122zhangchao(方案信息表添加批复文号字段)-- end ---
  
--[20161122]20161122zhangchao(方案信息表添加批复结果字段)-- start ---
if not fc_IsColExists('tscheme_info','C_TEXTRES') then
	execute immediate 'alter table tscheme_info add C_TEXTRES VARCHAR2(2)';
end if;  
  --[20161122]20161122zhangchao(方案信息表添加批复结果字段)-- end ---

--20161205wcy(方案和交易对手关联表增加来源字段) -- start--
if not fc_IsColExists('tscheme_custrelation','c_source') then
  execute immediate 'alter table tscheme_custrelation add c_source varchar2(2)';
end if;
--20161205wcy(方案和交易对手关联表增加来源字段) -- end--

--20161207wcy(新增关联方案表) -- start--
if not fc_IsTableExists('TSCHEME_SCHEMERELATION') then
  execute immediate 'create table TSCHEME_SCHEMERELATION
(
  C_RELATIONCODE      VARCHAR2(32),
  L_SCHEMEID      NUMBER(10),
  L_SCHEMEID_OTHER    NUMBER(10)
)';
--20161207wcy(新增关联方案表) -- end --
end if;
--20161209wagnbl(项目文档信息表新增版本号字段) -- start--
if not fc_IsColExists('TPROJECT_NOTEXT','c_textversion') then
	execute immediate 'alter table TPROJECT_NOTEXT add c_textversion VARCHAR2(30)';
end if;
--20161209wagnbl(项目文档信息表新增版本号字段) -- end--
--20161215wcy(修改方案表审批权限字段长度) -- start--
if fc_IsColExists('tscheme_info','c_approvalrights') then
	execute immediate 'alter table tscheme_info modify c_approvalrights varchar2(2)';
end if;
--20161215wcy(修改方案表审批权限字段长度) -- end--

--20161220wcy(方案表增加是否放款字段)-- start--
if not fc_IsColExists('tscheme_info','C_ISLOAN') then
  execute immediate 'alter table tscheme_info add C_ISLOAN VARCHAR2(2)';
end if;
--[M201612220386]wangbl13198(新增所属行业、是否属于母公司经营层权限、是否涉及对外信息披露字段)
if not fc_IsColExists('tscheme_info','c_industry') then
  execute immediate 'alter table TSCHEME_INFO add c_industry varchar2(100)';
end if;
if not fc_IsColExists('tscheme_info','c_isparentright') then
  execute immediate 'alter table TSCHEME_INFO add c_isparentright varchar2(2)';
end if;
if not fc_IsColExists('tscheme_info','c_isdisclosure') then
  execute immediate 'alter table TSCHEME_INFO add c_isdisclosure VARCHAR2(2)';
end if;
--[M201612220386]wangbl13198(新增所属行业、是否属于母公司经营层权限、是否涉及对外信息披露字段)

--20161226zoubin(借款人表新增资产来源代码)-- start--
if not fc_IsColExists('tasset_loanaccount_info','c_assetsourcename') then
  execute immediate 'alter table tasset_loanaccount_info add c_assetsourcename varchar2(80)';
end if;
--20161220zoubin(借款人表新增资产来源代码)-- end--
--20161228zoubin(方案表新增接收后孳生息)-- start--
if not fc_IsColExists('tscheme_info','f_bearinterest') then
  execute immediate 'alter table TSCHEME_INFO add f_bearinterest NUMBER(19,6)';
end if;
--20161228zoubin(方案表新增接收后孳生息)-- end--
-- 20170103wangbl(方案表新增中间业务收入)--start---
if not fc_IsColExists('tscheme_info','f_middlebusinessincome') then
  execute immediate 'alter table TSCHEME_INFO add f_middlebusinessincome NUMBER(19,6)';
end if;
-- 20170103wangbl(方案表新增中间业务收入)---end---

-- 20170103wcy(方案表新增批复日期)--start---
if not fc_IsColExists('tscheme_info','d_textdate') then
  execute immediate 'alter table TSCHEME_INFO add d_textdate DATE';
end if;
-- 20170103wcy(方案表新增批复日期)---end---

--20170106zoubin(债权合同表新增接收后孳生息)-- start--
if not fc_IsColExists('tasset_creditorcontract','f_bearinterest') then
  execute immediate 'alter table tasset_creditorcontract add f_bearinterest NUMBER(19,6)';
end if;
--20170106zoubin(债权合同表新增接收后孳生息)-- end--

-- 20170109wcy(方案表新增基金管理人)--start---
if not fc_IsColExists('tscheme_info','c_fundmanager') then
  execute immediate 'alter table TSCHEME_INFO add c_fundmanager varchar2(10)';
end if;
-- 20170109wcy(方案表新增基金管理人)---end---

-- 20170116wangbl(方案表新增总部批复文号、总部批复结果、总部批复日期)--start---
if not fc_IsColExists('tscheme_info','c_headtextcode') then
  execute immediate 'alter table TSCHEME_INFO add c_headtextcode VARCHAR2(40)';
end if;

if not fc_IsColExists('tscheme_info','c_headtextres') then
  execute immediate 'alter table TSCHEME_INFO add c_headtextres VARCHAR2(2)';
end if;

if not fc_IsColExists('tscheme_info','d_headtextdate') then
  execute immediate 'alter table TSCHEME_INFO add d_headtextdate DATE';
end if;
-- 20170116wangbl(方案表新增总部批复文号、总部批复结果、总部批复日期)---end---

-- 20170116wcy(方案表新增综合抵押率、质押率)--start---
if not fc_IsColExists('tscheme_info','f_dyrate') then
  execute immediate 'alter table TSCHEME_INFO add f_dyrate NUMBER(19,6)';
end if;
if not fc_IsColExists('tscheme_info','f_zyrate') then
  execute immediate 'alter table TSCHEME_INFO add f_zyrate NUMBER(19,6)';
end if;
-- 20170109wcy(方案表新增综合抵押率、质押率)---end---

--20170109wcy(树形字典表TSYS_DICT_TREE)--start--
 if not fc_IsTableExists('TSYS_DICT_TREE') then
  execute immediate 'create table TSYS_DICT_TREE
(                       
  C_DICT_ENTRY_CODE  VARCHAR2(32),               
  C_DICT_ITEM_CODE   VARCHAR2(32),                
  C_DICT_NAME        VARCHAR2(100),                      
  C_PRENT_CODE       VARCHAR2(32),                      
  C_LEVEL            VARCHAR2(2),                                
  C_ISLEAF           VARCHAR2(1),                               
  C_DESC             VARCHAR2(300)                               
)';
  end if;
  
 if not  FC_CONSTRAINTS_EXISTS('TSYS_DICT_TREE', '', 'P', '0') THEN
    execute immediate 'alter table  TSYS_DICT_TREE  add  constraint  PK_TSYS_DICT_TREE primary key (C_DICT_ITEM_CODE,C_DICT_ENTRY_CODE)';
 end if; 
--20170109wcy(树形字典表TSYS_DICT_TREE)--end--

--20170109wcy(抵质押类型字段扩长)--start--
if fc_IsColExists('tasset_pawn_info','c_pawntype') then
     execute immediate 'alter table tasset_pawn_info modify c_pawntype varchar2(20)';
 end if;
--20170109wcy(抵质押类型字段扩长)--start--

--20170117wangbl(方案表中增加请示文号、分公司业务方案初审意见生成时间字段)--start--
if not fc_IsColExists('TSCHEME_INFO','c_requestcode') then
     execute immediate 'alter table TSCHEME_INFO add c_requestcode VARCHAR2(40)';
 end if;
if not fc_IsColExists('TSCHEME_INFO','D_INIOPINIONDATE') then
     execute immediate 'alter table TSCHEME_INFO add D_INIOPINIONDATE date';
 end if;
--20170117wangbl(方案表中增加请示文号、分公司业务方案初审意见生成时间字段)--end--
--20170209zoubin(债权合同信息表新增字段)--start--
if not fc_IsColExists('tasset_creditorcontract','f_jssdcorpusamount') then
     execute immediate 'alter table tasset_creditorcontract add f_jssdcorpusamount number(19,6)';
 end if;
if not fc_IsColExists('tasset_creditorcontract','f_jssdtotalclaims') then
     execute immediate 'alter table tasset_creditorcontract add f_jssdtotalclaims number(19,6)';
 end if;
 if not fc_IsColExists('tasset_creditorcontract','f_jssdinterest') then
     execute immediate 'alter table tasset_creditorcontract add f_jssdinterest number(19,6)';
 end if;
if not fc_IsColExists('tasset_creditorcontract','f_jssdbwinterest') then
     execute immediate 'alter table tasset_creditorcontract add f_jssdbwinterest number(19,6)';
 end if;
 if not fc_IsColExists('tasset_creditorcontract','f_czsdcorpusamount') then
     execute immediate 'alter table tasset_creditorcontract add f_czsdcorpusamount number(19,6)';
 end if;
 if not fc_IsColExists('tasset_creditorcontract','f_czsdinterest') then
     execute immediate 'alter table tasset_creditorcontract add f_czsdinterest number(19,6)';
 end if;
if not fc_IsColExists('tasset_creditorcontract','f_czsdbwinterest') then
     execute immediate 'alter table tasset_creditorcontract add f_czsdbwinterest number(19,6)';
 end if;
--20170209zoubin(债权合同信息表新增字段)--end--


--20170216wcy(方案表增加是否变更字段)--start--
if not fc_IsColExists('tscheme_info','c_ischange') then
  execute immediate 'alter table TSCHEME_INFO add c_ischange VARCHAR2(1)';
end if;
--20170216wcy(方案表增加是否变更字段)--end--

--20170223wcy(附重组接口增加字段)--start--
if not fc_IsColExists('tscheme_info','c_coanumber') then
  execute immediate 'alter table TSCHEME_INFO add c_coanumber VARCHAR2(32)';
end if;
if not fc_IsColExists('tscheme_info','c_fundmonitormethod') then
  execute immediate 'alter table TSCHEME_INFO add c_fundmonitormethod VARCHAR2(32)';
end if;
if not fc_IsColExists('tscheme_info','c_guaranteemethod') then
  execute immediate 'alter table TSCHEME_INFO add c_guaranteemethod VARCHAR2(32)';
end if;
--20170216wcy(附重组接口增加字段)--end--

-- 20170302(方案表新增总部请示文号字段)--start---
if not fc_IsColExists('tscheme_info','c_headrequesttextcode') then
  execute immediate 'alter table TSCHEME_INFO add c_headrequesttextcode VARCHAR2(40)';
end if;
-- 20170302(方案表新增总部请示文号字段)--end---



--20170303zc(方案信息表新资金投放方案增字段开始)
if not fc_IsColExists('tscheme_info','f_isstrongestcount') then
  execute immediate 'alter table TSCHEME_INFO add f_isstrongestcount varchar2(2)';
end if;
if not fc_IsColExists('tscheme_info','c_clientname') then
  execute immediate 'alter table TSCHEME_INFO add c_clientname varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_ranking') then
  execute immediate 'alter table TSCHEME_INFO add c_ranking varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_enterprisenature') then
  execute immediate 'alter table TSCHEME_INFO add c_enterprisenature VARCHAR2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_projectcountry') then
  execute immediate 'alter table TSCHEME_INFO add c_projectcountry varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_projectprovince') then
  execute immediate 'alter table TSCHEME_INFO add c_projectprovince varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_projectcity') then
  execute immediate 'alter table TSCHEME_INFO add c_projectcity VARCHAR2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_projectarea') then
  execute immediate 'alter table TSCHEME_INFO add c_projectarea varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_iscooperationmode') then
  execute immediate 'alter table TSCHEME_INFO add c_iscooperationmode VARCHAR2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_investmentmethod_zcgl') then
  execute immediate 'alter table TSCHEME_INFO add c_investmentmethod_zcgl varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','f_fundmanagementfee') then
  execute immediate 'alter table TSCHEME_INFO add f_fundmanagementfee NUMBER(10,6)';
end if;
if not fc_IsColExists('tscheme_info','f_returnoninvestment') then
  execute immediate 'alter table TSCHEME_INFO add f_returnoninvestment NUMBER(10,6)';
end if;
if not fc_IsColExists('tscheme_info','f_managementbusiness') then
  execute immediate 'alter table TSCHEME_INFO add f_managementbusiness NUMBER(10,6)';
end if;
if not fc_IsColExists('tscheme_info','f_synergies') then
  execute immediate 'alter table TSCHEME_INFO add f_synergies NUMBER(19,6)';
end if;
if not fc_IsColExists('tscheme_info','c_subdivided') then
  execute immediate 'alter table TSCHEME_INFO add c_subdivided varchar2(50)';
end if;
--20170303zc(方案信息表资金投放方案新增字段结束)

--20170303zc方案信息表资产处置新增字段开始
if not fc_IsColExists('tscheme_info','c_claimsdealtype') then
  execute immediate 'alter table TSCHEME_INFO add c_claimsdealtype varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_equitydealtype') then
  execute immediate 'alter table TSCHEME_INFO add c_equitydealtype varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_inkinddealtype') then
  execute immediate 'alter table TSCHEME_INFO add c_inkinddealtype VARCHAR2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_otherdealtyoe') then
  execute immediate 'alter table TSCHEME_INFO add c_otherdealtyoe varchar2(50)';
end if;
if not fc_IsColExists('tscheme_info','c_ispartialdisposal') then
  execute immediate 'alter table TSCHEME_INFO add c_ispartialdisposal varchar2(2)';
end if;
if not fc_IsColExists('tscheme_info','f_shareholdingratio') then
  execute immediate 'alter table TSCHEME_INFO add f_shareholdingratio NUMBER(19,6)';
end if;
if not fc_IsColExists('tscheme_info','f_evaluationvalue') then
  execute immediate 'alter table TSCHEME_INFO add f_evaluationvalue NUMBER(19,6)';
end if;
if not fc_IsColExists('tscheme_info','f_schemenetprofit') then
  execute immediate 'alter table TSCHEME_INFO add f_schemenetprofit NUMBER(19,6)';
end if;
if not fc_IsColExists('tscheme_info','f_invvestmoney_mo') then
  execute immediate 'alter table TSCHEME_INFO add f_invvestmoney_mo NUMBER(19,6)';
end if;

--20170303zc方案信息表资产处置新增字段结束

--20170307wcy(抵质押物表增加来源)
if not fc_IsColExists('tasset_pawn_info','c_source') then
	execute immediate 'alter table tasset_pawn_info add c_source varchar2(2)';
end if; 

--20170307wcy创建方案关联信息表
if not fc_IsTableExists('tscheme_object_relation') then
  execute immediate 'create table tscheme_object_relation
(
  C_RELATIONCODE        VARCHAR2(32),
  L_SCHEMEID      NUMBER(10),
  C_OBJECTNAME      VARCHAR2(100),
  C_RELATIONTYPE      VARCHAR2(2),
  F_DIVSCALE  NUMBER(19,6),
  F_INVESTMONEY  NUMBER(19,6),
  F_STOCKMONEY  NUMBER(19,6),
  F_OTHERMONEY  NUMBER(19,6)
)';
end if;

--20170314zc添加行业门类和行业大类字段
if not fc_IsColExists('tscheme_info','c_industrycategory') then
  execute immediate 'alter table TSCHEME_INFO add c_industrycategory varchar2(500)';
end if;
if not fc_IsColExists('tscheme_info','c_bigclass') then
  execute immediate 'alter table TSCHEME_INFO add c_bigclass varchar2(500)';
end if;

--20170314zc添加十个扩展字段(方案信息表添加扩展字段字段)-- start ---
if not fc_IsColExists('tscheme_info','C_EXTFIELD6') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD6 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD7') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD7 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD8') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD8 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD9') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD9 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD10') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD10 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD11') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD11 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD12') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD12 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD13') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD13 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD14') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD14 VARCHAR2(4000)';
end if;  
if not fc_IsColExists('tscheme_info','C_EXTFIELD15') then
	execute immediate 'alter table tscheme_info add C_EXTFIELD15 VARCHAR2(4000)';
end if;  
  --20170314zc添加十个扩展字段(方案信息表添加扩展字段字段)-- end ---
  
--20170315wcy(方案表增加字段是否修改中)
if not fc_IsColExists('tscheme_info','C_ISCHANGING') then
	execute immediate 'alter table tscheme_info add C_ISCHANGING VARCHAR2(1)';
end if; 
--20170317wcy(债权合同序号字段扩长到8位)
 if fc_IsColExists('tasset_creditorcontract','C_CREDITORCONTRACTNUM') then
     execute immediate 'alter table tasset_creditorcontract modify C_CREDITORCONTRACTNUM varchar2(8)';
   end if;
--20170405wangbl(文档历史记录表字段文档名称扩容)
if  fc_IsColExists('TPROJECT_TEXT_HISTORY','c_textname') then
	execute immediate 'alter table TPROJECT_TEXT_HISTORY modify c_textname VARCHAR2(300)';
end if; 
if  fc_IsColExists('TPROJECT_TEXT_HISTORY','C_TEXTREALNAME') then
	execute immediate 'alter table TPROJECT_TEXT_HISTORY modify C_TEXTREALNAME VARCHAR2(300)';
end if; 
--20170412wcy(增加提案信息表)
   if not fc_IsTableExists('tmeeting_proposal') then
    execute immediate 'create table tmeeting_proposal
(
  C_PROPOSALID        VARCHAR2(6),
  C_PROPOSALNAME      VARCHAR2(255),
  C_MEETINGTYPE      VARCHAR2(2),
  C_MANAGEFIELD      VARCHAR2(2),
  C_SPCIFICMATTER      VARCHAR2(2),
  C_CONTENT         VARCHAR2(4),
  C_MOTIONDEPT      VARCHAR2(100),
  C_DETAIL          VARCHAR2(1000),
  C_CREATEUSER			 VARCHAR2(32),
  D_CREATETIME			 DATE,
  PROCESSINSTANCEID  VARCHAR2(32),
  c_projectcode     VARCHAR2(32)
)';
  end if;
  
  if not fc_IsSeqExists('SEQ_TMEETING_PROPOSAL_ID') then
    execute immediate 'create sequence SEQ_TMEETING_PROPOSAL_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
  end if;
  
  --20170412wcy(增加提案内容配置表)
  if not fc_IsTableExists('TMEETING_CONTENT_CONFIG') then
    execute immediate 'create table TMEETING_CONTENT_CONFIG
(
  c_id          VARCHAR2(10),
  c_typelevel   VARCHAR2(2),
  c_value       VARCHAR2(255),
  c_parentid    VARCHAR2(100),
  c_meetingtype VARCHAR2(10),
  c_isuse       VARCHAR2(1)
)';
  end if;
  
  --[M201611020787]20161102zuoqiang(项目表新增风险资本因子) -- start--
if not fc_IsColExists('TPROJECT_INFO','VENTURE_CAPITAL1') then
	execute immediate 'alter table TPROJECT_INFO add VENTURE_CAPITAL1 varchar2(10)';
end if;

if not fc_IsColExists('TPROJECT_INFO','VENTURE_CAPITAL2') then
	execute immediate 'alter table TPROJECT_INFO add VENTURE_CAPITAL2 varchar2(10)';
end if;

if not fc_IsColExists('TPROJECT_INFO','VENTURE_CAPITAL3') then
	execute immediate 'alter table TPROJECT_INFO add VENTURE_CAPITAL3 varchar2(10)';
end if;
--[M201611020787]20161102zuoqiang(项目表新增风险资本因子) -- end--

--20170510wcy(抵质押物表字段扩长)
if fc_IsColExists('tasset_pawn_info','C_ORIGINALCREDENTIALSNO') then
	execute immediate 'alter table tasset_pawn_info modify C_ORIGINALCREDENTIALSNO varchar2(1024)';
end if;
if fc_IsColExists('tasset_pawn_info','C_OTHERCREDENTIALSNO') then
	execute immediate 'alter table tasset_pawn_info modify C_OTHERCREDENTIALSNO varchar2(1024)';
end if;

--[中信信托]20161107yangsen(项目表新增字段-是否外接分仓、伞形子项目个数) -- start--
if not fc_IsColExists('tproject_info','l_subumbrellanum') then
	execute immediate 'alter table tproject_info add l_subumbrellanum number(8)';
end if;

if not fc_IsColExists('tproject_info','c_isextwarehouse') then
	execute immediate 'alter table tproject_info add c_isextwarehouse varchar2(20)';
end if;
--[中信信托]20161107yangsen(项目表新增字段-是否外接分仓、伞形子项目个数) --end--
--[201611070797]20161114zhuheng(项目表新增字段-前端资金在委托前是否已存在杠杆) -- start--
if not fc_IsColExists('tproject_info','c_existleveragemultiple') then
	execute immediate 'alter table tproject_info add c_existleveragemultiple varchar2(2)';
end if;
--[201611070797]20161114zhuheng(项目表新增字段-前端资金在委托前是否已存在杠杆) --end--
--[201611100637]20161115wucq(项目表增加是否可销户字段) -- start--
if not fc_IsColExists('TPROJECT_INFO','C_CAN_CANCEL') then
	execute immediate 'alter table TPROJECT_INFO add C_CAN_CANCEL VARCHAR2(8)';
end if;
  --[中信信托][M201611160599]20161117zhudz(项目信息表添加委托人)--begin
if not fc_IsColExists('tproject_info', 'C_PRINCIPAL') then
	execute immediate 'alter table tproject_info add C_PRINCIPAL VARCHAR2(50)';
end if;
--20170628yys(流水表C_VERWALTEN表字段扩长)
 if fc_IsColExists('TINVEST_REPAYDETAIL','C_VERWALTEN') then
  execute immediate 'alter table TINVEST_REPAYDETAIL modify C_VERWALTEN varchar2(300)';
end if;
--抵质押物信息表中增加子项目编号、模板编号字段
if not fc_IsColExists('TINVEST_COLLATERAL','c_subprojectcode') then 
  execute immediate 'alter table TINVEST_COLLATERAL add c_subprojectcode VARCHAR2(30)';
end if;
if not fc_IsColExists('TINVEST_COLLATERAL','c_tempcode') then
  execute immediate 'alter table TINVEST_COLLATERAL add c_tempcode VARCHAR2(32)';
end if;

--20170725 方案审批流程记录 投票人 主持人 收票 记录表
if not fc_IsTableExists('tflow_voters') then
  execute immediate 'CREATE TABLE tflow_voters (
    l_id number(10) NOT NULL,
    c_taskid VARCHAR2(32),
    c_accepterids VARCHAR2(255), --收票人ids
    c_hostids VARCHAR2(255),--主持人
    c_voterids varchar(255)--投票人ids
  )';
  execute immediate 'alter table tflow_voters add constraint pk_tflow_voters primary key(l_id)';
end if;
if not fc_IsSeqExists('SEQ_TFLOW_VOTERS_ID') then
    execute immediate 'create sequence SEQ_TFLOW_VOTERS_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20170728yys(手工估值新增手工估值日期字段)
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO', 'D_OPERTORVALUATIONDATE') then
  execute immediate 'alter table TASSET_LOANACCOUNT_INFO add D_OPERTORVALUATIONDATE DATE';
end if;
if fc_IsColExists('tinvest_plan','c_repayway') then
	execute immediate 'alter table tinvest_plan modify c_repayway varchar2(2)';
end if;
if fc_IsColExists('tinvest_fundvary','c_repayway') then
	execute immediate 'alter table tinvest_fundvary modify c_repayway varchar2(2)';
end if;

--20170904yuanlh21739(TINVEST_CONTRACT新增字段，用于以股抵债、债务更新)
if not fc_IsColExists('TINVEST_CONTRACT','f_interest') then
	execute immediate 'alter table TINVEST_CONTRACT add f_interest NUMBER(19,6)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_otherfee') then
	execute immediate 'alter table TINVEST_CONTRACT add f_otherfee NUMBER(19,6)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_repayer') then
	execute immediate 'alter table TINVEST_CONTRACT add c_repayer VARCHAR2(32)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_repayertype') then
	execute immediate 'alter table TINVEST_CONTRACT add c_repayertype VARCHAR2(32)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_repayamount') then
	execute immediate 'alter table TINVEST_CONTRACT add f_repayamount NUMBER(19,6)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_guaranteeamount') then
	execute immediate 'alter table TINVEST_CONTRACT add f_guaranteeamount NUMBER(19,6)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','d_stopinterestday') then
	execute immediate 'alter table TINVEST_CONTRACT add d_stopinterestday date';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','d_startcountday') then
	execute immediate 'alter table TINVEST_CONTRACT add d_startcountday date';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_debtamount') then
	execute immediate 'alter table TINVEST_CONTRACT add f_debtamount NUMBER(19,6)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_newdebtamount') then
	execute immediate 'alter table TINVEST_CONTRACT add f_newdebtamount NUMBER(19,6)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_planrebuydate') then
	execute immediate 'alter table TINVEST_CONTRACT add f_planrebuydate date';
end if;
--20170906wangbl13198(TASSET_LOANACCOUNT_INFO新增字段罚息、其他金额、预计处置期限、其他债权人信息、其他财产线索)
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','c_abstract11') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add c_abstract11 VARCHAR2(3000)';
end if;

if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','c_abstract12') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add c_abstract12 VARCHAR2(3000)';
end if;

  if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','f_defaultinterest') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add f_defaultinterest NUMBER(19,6)';
end if;

if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','f_otherfee') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add f_otherfee NUMBER(19,6)';
end if;

if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','c_predisposalperiod') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add c_predisposalperiod varchar2(3)';
end if;

if not fc_IsColExists('TOFFICE_APPLY','C_HIREGROUP') then
	execute immediate 'alter table TOFFICE_APPLY add C_HIREGROUP varchar2(255)';
end if;

--20170907chenhy18048(新建到账数据表)
if not fc_IsTableExists('TREPAY_ARRIVAL') then
    execute immediate '
    create table TREPAY_ARRIVAL
(
  L_ARRIVALID     NUMBER not null,
  D_BANK_DATE     DATE,
  C_PAYER_COMPANY VARCHAR2(100),
  C_PAYER_BANK    VARCHAR2(100),
  C_PAYEE_BANK    VARCHAR2(100),
  F_PAY_AMOUNT    NUMBER(19,2),
  C_REMARK        VARCHAR2(500),
  C_STATUS        VARCHAR2(2) not null,
  C_FLAG          VARCHAR2(1) not null,
  C_CREATER       VARCHAR2(32),
  D_CREATE        DATE not null,
  C_UPDATER       VARCHAR2(32),
  D_UPDATE        DATE,
  C_PAYER_ACCOUNT VARCHAR2(30),
  C_PAYEE_ACCOUNT VARCHAR2(30),
  C_SERIAL_NO     VARCHAR2(32),
  C_PAYEE_COMPANY VARCHAR2(100)
)';
end if;
		  
--20170907chenhy18048(新建到账数据表的主键)
if fc_IsTableExists('TREPAY_ARRIVAL') and not fc_Constraints_Exists('TREPAY_ARRIVAL','PK_TREPAY_ARRIVAL','P','0') then
execute immediate '
  alter table TREPAY_ARRIVAL
  add constraint PK_TREPAY_ARRIVAL primary key (L_ARRIVALID)
  using index';
end if;

--20170907chenhy18048(新建序列，用于到账数据表的主键)
if not fc_IsSeqExists('SEQ_REPAY_ARRIVAL_ID') then
	execute immediate 'create sequence SEQ_REPAY_ARRIVAL_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;


--20170907chenhy18048(新建到账数据与认领流程关联表)
if not fc_IsTableExists('TREPAY_ARRIVAL_APPROVE') then
    execute immediate '
		create table TREPAY_ARRIVAL_APPROVE
			(
			  L_APPROVEID        VARCHAR2(32) not null,
			  L_ARRIVALIDS       VARCHAR2(200) not null,
			  PROCESS_INSTANCEID VARCHAR2(100) not null,
			  C_CREATER          VARCHAR2(32) not null,
			  D_CREATE           DATE not null,
			  C_UPDATER          VARCHAR2(32),
			  D_UPDATE           DATE
			)';
end if;

--20170907chenhy18048(新建到账数据与认领流程关联表的主键)
if fc_IsTableExists('TREPAY_ARRIVAL_APPROVE') and not fc_Constraints_Exists('TREPAY_ARRIVAL_APPROVE','PK_TREPAY_ARRIVAL_APPROVE','P','0') then
    execute immediate '
	  alter table TREPAY_ARRIVAL_APPROVE
		  add constraint PK_TREPAY_ARRIVAL_APPROVE primary key (L_APPROVEID)
		  using index';
  end if;
  

--20170907chenhy18048(新建认领数据表)
if not fc_IsTableExists('TREPAY_CLAIM') then
execute immediate '
	create table TREPAY_CLAIM
	(
	  L_CLAIMID   NUMBER not null,
	  L_APPROVEID VARCHAR2(32) not null,
	  L_ARRIVALID NUMBER not null,
	  F_AMOUNT    NUMBER(19,2) not null,
	  C_USERID    VARCHAR2(32) not null,
	  C_ORGID     VARCHAR2(40) not null,
	  D_DATE      DATE not null,
	  C_STATUS    VARCHAR2(1)
	)';
  
end if;
	  
--20170907chenhy18048(新建认领数据表的主键)
if fc_IsTableExists('TREPAY_CLAIM') and not fc_Constraints_Exists('TREPAY_CLAIM','PK_TREPAY_CLAIM','P','0') then
    execute immediate '
	  alter table TREPAY_CLAIM
	  add constraint PK_TREPAY_CLAIM primary key (L_CLAIMID)
	  using index ';
  end if;

--20170907chenhy18048(新建序列，用于认领数据表的主键)
if not fc_IsSeqExists('SEQ_REPAY_CLAIM_ID') then
	execute immediate '
			create sequence SEQ_REPAY_CLAIM_ID
			minvalue 1
			maxvalue 999999999
			start with 1000
			increment by 1
			cache 20';
end if;


--20170907chenhy18048(新建确认流程和认领数据关联关系表)
if not fc_IsTableExists('TREPAY_CLAIM_APPROVE') then
    execute immediate '
		create table TREPAY_CLAIM_APPROVE
			(
			  L_APPROVEID        VARCHAR2(32) not null,
			  PROCESS_INSTANCEID VARCHAR2(100) not null,
			  C_CREATER          VARCHAR2(32) not null,
			  D_CREATE           DATE not null,
			  C_UPDATER          VARCHAR2(32),
			  D_UPDATE           DATE,
			  L_CLAIMID          NUMBER not null
			)';
end if;
			  
--20170907chenhy18048(新建确认流程和认领数据关联关系表的主键)
if fc_IsTableExists('TREPAY_CLAIM_APPROVE') and not fc_Constraints_Exists('TREPAY_CLAIM_APPROVE','PK_TREPAY_CLAIM_APPROVE','P','0') then
    execute immediate '
	  alter table TREPAY_CLAIM_APPROVE
		  add constraint PK_TREPAY_CLAIM_APPROVE primary key (L_APPROVEID)
		  using index ';
end if;

--[M201709071590]20170908shiph(评估机构选聘流程新增选聘方式理由和选聘工作小组字段)
if not fc_IsColExists('TAGENCY_APPLY', 'C_SELECTTYPEREASON') then
  execute immediate 'alter table TAGENCY_APPLY add C_SELECTTYPEREASON VARCHAR2(3000)';
end if;
if not fc_IsColExists('TAGENCY_APPLY', 'C_HIREGROUP') then
  execute immediate 'alter table TAGENCY_APPLY add C_HIREGROUP VARCHAR2(3000)';
end if;

-- 20170910wangbl(TALTERNATIVE_LIBRARY表新增联系人、联系电话)
if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_contract') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY add c_contract varchar2(255)';
end if;

if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_contractnumber') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY add c_contractnumber varchar2(32)';
end if;
----20170911zhangcm(新增tagency_evaluation_result（中介机构评价结果表）、tagency_evaluation_detail（中介机构评价明细表、tagency_evaluation_item（中介机构评价项）、中介机构评价结果表序列、中介机构评价明细表序列)
if not fc_IsTableExists('TAGENCY_EVALUATION_RESULT') then
execute immediate '
	create table TAGENCY_EVALUATION_RESULT
	(
	  c_evalustatusid   VARCHAR2(32) not null,
	  c_agencyid        VARCHAR2(32) not null,
	  d_beginworktime   DATE,
	  d_endworktime     DATE,
	  c_evalutype       VARCHAR2(2) not null,
	  c_projectcode     VARCHAR2(32),
	  c_feeeval         VARCHAR2(255) ,
	  c_depteval        VARCHAR2(2) not null,
	  c_agencyquality   VARCHAR2(2) not null,
	  d_evaluatime      DATE not null,
	  c_userid          VARCHAR2(32) not null,
	  f_totalscore      NUMBER(3) not null,
	  c_deptevalreason  VARCHAR2(255),
	  c_agencyqtyreason VARCHAR2(255)
	)';
end if;

if not fc_IsTableExists('TAGENCY_EVALUATION_DETAIL') then
execute immediate '
	create table TAGENCY_EVALUATION_DETAIL
	(
	  c_id         VARCHAR2(32) not null,
	  c_evalid     VARCHAR2(32) not null,
	  c_evalitemid VARCHAR2(32) not null,
	  c_score      NUMBER(3) not null
	)';
end if;

if not fc_IsTableExists('TAGENCY_EVALUATION_ITEM') then
execute immediate '
	create table TAGENCY_EVALUATION_ITEM
	(
	  c_evalitemid    VARCHAR2(32) not null,
	  c_evalitemname  VARCHAR2(255) not null,
	  c_evalitemscore NUMBER(3) not null,
	  f_evalorder     NUMBER(2) not null,
	  d_createdtime   DATE not null,
	  c_isvalid       VARCHAR2(2) not null
	)';
end if;


if not fc_IsSeqExists('SEQ_EVALUATION_DETAIL_ID') then
    execute immediate 'create sequence SEQ_EVALUATION_DETAIL_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

if not fc_IsSeqExists('SEQ_EVALUATION_RESULT_ID') then
    execute immediate 'create sequence SEQ_EVALUATION_RESULT_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

-- 20170912wangbl13198(交易结构信息表)
if not fc_IsTableExists('TRANSACTION_STRUCTURE_INFO') then
    execute immediate '
-- Create table
create table TRANSACTION_STRUCTURE_INFO
(
  c_structureid           VARCHAR2(32) not null,
  c_relatedcode           VARCHAR2(32),
  c_customer_relationcode VARCHAR2(32),
  c_participanttype       VARCHAR2(2),
  c_incometype            VARCHAR2(2),
  c_contributionamount    NUMBER(19,6),
  c_contributionrate      NUMBER(19,6),
  c_memo                  VARCHAR2(3000),
  c_type                  VARCHAR2(2),
  c_isautoplan            VARCHAR2(1)
)';
end if;

--20170912wangbl13198(交易结构信息表的主键)
if fc_IsTableExists('TRANSACTION_STRUCTURE_INFO') and not fc_Constraints_Exists('TRANSACTION_STRUCTURE_INFO','PRIMARYKEY','P','0') then
    execute immediate '
	  alter table TRANSACTION_STRUCTURE_INFO
  add constraint PRIMARYKEY primary key (C_STRUCTUREID)';
end if;

/* 20170912yuanlh21739 与TA对接，AMC字段改造 */
/*1. tsys_organization.parent_id,manage_id*/
if fc_IsTableExists('tsys_organization') then
	execute immediate 'alter table tsys_organization MODIFY parent_id VARCHAR(60)';
	execute immediate 'alter table tsys_organization MODIFY manage_id VARCHAR(60)';
end if;

/*2. TSYS_USER.l_userid*/
if fc_IsTableExists('TSYS_USER') and not fc_IsColExists('TSYS_USER','l_userid') then
	execute immediate 'alter table TSYS_USER add l_userid  NUMBER(10)';
end if;

/*3. TSYS_PARAMETER.param_name */
if fc_IsTableExists('TSYS_PARAMETER') then
	execute immediate 'alter table TSYS_PARAMETER MODIFY param_name VARCHAR(150)';
end if;

/*4. TSYS_DICT_ENTRY.dict_entry_name*/
if fc_IsTableExists('TSYS_DICT_ENTRY') then
	execute immediate 'alter table TSYS_DICT_ENTRY MODIFY dict_entry_name VARCHAR(150)';
end if;

/*5. TSYS_DICT_ITEM.rel_code*/
if fc_IsTableExists('TSYS_DICT_ITEM') then
	execute immediate 'alter table TSYS_DICT_ITEM MODIFY rel_code VARCHAR(75)';
end if;

--20170914zhangcm21390(中介机构冻结/解冻流程表新增)
if not fc_IsTableExists('tagency_freeze') then
    execute immediate ' create table TAGENCY_FREEZE(
		  c_applyid          VARCHAR2(32) not null,
		  c_applyuser        VARCHAR2(20),
		  d_applydate        DATE,
		  c_type             VARCHAR2(2) not null,
		  c_agencyid         VARCHAR2(32) not null,
		  c_reason           VARCHAR2(255) not null,
		  process_instanceid VARCHAR2(100) not null
		)';
end if;

--20170920wcy(提案内容表流程实例号扩长)
 if fc_IsColExists('tmeeting_proposal','PROCESSINSTANCEID') then
  execute immediate 'alter table tmeeting_proposal modify PROCESSINSTANCEID varchar2(64)';
end if;
--20170920wcy(提案内容表详细字段扩长)
 if fc_IsColExists('tmeeting_proposal','C_DETAIL') then
  execute immediate 'alter table tmeeting_proposal modify C_DETAIL varchar2(4000)';
end if;
if not fc_IsSeqExists('SEQ_AGENCY_FREEZE_ID') then
    execute immediate 'create sequence SEQ_AGENCY_FREEZE_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

-- 20170914zhangcm21390(TOFFICE_APPLY表新增选聘方式理由字段)
if not fc_IsColExists('TOFFICE_APPLY','c_selecttypereason') then
	execute immediate 'alter table TOFFICE_APPLY add c_selecttypereason VARCHAR2(255)';
end if;

-- 20170915wangbl13198(TPROJECT_STORE_INFO表新增字段)start
if not fc_IsColExists('TPROJECT_STORE_INFO','c_projectleader') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_projectleader varchar2(255)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_sponsor') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_sponsor varchar2(255)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_groupname') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_groupname varchar2(255)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_issigned') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_issigned varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','d_presigntime') then
	execute immediate 'alter table TPROJECT_STORE_INFO add d_presigntime date';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','f_presignamount') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_presignamount number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isstartc3process') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isstartc3process varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','f_preimplementamount') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_preimplementamount number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isimplement') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isimplement varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','d_implementtime') then
	execute immediate 'alter table TPROJECT_STORE_INFO add d_implementtime date';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','f_implementamount') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_implementamount number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','d_preimplementtime') then
	execute immediate 'alter table TPROJECT_STORE_INFO add d_preimplementtime date';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isvisitcustomer') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isvisitcustomer varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_iszzgcooperation') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_iszzgcooperation varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','d_laterestcommtime') then
	execute immediate 'alter table TPROJECT_STORE_INFO add d_laterestcommtime date';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_iscomprojectform') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_iscomprojectform varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isdefcommmodel') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isdefcommmodel varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_cooperationmodel') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_cooperationmodel varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isdefobject') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isdefobject varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_targetcustomer') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_targetcustomer varchar2(255)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isdefquittype') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isdefquittype varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_quittype') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_quittype varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isdefriskmeasure') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isdefriskmeasure varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_riskcontrolmeasure') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_riskcontrolmeasure varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_isdefmql') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_isdefmql varchar2(2)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','f_storerate') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_storerate number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_currentproblem') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_currentproblem varchar2(3000)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_nextstageplan') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_nextstageplan varchar2(3000)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_memo') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_memo varchar2(3000)';
end if;

if not fc_IsColExists('TPROJECT_STORE_INFO','c_projectnature') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_projectnature varchar2(20)';
end if;
-- 20170915wangbl13198(TPROJECT_STORE_INFO表新增字段)end
-- 20170915wangbl13198(TPROJECT_STORE_FACTOR_TRACE储备项目要素流水表新增字段目标主键、模板编号、是否已生效)start
if not fc_IsColExists('TPROJECT_STORE_FACTOR_TRACE','c_maintablekey') then
	execute immediate 'alter table TPROJECT_STORE_FACTOR_TRACE add c_maintablekey VARCHAR2(50)';
end if;

if not fc_IsColExists('TPROJECT_STORE_FACTOR_TRACE','c_tempcode') then
	execute immediate 'alter table TPROJECT_STORE_FACTOR_TRACE add c_tempcode VARCHAR2(20)';
end if;

if not fc_IsColExists('TPROJECT_STORE_FACTOR_TRACE','c_haseffect') then
	execute immediate 'alter table TPROJECT_STORE_FACTOR_TRACE add c_haseffect varchar2(1)';
end if;
-- 20170915wangbl13198(TPROJECT_STORE_FACTOR_TRACE储备项目要素流水表新增字段)end

--20170914zc(新增提案明细表添加投决方式字段，项目信息表新增授权价格字段)start
if not fc_IsColExists('tmeeting_apply_detail','c_votingtype') then 
  execute immediate 'alter table tmeeting_apply_detail add c_votingtype VARCHAR2(5)';
end if;

if not fc_IsColExists('tproject_info','f_authorizedprice') then 
  execute immediate 'alter table tproject_info add f_authorizedprice VARCHAR2(100)';
end if;
--20170914zc(新增提案明细表添加投决方式字段，项目信息表新增授权价格字段)end

   --[201709220333]20170922liulei(新建拍卖信息表)-- start ---
if not fc_IsTableExists('TRECORD_AUCTION') then
execute immediate 'create table TRECORD_AUCTION
(
  c_creditorcontractcode  VARCHAR2(32) not null,
  l_auctionid  NUMBER not null,
  c_pawncode  VARCHAR2(32)  not null,
  c_relationcode    VARCHAR2(32)  not null,
  f_rate  NUMBER(19,6),
  f_startingprice        NUMBER(19,6),
  f_retainprice       NUMBER(19,6),
  f_dealprice NUMBER(19,6),
  d_auctiondate      DATE,
  c_auctiontimes   VARCHAR2(4),
  c_contacts   VARCHAR2(32),
  c_contactnumber   VARCHAR2(32),
  c_auctionresult   VARCHAR2(2)
)';
execute immediate ' 
  alter table TRECORD_AUCTION
  add constraint TRECORD_AUCTION primary key (l_auctionid)';
end if;

if not fc_IsSeqExists('SEQ_TRECORD_AUCTION') then
    execute immediate 'create sequence SEQ_TRECORD_AUCTION
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--[201709220333]20170922liulei(新建拍卖信息表)-- end ---

--[201709221396]20170922shiph22854(新建冲销数据流程和资金流水关联关系表)
if not fc_IsTableExists('TINVEST_FUNDVARY_APPROVE') then
    execute immediate '
		create table TINVEST_FUNDVARY_APPROVE
			(
			  L_APPROVEID        VARCHAR2(32) not null,
			  PROCESS_INSTANCEID VARCHAR2(100) not null,
			  C_CREATER          VARCHAR2(32) not null,
			  D_CREATE           DATE not null,
			  C_UPDATER          VARCHAR2(32),
			  D_UPDATE           DATE,
			  L_FUNDVARYID       NUMBER not null
			)';
end if;
--[201709221396]20170922shiph22854(新建冲销数据流程和资金流水关联关系表的主键)
if fc_IsTableExists('TINVEST_FUNDVARY_APPROVE') and not fc_Constraints_Exists('TINVEST_FUNDVARY_APPROVE','PK_TINVEST_FUNDVARY_APPROVE','P','0') then
    execute immediate '
	  alter table TINVEST_FUNDVARY_APPROVE
		  add constraint PK_TINVEST_FUNDVARY_APPROVE primary key (L_APPROVEID)
		  using index ';
end if;
--[201709261505]20170926yanys21724(定期估值审批流程)--start--
if not fc_IsTableExists('TASSET_APPRAISEMENT_AP') then
execute immediate 'create table TASSET_APPRAISEMENT_AP
(
  l_serialno                 NUMBER not null,
  c_objectcode               VARCHAR2(32),
  c_objecttype               VARCHAR2(2),
  c_appraisementtype         VARCHAR2(2),
  c_appraisementway          VARCHAR2(2),
  d_appraisementdate         DATE,
  f_repayrate                NUMBER(19,6),
  f_evalway                  NUMBER(19,6),
  f_appraisementvalue        NUMBER(19,6),
  f_changerate               NUMBER(19,6),
  c_enteruser                VARCHAR2(32),
  d_entertime                DATE,
  c_lastupdateuser           VARCHAR2(32),
  d_lastupdatetime           DATE,
  f_repaymoney               NUMBER(19,6),
  f_remainingguaranteeamount NUMBER(19,6),
  c_loanaccountcode          VARCHAR2(32),
  process_instanceid         VARCHAR2(100)
)';
end if;
--[201709261505]20170926yanys21724(定期估值审批流程)--end--
--[201709261505]20170926yanys21724(资产交割流程表)--start--
if not fc_IsTableExists('TASSET_TRANSFER') then
execute immediate 'create table TASSET_TRANSFER
(
  c_transferid           VARCHAR2(32) not null,
  c_applyuser            VARCHAR2(20),
  d_applydate            DATE,
  process_instanceid     VARCHAR2(100),
  c_projectcode          VARCHAR2(32),
  c_contractid           VARCHAR2(32),
  c_islawsuitinfofull    VARCHAR2(1),
  c_isexecinfofull       VARCHAR2(1),
  c_isseizedinfofull     VARCHAR2(1),
  c_isbankruptcyinfofull VARCHAR2(1),
  c_isbidinfofull        VARCHAR2(1)
)';
execute immediate ' 
  alter table TASSET_TRANSFER
  add constraint PK_TRANSFERID primary key (C_TRANSFERID)';
end if;
--[201709261505]20170926yanys21724(资产交割流程表)--end--
--[201709261505]20170926yanys21724(资产交割详细表)--start--
if not fc_IsTableExists('TASSET_TRANSFER_DETAIL') then
execute immediate 'create table TASSET_TRANSFER_DETAIL
(
  c_transferdetailid     VARCHAR2(32) not null,
  c_transferid           VARCHAR2(32) not null,
  c_loanaccountcode      VARCHAR2(32),
  f_lastbalanceall       NUMBER(19,6),
  f_loanaccountcosts     NUMBER(19,6),
  f_realloanaccountcosts NUMBER(19,6),
  d_appraisetime         DATE
)';
execute immediate ' 
  alter table TASSET_TRANSFER_DETAIL
  add constraint PK_TRANSFERDETAILID primary key (C_TRANSFERDETAILID)';
end if;
--[201709261505]20170926yanys21724(资产交割详细表)--end--

--20170926 zhangcm21390(合同管理模块字段) start  ---
if not fc_IsColExists('TINVEST_CONTRACT','c_isprofitaccrua') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_isprofitaccrua  VARCHAR2(2)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_frontfee') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   f_frontfee  NUMBER(19,2) ';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_backenddesc') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_backenddesc  VARCHAR2(255)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_clearuplimit') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_clearuplimit VARCHAR2(32)   ';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_isneedtransfer') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_isneedtransfer  VARCHAR2(2)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_rivalname') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_rivalname VARCHAR2(255)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_financing') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_financing VARCHAR2(255)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_promisebalance') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   f_promisebalance NUMBER(19,2) ';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_creditschedule') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_creditschedule VARCHAR2(255)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_debtrate') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_debtrate VARCHAR2(32)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_dealtype') then
	execute immediate 'alter table TINVEST_CONTRACT ADD   c_dealtype  VARCHAR2(2) ';
end if;

 if fc_IsColExists('c_investtype','TINVEST_CONTRACT') then
  execute immediate 'alter table TINVEST_CONTRACT modify c_investtype varchar2(32)';
end if;
 if fc_IsColExists('c_investtype','TINVEST_CONTRACTVARY') then
  execute immediate 'alter table TINVEST_CONTRACTVARY modify c_investtype VARCHAR2(32)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_investplantype') then
	execute immediate 'alter table TINVEST_CONTRACT add c_investplantype varchar2(8)  ';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_investplancode') then
	execute immediate 'alter table TINVEST_CONTRACT add c_investplancode VARCHAR2(32)  ';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_investplanname') then
	execute immediate 'alter table TINVEST_CONTRACT add c_investplanname VARCHAR2(255)  ';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','c_reorganizationtype') then
	execute immediate 'alter table TINVEST_CONTRACT add c_reorganizationtype VARCHAR2(32)  ';
end if;
--合同管理模块字段  end---
--20170927wcy(新增aims黑名单管理表) -- start--
if not fc_IsTableExists('TBLANKLIST_INFO') then
  execute immediate 'create table TBLANKLIST_INFO
(
  c_blankid      VARCHAR2(32) not null,
  c_customercode VARCHAR2(32),
  c_busitype     VARCHAR2(3000),
  c_remark       VARCHAR2(1000),
  c_checkflag    VARCHAR2(1),
  d_createtime   DATE,
  c_createuser   VARCHAR2(32),
  d_updatetime   DATE,
  c_updateuser   VARCHAR2(32),
  c_ext1         VARCHAR2(32)
)';
end if;
--20170927wcy(新增aims黑名单管理表) -- end --
--20171012wcy(会议准备表新增字段c_participants) -- start--
   if not fc_IsColExists('tmeeting_apply','c_participants') then
     execute immediate 'alter table tmeeting_apply add c_participants varchar2(100)';
   end if;
--20171012wcy(会议准备表新增字段c_participants) -- end--

--20171015kangxin(资金流水表新增字段C_DEPOSITTYPE、C_DEPOSITTRANSFERTYPE) --start
  IF NOT FC_ISCOLEXISTS('TINVEST_FUNDVARY', 'C_DEPOSITTYPE') THEN
    EXECUTE IMMEDIATE 'alter table TINVEST_FUNDVARY add C_DEPOSITTYPE VARCHAR2(3)';
  END IF;
  IF NOT FC_ISCOLEXISTS('TINVEST_FUNDVARY', 'C_DEPOSITTRANSFERTYPE') THEN
    EXECUTE IMMEDIATE 'alter table TINVEST_FUNDVARY add C_DEPOSITTRANSFERTYPE VARCHAR2(3)';
  END IF;
--20171015kangxin(资金流水表新增字段C_DEPOSITTYPE、C_DEPOSITTRANSFERTYPE) --end


----20171015kangxin(新增TREPAY_DATA_RELATION财务数据关联关系表) --start--
if not fc_IsTableExists('TREPAY_DATA_RELATION') then
execute immediate '
-- Create table
create table TREPAY_DATA_RELATION
(
  L_ID            NUMBER(10) not null,
  C_TYPE          VARCHAR2(2),
  C_RELATION_TYPE      VARCHAR2(2),
  C_BIZ_ID   VARCHAR2(32),
  C_BIZ_TABLE     VARCHAR2(50),
  C_RELATION_ID  VARCHAR2(32),
  C_RELATION_TABLE   VARCHAR2(50),
  L_PARENTID         NUMBER(10),
  C_CREATER         VARCHAR2(32),
  D_CREATE         DATE
)';
execute immediate ' 
-- Create/Recreate primary, unique and foreign key constraints 
alter table TREPAY_DATA_RELATION
  add constraint PK_TREPAY_DATA_RELATION primary key (L_ID)';
execute immediate '
create sequence SEQ_TREPAY_DATA_RELATION_ID
minvalue 1
maxvalue 9999999999
start with 1001
increment by 1
cache 20
';
end if;
----20171015kangxin(新增TREPAY_DATA_RELATION财务数据关联关系表) --end--

----20171015kangxin(流水明细表新增字段C_LOANACCOUNTCODE) --end
IF NOT FC_ISCOLEXISTS('TINVEST_PROFITDETAIL', 'C_LOANACCOUNTCODE') THEN
  EXECUTE IMMEDIATE 'ALTER TABLE TINVEST_PROFITDETAIL ADD C_LOANACCOUNTCODE VARCHAR2(300)';
END IF;
----20171015kangxin(流水明细表新增字段C_LOANACCOUNTCODE) --end--
--20171016wangbl(投融资合同表新增字段公告确认方式、公告日期、转让公告文件序号) 
if not fc_IsColExists('TINVEST_CONTRACT','c_noticeconfirmation') then
     execute immediate 'alter table TINVEST_CONTRACT add c_noticeconfirmation VARCHAR2(2)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','d_noticeday') then
     execute immediate 'alter table TINVEST_CONTRACT add d_noticeday date';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_noticefileid') then
     execute immediate 'alter table TINVEST_CONTRACT add c_noticefileid VARCHAR2(32)';
end if;
---20171017zhangcm(结项流程表的新增)
if not fc_IsTableExists('TPROJECT_CONCLUDING') then
    execute immediate 'create table TPROJECT_CONCLUDING (
			  c_applyid          VARCHAR2(32) not null,
			  c_applyuser        VARCHAR2(20),
			  d_applydate        DATE,
			  process_instanceid VARCHAR2(100) not null,
			  c_projectcode      VARCHAR2(32) not null,
			  c_customercode     VARCHAR2(32),
			  c_concludingtype   VARCHAR2(2),
			  c_cykind           VARCHAR2(8),
			  f_amount           NUMBER(19,6),
			  f_busitimelimit    NUMBER(10),
			  f_interestincome   NUMBER(19,6),
			  f_otherincome      NUMBER(19,6),
			  c_isalterprofit    VARCHAR2(1),
			  c_isexpiry         VARCHAR2(1),
			  c_islawsuit        VARCHAR2(1),
			  c_concludingreport VARCHAR2(500)
			)';
end if;
if not fc_IsSeqExists('SEQ_PROJECT_CONCLUDING_ID') then
    execute immediate 'create sequence SEQ_PROJECT_CONCLUDING_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

--[20171017]20171017liulei(拍卖信息表添加字段 评估价)-- start ---
if not fc_IsColExists('TRECORD_AUCTION','f_estimateprice') then
	execute immediate 'alter table TRECORD_AUCTION add f_estimateprice NUMBER(19,6)';
end if;
--[20171017]20171017liulei(拍卖信息表添加字段 评估价)-- end ---


--[20171017]20171017liulei(拍卖信息表修改字段长度)-- start ---
execute immediate 'alter table TRECORD_AUCTION modify c_auctiontimes varchar2(20)';
--[20171017]20171017liulei(拍卖信息表修改字段长度)-- end ---

--[20171017]20171017zhangchao(投资流水表新增字段，是否挂账)---start-----

IF NOT FC_ISCOLEXISTS('TINVEST_FUNDVARY', 'C_ISDEBTS') THEN
  EXECUTE IMMEDIATE 'alter table TINVEST_FUNDVARY add C_ISDEBTS VARCHAR2(3)';
END IF;

--[20171017]20171017zhangchao(投资流水表新增字段)---end----

--20171017shiph22854(新建计提结果表)
if not fc_IsTableExists('TREPAY_ACCRUAL') then
    execute immediate '
		create table TREPAY_ACCRUAL
			(
			  L_ID                  NUMBER(10) not null,
			  C_TYPE                VARCHAR2(1) not null,
			  C_PARENTID            NUMBER(10),
			  C_PROJECTCODE         VARCHAR2(32) not null,
			  C_CONTRACTID          VARCHAR2(32),
			  C_LOANACCOUNTCODE     VARCHAR2(32),
			  D_CALCDATE            DATE not null,
			  C_CYCLE               VARCHAR2(1),
			  C_YEARDAYS            VARCHAR2(3),
			  F_BEGIN_SCALE         NUMBER(19,2),
			  F_REPAY_SCALE         NUMBER(19,2),
			  F_BALANCE             NUMBER(19,2),
			  F_VALUATION           NUMBER(19,2),
			  F_RATE                NUMBER(10,6),
			  D_VALUATION_DATE      DATE,
			  D_BEGIN_DATE          DATE,
			  D_END_DATE            DATE,
			  L_DAYS                NUMBER,
			  F_PROFIT              NUMBER(19,2) not null,
			  F_OUT_INCOME          NUMBER(19,2),
			  F_OUT_TAX             NUMBER(19,2),
			  C_CREATER             VARCHAR2(32) not null,
			  D_CREATE              DATE not null,
			  C_STATUS              VARCHAR2(2)
			)';
end if;
--20171017shiph22854(新建计提结果表的主键)
if fc_IsTableExists('TREPAY_ACCRUAL') and not fc_Constraints_Exists('TREPAY_ACCRUAL','PK_TREPAY_ACCRUAL','P','0') then
    execute immediate '
	  alter table TREPAY_ACCRUAL
		  add constraint PK_TREPAY_ACCRUAL primary key (L_ID)
		  using index ';
end if;
--20171017shiph22854(新建序列，用于计提结果表的主键)
if not fc_IsSeqExists('SEQ_REPAY_ACCRUAL_ID') then
	execute immediate 'create sequence SEQ_REPAY_ACCRUAL_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--20171018kangxin(新增TREPAY_ARRIVAL_LOG表)  --start
if not fc_IsTableExists('TREPAY_ARRIVAL_LOG') then
execute immediate '
-- Create table
create table TREPAY_ARRIVAL_LOG
(
  L_ID             NUMBER(10) not null,
  L_ARRIVALID      NUMBER(10) not null,
  D_BEGIN          DATE,
  D_END            DATE,
  F_DEALTIME       NUMBER(10),
  C_STATUS         VARCHAR2(2),
  L_BATCH          NUMBER(10),
  C_EXPORTYPE      VARCHAR2(2),
  D_Create         DATE,
  C_REMARK         Varchar2(100)
)';
execute immediate ' 
-- Create/Recreate primary, unique and foreign key constraints 
alter table TREPAY_ARRIVAL_LOG
  add constraint PK_TREPAY_ARRIVAL_LOG primary key (L_ID)';

execute immediate ' 
create sequence SEQ_TREPAY_ARRIVAL_LOG_ID
minvalue 1
maxvalue 9999999999
start with 1001
increment by 1
cache 20';

end if;
--20171018kangxin(新增TREPAY_ARRIVAL_LOG表)  --end
--20171018wangbl(机构备选库信息表中新增律所证编号字段)--start
if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_legalcernumber') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY add c_legalcernumber varchar2(32)';
end if;
--20171018wangbl(机构备选库信息表中新增律所证编号字段)--end
--20171018wangbl(律师信息表中新增律所证编号字段)--start
if not fc_IsColExists('TALTERNATIVE_LAWYER','c_lawyerzzid') then
	execute immediate 'alter table TALTERNATIVE_LAWYER add c_lawyerzzid VARCHAR2(32)';
end if;
if not fc_IsColExists('TALTERNATIVE_LAWYER','c_profield') then
	execute immediate 'alter table TALTERNATIVE_LAWYER add c_profield VARCHAR2(2)';
end if;
--20171018wangbl(律师信息表中新增律所证编号字段)--end

--20171019kangxin(投融资合同表增加字段)--start--
  if not fc_IsColExists('tinvest_contract','F_ACCRUALTAXRATE') then
     execute immediate 'alter table tinvest_contract  add F_ACCRUALTAXRATE NUMBER(10,2)';
   end if;
--20171019kangxin(投融资合同表增加字段)--end--

--[20171017]20171019zhangchao(财务中间表添加流程实例字段)---start-----

IF NOT FC_ISCOLEXISTS('TREPAY_DATA_RELATION', 'PROCESS_INSTANCEID') THEN
  EXECUTE IMMEDIATE 'alter table TREPAY_DATA_RELATION add PROCESS_INSTANCEID VARCHAR2(100)';
END IF;

--[20171017]20171017zhangchao(投资流水表新增字段)---end----

--20171019chenhy18048(到账确认审批配置数据表TREPAY_CONFIRM_CONFIG)--start
if not fc_IsTableExists('TREPAY_CONFIRM_CONFIG') then
execute immediate '
	create table TREPAY_CONFIRM_CONFIG
	(
	  L_ID                NUMBER(10) not null,
	  C_PROJECT_TYPE      VARCHAR2(2) not null,
	  C_RISK_TYPE         VARCHAR2(2),
	  C_PROJECT_BUSITYPE  VARCHAR2(3),
	  C_REPAY_TYPE        VARCHAR2(5) not null,
	  C_FORM_TYPE         VARCHAR2(2) not null,
	  C_ISLOAN            VARCHAR2(1) not null,
	  C_ISITEM            VARCHAR2(1) not null,
	  C_CONTRACT_TYPE     VARCHAR2(2) not null,
	  C_CONTRACT_REQUIRED VARCHAR2(1) not null,
	  C_REPAY_PLAN        VARCHAR2(1) not null,
	  C_ISPROJECT         VARCHAR2(1) not null,
	  C_TRADE_STRUCTURE   VARCHAR2(1) not null
	)';
  
execute immediate '
	alter table TREPAY_CONFIRM_CONFIG
	  add constraint PK_REPAY_CONFIRM_CONFIG primary key (L_ID)';
end if;
--20171019chenhy18048(到账确认审批配置数据表TREPAY_CONFIRM_CONFIG)--end

--20171019chenhy18048(到账确认信息表TREPAY_CONFIRM)--start
if not fc_IsTableExists('TREPAY_CONFIRM') then
execute immediate '
	create table TREPAY_CONFIRM
	(
	  L_CONFIRMID        NUMBER not null,
	  L_APPROVEID        VARCHAR2(32) not null,
	  L_ARRIVALID        NUMBER not null,
	  C_PROJECTCODE      VARCHAR2(32),
	  C_REPAY_TYPE       VARCHAR2(5),
	  D_END              DATE,
	  C_LIQUIDATE_UNIT   VARCHAR2(100),
	  C_LIQUIDATE_TYPE   VARCHAR2(1),
	  C_PAY_TYPE         VARCHAR2(1),
	  C_PLAN_NAME        VARCHAR2(100),
	  C_ISLOAN           VARCHAR2(1),
	  C_SOURCE           VARCHAR2(1),
	  C_SOURCE_CODE      VARCHAR2(500),
	  C_PAYER_NAME       VARCHAR2(100),
	  C_CONTRACT_TYPE    VARCHAR2(1),
	  C_CONTRACT_ID      VARCHAR2(32),
	  C_DELIST           VARCHAR2(100),
	  C_USERID           VARCHAR2(32) not null,
	  C_ORGID            VARCHAR2(40),
	  D_DATE             DATE,
	  PROCESS_INSTANCEID VARCHAR2(100) not null,
	  C_BAIL_TYPE        VARCHAR2(4),
	  F_SERVICE_FREE     NUMBER(19,2),
	  F_CAPITAL          NUMBER(19,2),
	  F_INCOME           NUMBER(19,2)
	)';

execute immediate ' 
	alter table TREPAY_CONFIRM
	  add constraint PK_TREPAY_CONFIRM primary key (L_CONFIRMID)';

execute immediate ' 
	create sequence seq_repay_confirm_id
	minvalue 1
	maxvalue 9999999999
	start with 1000
	increment by 1
	cache 20';
end if;
--20171019chenhy18048(到账确认信息表TREPAY_CONFIRM)--end

--20171019chenhy18048(到账确认信息明细表TREPAY_CONFIRM_DETAIL)--start
if not fc_IsTableExists('TREPAY_CONFIRM_DETAIL') then
execute immediate '
	create table TREPAY_CONFIRM_DETAIL
	(
	  L_ID                   NUMBER not null,
	  L_CONFIRMID            NUMBER not null,
	  C_TYPE                 VARCHAR2(1) not null,
	  C_OBJ_ID               VARCHAR2(32) not null,
	  F_LOAN_AMOUNT          NUMBER(19,2),
	  F_LOAN_COST            NUMBER(19,2),
	  F_REPAY_AMOUNT         NUMBER(19,2),
	  F_AMOUNT               NUMBER,
	  F_DEBTS                NUMBER(19,2),
	  F_NET_REPAY            NUMBER(19,2),
	  C_SPECIAL_REMARK       VARCHAR2(200),
	  C_ISFINISHED           VARCHAR2(1),
	  C_CONTRACTID           VARCHAR2(32),
	  F_REMAIN_CAPITAL       NUMBER(19,2),
	  F_REMAIN_INCOME        NUMBER(19,2),
	  F_WRITEOFF_AMOUNT      NUMBER(19,2),
	  F_WRITEOFF_TYPE        VARCHAR2(1),
	  F_WRITEOFF_CAPITAL     NUMBER(19,2),
	  F_WRITEOFF_INCOME      NUMBER(19,2),
	  D_CREATE               DATE,
	  C_CREDITORCONTRACTCODE VARCHAR2(32)
	)';

execute immediate '
	alter table TREPAY_CONFIRM_DETAIL
	  add constraint PK_TREPAY_CONFIRM_DETAIL primary key (L_ID)';

execute immediate ' 
	create sequence seq_repay_confirm_detail_id
	minvalue 1
	maxvalue 9999999999
	start with 1000
	increment by 1
	cache 20';
end if;
--20171019chenhy18048(到账确认信息明细表TREPAY_CONFIRM_DETAIL)--end

--20171019chenhy18048(交易结构资产表TASSET_STRUCTURE)--start
if not fc_IsTableExists('TASSET_STRUCTURE') then
execute immediate '
	create table TASSET_STRUCTURE
	(
	  C_PROJECTCODE      VARCHAR2(32) not null,
	  C_SUBPROJECTCODE   VARCHAR2(32),
	  C_CONTRACTID       VARCHAR2(32),
	  C_STRUCTUREID      VARCHAR2(32) not null,
	  F_INIT_BALANCE     NUMBER(19,2) not null,
	  F_CURRENT_BALANCE  NUMBER(19,2) not null,
	  F_FROZEN_BALANCE   NUMBER(19,2),
	  F_UNFROZEN_BALANCE NUMBER(19,2),
	  F_CURRENT_PROFIT   NUMBER(19,2),
	  F_CURRENT_FEE      NUMBER(19,2),
	  C_MONEYTYPE        VARCHAR2(3) not null,
	  C_CREATEUSER       VARCHAR2(32) not null,
	  D_CREATETIME       DATE not null,
	  C_UPDATEUSER       VARCHAR2(32),
	  D_UPDATETIME       DATE
	)';

execute immediate '
	alter table TASSET_STRUCTURE
	  add constraint PK_ASSET_STRUCTURE primary key (C_STRUCTUREID)';
end if;

--20171019chenhy18048(交易结构资产表TASSET_STRUCTURE)--end
  
--20171019chenhy18048(交易结构资产持仓表TASSET_STRUCTURE)--start
if not fc_IsTableExists('TASSET_STRUCTURE_STOCK') then
execute immediate '
	create table TASSET_STRUCTURE_STOCK
	(
	  D_DATE             DATE not null,
	  C_PROJECTCODE      VARCHAR2(32) not null,
	  C_SUBPROJECTCODE   VARCHAR2(32),
	  C_CONTRACTID       VARCHAR2(32),
	  C_STRUCTUREID      VARCHAR2(32) not null,
	  F_INIT_BALANCE     NUMBER(19,2) not null,
	  F_CURRENT_BALANCE  NUMBER(19,2) not null,
	  F_FROZEN_BALANCE   NUMBER(19,2),
	  F_UNFROZEN_BALANCE NUMBER(19,2),
	  F_OCCUR_PROFIT     NUMBER(19,2),
	  F_OCCUR_FEE        NUMBER(19,2),
	  C_MONEYTYPE        VARCHAR2(3) not null,
	  C_CREATEUSER       VARCHAR2(32) not null,
	  D_CREATETIME       DATE not null,
	  C_UPDATEUSER       VARCHAR2(32) not null,
	  D_UPDATETIME       DATE not null
	)';

execute immediate '
	alter table TASSET_STRUCTURE_STOCK
	  add constraint PK_ASSET_STRUCTURE_STOCK primary key (D_DATE, C_STRUCTUREID)';
--20171019chenhy18048(交易结构资产持仓表TASSET_STRUCTURE)--end
end if;


--[20171023]20171023liulei(新增文档移交（借阅）记录表)---start----
if not fc_IsTableExists('TDOC_TRANSFER_INFO') then
execute immediate 'create table TDOC_TRANSFER_INFO
(
  L_ID  NUMBER not null,
  C_DEPARTMENT  VARCHAR2(32) not null,
  C_PROJECTCODE  VARCHAR2(32)  not null,
  C_FDCBUSITYPE    VARCHAR2(2),
  C_TRANSFER_TYPE  VARCHAR2(2),
  C_REEL_NUMBER     VARCHAR2(200)  not null,
  C_TRANSFER_USER   VARCHAR2(32),
  C_TRANSFER_DATE      DATE,
  C_BORROWER   VARCHAR2(32),
  C_APPLY_DATE   DATE,
  C_BORROW_TYPE   VARCHAR2(1),
  C_BORROW_REASON   VARCHAR2(500),
  C_DOC_NO    VARCHAR2(100),
  C_DOC_NAME  VARCHAR2(200),
  C_DOC_LEVEL   VARCHAR2(1),
  C_REMARK   VARCHAR2(500),
  C_CREATER  VARCHAR2(32),
  D_CREATE   DATE,
  PROCESS_INSTANCEID  VARCHAR2(32)
)';
execute immediate ' alter table TDOC_TRANSFER_INFO add constraint TDOC_TRANSFER_INFO primary key (L_ID)';

end if;

if not fc_IsSeqExists('SEQ_TDOC_TRANSFER_INFO') then
    execute immediate 'create sequence SEQ_TDOC_TRANSFER_INFO
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--[20171023]20171023liulei(新增文档移交（借阅）记录表)---end----

--20171023chenhy18048(到账确认配置表和确认信息明细表表结构更新)--start

if fc_IsColExists('TREPAY_CONFIRM','F_CAPITAL') then 
  execute immediate 'alter table TREPAY_CONFIRM drop column F_CAPITAL';
end if;

if fc_IsColExists('TREPAY_CONFIRM','F_INCOME') then 
  execute immediate 'alter table TREPAY_CONFIRM drop column F_INCOME';
end if;

if not fc_IsColExists('TREPAY_CONFIRM_CONFIG','C_FUND_SOURCE') then 
  execute immediate 'alter table TREPAY_CONFIRM_CONFIG add C_FUND_SOURCE VARCHAR2(1)';
end if;

if not fc_IsColExists('Trepay_Confirm_Detail','F_PENALTY') then 
  execute immediate 'alter table Trepay_Confirm_Detail add F_PENALTY NUMBER(19,2)';
end if;

if not fc_IsColExists('Trepay_Confirm_Detail','F_OVERDUE_FEE') then 
  execute immediate 'alter table Trepay_Confirm_Detail add F_OVERDUE_FEE NUMBER(19,2)';
end if;

--20171023chenhy18048(到账确认配置表和确认信息明细表表结构更新)--end

--[20171027]20171027liulei(文档移交（借阅）记录表新增字段)---start----
if not fc_IsColExists('TDOC_TRANSFER_INFO','C_RETURNEES') then
     execute immediate 'alter table TDOC_TRANSFER_INFO  add C_RETURNEES VARCHAR2(32)';
end if;
if not fc_IsColExists('TDOC_TRANSFER_INFO','C_RETURNTIME') then
     execute immediate 'alter table TDOC_TRANSFER_INFO add C_RETURNTIME DATE';
end if;
--[20171027]20171027liulei(文档移交（借阅）记录表新增字段)---end----

---20171027zhangcm(合同模板新增出资方要素)
if not fc_IsColExists('TINVEST_CONTRACT','c_investors') then
     execute immediate 'alter table TINVEST_CONTRACT add c_investors VARCHAR2(32)';
end if;
--[20171027]yanys(扩展资金费率表tinvest_farerate的c_sourceflag字段长度为2)
if fc_IsColExists('tinvest_farerate','c_sourceflag') then
     execute immediate 'alter table tinvest_farerate   modify  c_sourceflag varchar(2)';
end if;
--[20171031]wangbl(新增项目组成员信息表)
if not fc_IsTableExists('TPROJECT_TEAM_MEMBERS') then
execute immediate 'create table TPROJECT_TEAM_MEMBERS
(
  c_membersid        VARCHAR2(32) not null,
  c_type             VARCHAR2(2),
  c_relatedcode      VARCHAR2(32),
  c_membercode       VARCHAR2(32),
  f_distributionrate NUMBER(19,6)
)';
execute immediate 'alter table TPROJECT_TEAM_MEMBERS  add constraint FK_PRIMARYKEY primary key (C_MEMBERSID)';
end if;


--20171031chenhy18048(到账确认配置表和确认信息明细表表结构更新)--start

if not fc_IsColExists('TREPAY_CONFIRM','c_status') then 
  execute immediate 'alter table TREPAY_CONFIRM add c_status VARCHAR2(2)';
end if;

--20171031chenhy18048(到账确认配置表和确认信息明细表表结构更新)--end

--20171102wangbl13198(交易结构信息表新增变更日期、备注字段)--start

if not fc_IsColExists('TRANSACTION_STRUCTURE_INFO','d_changedate') then 
  execute immediate 'alter table TRANSACTION_STRUCTURE_INFO add d_changedate date';
end if;

if not fc_IsColExists('TRANSACTION_STRUCTURE_INFO','c_description') then 
  execute immediate 'alter table TRANSACTION_STRUCTURE_INFO add c_description varchar2(3000)';
end if;
--20171102wangbl13198(交易结构信息表新增变更日期、备注字段)--end

--20171106chenhy18048(确认信息表新增剩余保证金是否转费用)--start
if not fc_IsColExists('TREPAY_CONFIRM','C_ISBAILTOFEE') then 
  execute immediate 'alter table TREPAY_CONFIRM add C_ISBAILTOFEE varchar2(1)';
end if;
--20171106chenhy18048(确认信息表新增剩余保证金是否转费用)--end

--20171109liulei22155(投标信息表结构更新)--start
if not fc_IsColExists('TASSET_BID_INFO','C_BIDPATTERN') then 
  execute immediate 'alter table TASSET_BID_INFO add C_BIDPATTERN VARCHAR2(2)';
end if;
--20171109liulei22155(投标信息表结构更新)--end

--20171100wangbl13198(投决准备信息表新增字段)--start
if not fc_IsColExists('TMEETING_APPLY','c_meetingaccesscode') then 
  execute immediate 'alter table TMEETING_APPLY add c_meetingaccesscode varchar2(100)';
end if;

if not fc_IsColExists('TMEETING_APPLY','c_meetingno') then 
  execute immediate 'alter table TMEETING_APPLY add c_meetingno varchar2(100)';
end if;

if not fc_IsColExists('TMEETING_APPLY','c_meetinglink') then 
  execute immediate 'alter table TMEETING_APPLY add c_meetinglink varchar2(100)';
end if;

if not fc_IsColExists('TMEETING_APPLY','c_meetingtime') then 
  execute immediate 'alter table TMEETING_APPLY add c_meetingtime varchar2(100)';
end if;

if not fc_IsColExists('TMEETING_APPLY','c_meetingplace') then 
  execute immediate 'alter table TMEETING_APPLY add c_meetingplace varchar2(100)';
end if;
--20171100wangbl13198(投决准备信息表新增字段)--end

--20171109kangxin21000(tinvest_contract新增是否为制式合同字段)-- start --
if fc_IsTableExists('TINVEST_CONTRACT') and  not fc_IsColExists('TINVEST_CONTRACT','C_isStandard') then
    execute immediate 'alter table tinvest_contract add C_isStandard VARCHAR2(2)';
 end if;
--20171109kangxin21000(tinvest_contract新增是否为制式合同字段)-- end --

--20171109kangxin21000(tinvest_contract新增 出资方类型（0-干系人，1-基金）)-- start --
if fc_IsTableExists('TINVEST_CONTRACT') and  not fc_IsColExists('TINVEST_CONTRACT','C_CUSTOMERTYPE') then
    execute immediate 'alter table tinvest_contract add   C_CUSTOMERTYPE  VARCHAR2(1) ';
 end if;
--20171109kangxin21000(tinvest_contract新增 出资方类型（0-干系人，1-基金）)-- end --

--20171113liulei22155(tasset_pawn_info新增 评估估值-- start --
if fc_IsTableExists('tasset_pawn_info') and  not fc_IsColExists('tasset_pawn_info','f_valuationamount') then
    execute immediate 'alter table tasset_pawn_info add f_valuationamount number(19,6)';
 end if;
--20171113liulei22155(tasset_pawn_info新增 评估估值-- end --

--20171114zhangcm21390(TBANKRUPTCY_INFO新增经办法官、联系方式、破产管理人的联系人、联系方式)--start--
if not fc_IsColExists('TBANKRUPTCY_INFO','c_managercontact') then 
  execute immediate 'alter table TBANKRUPTCY_INFO add c_managercontact VARCHAR2(32)';
end if;

if not fc_IsColExists('TBANKRUPTCY_INFO','c_laywer') then 
  execute immediate 'alter table TBANKRUPTCY_INFO add c_laywer VARCHAR2(255)';
end if;

if not fc_IsColExists('TBANKRUPTCY_INFO','c_laywercontact') then 
  execute immediate 'alter table TBANKRUPTCY_INFO add c_laywercontact VARCHAR2(32)';
end if;

if not fc_IsTableExists('TBANKRUPTCY_MEETING_INFO') then
  execute immediate 'create table TBANKRUPTCY_MEETING_INFO
(
  c_id          VARCHAR2(32) not null,
  c_meetid      VARCHAR2(32) not null,
  d_meetdate    DATE,
  c_meettopic   VARCHAR2(128),
  c_meetcontent VARCHAR2(1500)
)';
end if;
--20171114zhangcm21390---end---

--20171114shiph22854(交易结构信息表新增参与方类型字段)--start

if not fc_IsColExists('TRANSACTION_STRUCTURE_INFO','C_CUSTOMERTYPE') then 
  execute immediate 'alter table TRANSACTION_STRUCTURE_INFO add C_CUSTOMERTYPE VARCHAR2(1)';
end if;

--20171114shiph22854(交易结构信息表新增参与方类型字段)--end

--20171114shiph22854(计提结果表表结构更新)--start

if not fc_IsColExists('TREPAY_ACCRUAL','F_ARRIVAL_SCALE') then 
  execute immediate 'alter table TREPAY_ACCRUAL add F_ARRIVAL_SCALE NUMBER(19,2)';
end if;

--20171114shiph22854(计提结果表表结构更新)--end

--20171115zhangcm(合同新增委贷机构要素)--start--
if not fc_IsColExists('TINVEST_CONTRACT','c_lendingagency') then 
  execute immediate 'alter table TINVEST_CONTRACT add c_lendingagency VARCHAR2(32)';
end if;
--20171115zhangcm(合同新增委贷机构要素)---end----
--20171115wangbl13198(资产交割流程表新增字段)--start--
if not fc_IsColExists('TASSET_TRANSFER','c_processtype') then 
  execute immediate 'alter table TASSET_TRANSFER add c_processtype varchar2(2)';
end if;
--20171115wangbl13198(资产交割流程表新增字段)--end--

--20171115wangbl13198(资产交割流程明细表新增字段)--start--
if not fc_IsColExists('TASSET_TRANSFER_DETAIL','f_evaluationvalue') then 
  execute immediate 'alter table TASSET_TRANSFER_DETAIL add f_evaluationvalue number(19,6)';
end if;

if not fc_IsColExists('TASSET_TRANSFER_DETAIL','f_prerepayamount') then 
  execute immediate 'alter table TASSET_TRANSFER_DETAIL add f_prerepayamount number(19,6)';
end if;

if not fc_IsColExists('TASSET_TRANSFER_DETAIL','f_prequotedprice') then 
  execute immediate 'alter table TASSET_TRANSFER_DETAIL add f_prequotedprice number(19,6)';
end if;
--20171115wangbl13198(资产交割流程明细表新增字段)--end--
--20170914wcy(为处置流水导入新增字段)---start---
if not fc_IsColExists('tasset_loanaccount_info', 'd_subcompanyreceivedate') then
  execute immediate 'alter table tasset_loanaccount_info add d_subcompanyreceivedate DATE';
end if;

if not fc_IsColExists('tasset_loanaccount_info', 'f_subcompanyreceivemoney') then
  execute immediate 'alter table tasset_loanaccount_info add f_subcompanyreceivemoney NUMBER(19,6)';
end if;

if not fc_IsColExists('TINVEST_FUNDVARY', 'F_TRANSACTIONMONEY') then
  execute immediate 'alter table TINVEST_FUNDVARY add F_TRANSACTIONMONEY NUMBER(19,6)';
end if;

if not fc_IsColExists('TINVEST_FUNDVARY', 'C_DELISTED') then
  execute immediate 'alter table TINVEST_FUNDVARY add C_DELISTED VARCHAR2(100)';
end if;

if not fc_IsColExists('TINVEST_FUNDVARY', 'C_PAYMENTWAY') then
  execute immediate 'alter table TINVEST_FUNDVARY add C_PAYMENTWAY VARCHAR2(2)';
end if;

if not fc_IsColExists('TINVEST_FUNDVARY', 'C_MANAGEPLANNAME') then
  execute immediate 'alter table TINVEST_FUNDVARY add C_MANAGEPLANNAME VARCHAR2(100)';
end if;

if not fc_IsColExists('TINVEST_FUNDVARY', 'C_SUMMARY') then
  execute immediate 'alter table TINVEST_FUNDVARY add C_SUMMARY VARCHAR2(4000)';
end if;

if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','f_mindealprice') then
     execute immediate 'alter table TASSET_LOANACCOUNT_INFO add f_mindealprice NUMBER(19,6)';
end if;
--20170914wcy(为处置流水导入新增字段)---end---

--20171120zhangchao(投资流水表新增诉讼费是否超标字段)-- start ---
if not fc_IsColExists('tinvest_fundvary','c_isoutpace') then
	execute immediate 'alter table tinvest_fundvary add c_isoutpace varchar2(2)';
end if;  
--20171120zhangchao(投资流水表新增诉讼费是否超标字段)-- end ---

--20171124kangxin21000(tmeeting_apply_detail表新增字段)-- start ---
if not fc_IsColExists('tmeeting_apply_detail','d_passDate') then
  execute immediate 'alter table tmeeting_apply_detail  add d_passDate date';
end if;  

if not fc_IsColExists('tmeeting_apply_detail','c_implementConMemo') then
  execute immediate 'alter table tmeeting_apply_detail  add c_implementConMemo VARCHAR2(4000)';
end if;  

if not fc_IsColExists('tmeeting_apply_detail','c_validityMemo') then
  execute immediate 'alter table tmeeting_apply_detail  add c_validityMemo VARCHAR2(4000)';
end if;  
--20171124kangxin21000(tmeeting_apply_detail表新增字段)- end ---

--20171124kangxin21000(新增TMEETING_APPLY_CONDITION表)-- start ---
if not fc_IsTableExists('TMEETING_APPLY_CONDITION') then
  execute immediate 'create table TMEETING_APPLY_CONDITION
(
  process_instanceid VARCHAR2(100),
  c_status           VARCHAR2(2),
  c_condition        VARCHAR2(3000),
  l_id               NUMBER not null
)';

execute immediate '
alter table TMEETING_APPLY_CONDITION
  add constraint PK_MEETING_APPLY_CONDITION primary key (L_ID)';
end if;

if not fc_IsSeqExists('SEQ_MEETING_APPLY_CONDITION') then
    execute immediate 'create sequence SEQ_MEETING_APPLY_CONDITION
      minvalue 1
      maxvalue 999999999999999
      start with 120
      increment by 1
      cache 20';
end if;
--20171124kangxin21000(新增TMEETING_APPLY_CONDITION表)- end ---

--20171127zhangcm--start--
if not fc_IsColExists('TASSET_CREDITORCONTRACT','d_lawdeadend') then
	execute immediate 'alter table TASSET_CREDITORCONTRACT add d_lawdeadend date';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_underdescr') then
	execute immediate 'alter table TINVEST_CONTRACT add c_underdescr varchar2(2000)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_planmanager') then
	execute immediate 'alter table TINVEST_CONTRACT add c_planmanager varchar2(32)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_gambling') then
	execute immediate 'alter table TINVEST_CONTRACT add c_gambling varchar2(2000)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_issendhighsup') then
	execute immediate 'alter table TINVEST_CONTRACT add c_issendhighsup varchar2(1)';
end if;
--20171127zhangcm--end--

--20171128liulei(诉讼信息表新增字段)-- start ---
if not fc_IsColExists('tlawsuit_info','f_judgeamount') then
	execute immediate 'alter table tlawsuit_info  add f_judgeamount number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','d_paydate') then
	execute immediate 'alter table tlawsuit_info  add d_paydate DATE';
end if;

if not fc_IsColExists('tlawsuit_info','c_handlejudge') then
	execute immediate 'alter table tlawsuit_info  add c_handlejudge varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_telephone') then
	execute immediate 'alter table tlawsuit_info  add c_telephone varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_ifagency') then
	execute immediate 'alter table tlawsuit_info  add c_ifagency varchar2(1)';
end if;

if not fc_IsColExists('tlawsuit_info','c_agencyname') then
	execute immediate 'alter table tlawsuit_info  add c_agencyname varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_agencycontact') then
	execute immediate 'alter table tlawsuit_info  add c_agencycontact varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_agencycontactnum') then
	execute immediate 'alter table tlawsuit_info add c_agencycontactnum varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','d_exedate') then
	execute immediate 'alter table tlawsuit_info add d_exedate DATE';
end if;
--20171128liulei(诉讼信息表新增字段)-- end ---

--20171128liulei(拍卖信息表新增字段)-- start ---

if not fc_IsColExists('TRECORD_AUCTION','c_serviceagency') then
	execute immediate 'alter table TRECORD_AUCTION ADD c_serviceagency VARCHAR2(32)';
end if;

--20171128liulei(拍卖信息表新增字段)-- end --- 


--201711219zhangcm(合同新增代垫费用)--start--
if not fc_IsColExists('TINVEST_CONTRACT','f_disbursementfee') then
     execute immediate 'alter table TINVEST_CONTRACT add f_disbursementfee NUMBER(25,6)';
end if;
--20171129zhangcm(合同新增代垫费用)--end--
--20171205wcy(方案表增加字段是否已归档)
if not fc_IsColExists('tscheme_info','C_ISARCHIVED') then
	execute immediate 'alter table tscheme_info add C_ISARCHIVED VARCHAR2(1)';
end if; 

--20171208yanys21724(修改投资合同表转让公告类型字段的长度)--start--
if  fc_IsColExists('TINVEST_CONTRACT','c_noticeconfirmation') then 
  execute immediate 'alter table TINVEST_CONTRACT modify c_noticeconfirmation VARCHAR2(32)';
end if;
--20171208yanys21724(修改投资合同表转让公告类型字段的长度)--end--

--20171213wcy(业务标识表新增字段)--start--
if not fc_IsColExists('tinvest_busiflag','c_busitype') then
	execute immediate 'alter table tinvest_busiflag add c_busitype varchar2(50)';
end if;
--20171213wcy(业务标识表新增字段)--end--

--20171212liulei(投资合同表新增字段)--start--
if not fc_IsColExists('TINVEST_CONTRACT','c_firstparty') then
	execute immediate 'alter table TINVEST_CONTRACT add c_firstparty varchar2(32)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','c_secondparty') then
	execute immediate 'alter table TINVEST_CONTRACT add c_secondparty varchar2(32)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','f_copies1') then
	execute immediate 'alter table TINVEST_CONTRACT add f_copies1 Number(19,6)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','f_copies2') then
	execute immediate 'alter table TINVEST_CONTRACT add f_copies2 Number(19,6)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','f_copies3') then
execute immediate 'alter table TINVEST_CONTRACT add f_copies3 Number(19,6)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','c_otherparty') then
	execute immediate 'alter table TINVEST_CONTRACT add c_otherparty varchar2(32)';
end if;


if not fc_IsColExists('TINVEST_CONTRACT','c_stamp') then
	execute immediate 'alter table TINVEST_CONTRACT add c_stamp varchar2(32)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','c_ifstamp') then
	execute immediate 'alter table TINVEST_CONTRACT add c_ifstamp varchar2(2)';
end if;

if not fc_IsColExists('TINVEST_CONTRACT','c_contractprint') then
	execute immediate 'alter table TINVEST_CONTRACT add c_contractprint varchar2(2)';
end if;
--20171212liulei(投资合同表新增字段)--end--

--20171222chenhy18048(到账确认信息和明细表新增字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_REMAIN_PENALTY') then
	execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_REMAIN_PENALTY NUMBER(19,2)';
end if;
if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_COMPOUNDINTEREST') then
	execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_COMPOUNDINTEREST NUMBER(19,2)';
end if;
if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_PRE_COMPOUNDINTEREST') then
	execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_PRE_COMPOUNDINTEREST NUMBER(19,2)';
end if;
if not fc_IsColExists('TREPAY_CONFIRM','c_distributionorder') then
	execute immediate 'alter table TREPAY_CONFIRM add c_distributionorder VARCHAR2(1)';
end if;
--20171222chenhy18048(到账确认明细表新增字段)--end--

if not fc_IsColExists('tlawsuit_info','f_judgeamount') then
	execute immediate 'alter table tlawsuit_info  add f_judgeamount number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','d_paydate') then
	execute immediate 'alter table tlawsuit_info  add d_paydate DATE';
end if;

if not fc_IsColExists('tlawsuit_info','c_handlejudge') then
	execute immediate 'alter table tlawsuit_info  add c_handlejudge varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_telephone') then
	execute immediate 'alter table tlawsuit_info  add c_telephone varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_ifagency') then
	execute immediate 'alter table tlawsuit_info  add c_ifagency varchar2(1)';
end if;

if not fc_IsColExists('tlawsuit_info','c_agencyname') then
	execute immediate 'alter table tlawsuit_info  add c_agencyname varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_agencycontact') then
	execute immediate 'alter table tlawsuit_info  add c_agencycontact varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','c_agencycontactnum') then
	execute immediate 'alter table tlawsuit_info add c_agencycontactnum varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','d_exedate') then
	execute immediate 'alter table tlawsuit_info add d_exedate DATE';
end if;

if not fc_IsColExists('TLAWSUIT_INFO','c_caseresult') then
	execute immediate 'alter table TLAWSUIT_INFO add c_caseresult varchar2(2)';
end if;
--2017zhangcm(诉讼管理)--end--
--20171224zhangcm(执行管理)--start--
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_evaluationname') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add c_evaluationname VARCHAR2(32)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_identifyname') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add c_identifyname VARCHAR2(32)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_isexecuteend') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add c_isexecuteend varchar2(1)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_judicialsale') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add c_judicialsale VARCHAR2(4000)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_assetsdebt') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add c_assetsdebt VARCHAR2(4000)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_recoveamount') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add c_recoveamount VARCHAR2(4000)';
end if;
if not fc_IsColExists('TBANKRUPTCY_INFO','c_managercontact') then 
  execute immediate 'alter table TBANKRUPTCY_INFO add c_managercontact VARCHAR2(32)';
end if;

if not fc_IsColExists('TBANKRUPTCY_INFO','c_laywer') then 
  execute immediate 'alter table TBANKRUPTCY_INFO add c_laywer VARCHAR2(255)';
end if;

if not fc_IsColExists('TBANKRUPTCY_INFO','c_laywercontact') then 
  execute immediate 'alter table TBANKRUPTCY_INFO add c_laywercontact VARCHAR2(32)';
end if;
if not fc_IsColExists('TBANKRUPTCY_INFO','c_creditorsmeet') then
	execute immediate 'alter table TBANKRUPTCY_INFO add c_creditorsmeet VARCHAR2(4000)';
end if;

if not fc_IsColExists('TSEIZED_INFO','c_isboycott') then
	execute immediate 'alter table TSEIZED_INFO add c_isboycott varchar2(2)';
end if;
if not fc_IsColExists('TSEIZED_INFO','c_seizedobjectid') then
	execute immediate 'alter table TSEIZED_INFO add c_seizedobjectid VARCHAR2(32)';
end if;
--20171224zhangcm(执行管理)--start--

--20171222kangxin(投后相关的表新增)--start--

--投后待办提醒表
if not fc_IsTableExists('tafter_investment_notice') then
    execute immediate 'create table tafter_investment_notice (
			  L_ID          	 NUMBER(10) not null,
			  L_RULEID           NUMBER(10) not null,
			  c_projectcode      varchar2(32),
			  c_projectname      varchar2(50),
			  C_LOANACCOUNTCODE  VARCHAR2(32),
			  c_loanaccountname  varchar2(50),
			  c_noticeto         VARCHAR2(32) not null,
			  D_NOTICEDATE       DATE,
			  c_status           VARCHAR2(2) not null
			)';
	execute immediate ' 
	alter table tafter_investment_notice
    	add constraint PK_af_inves_notice primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_af_invest_notice_ID') then
    execute immediate 'create sequence SEQ_af_invest_notice_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

--投后记录跟踪表
if not fc_IsTableExists('tafter_investment_trace_record') then
    execute immediate 'create table tafter_investment_trace_record (
			  L_ID          	 VARCHAR2(32) not null,
			  c_recordtype       VARCHAR2(2) not null,
			  c_projectcode      VARCHAR2(32) not null,
			  c_loanaccountcode  VARCHAR2(32),
			  d_recorddate       DATE not null,
			  c_recordusercode   VARCHAR2(32) not null,
			  c_fivelevel    	 VARCHAR2(2),
			  c_createtype       VARCHAR2(2),
			  c_status           VARCHAR2(2) not null,
			  c_iswarning  		 VARCHAR2(2) not null,
			  c_warninginfo   	 VARCHAR2(2000),
			  c_projecttraceinfo VARCHAR2(2000) not null,
			  c_todo             VARCHAR2(2000),
			  c_riskdesc         VARCHAR2(2000),
			  c_loantraceinfo    VARCHAR2(2000),
			  c_mortgagetraceinfo VARCHAR2(2000),
			  c_guaranteetraceinfo  VARCHAR2(2000),
			  c_managementdesc    VARCHAR2(2000),
			  process_instanceid  VARCHAR2(100)
			)';
	execute immediate ' 
	alter table tafter_investment_trace_record
    	add constraint PK_af_inves_trace_record primary key (L_ID)';

end if;

--投后重点借款人跟踪表
if not fc_IsTableExists('tafter_investment_record_vip') then
    execute immediate 'create table tafter_investment_record_vip (
			  L_ID          	 NUMBER(10) not null,
			  c_recordid         VARCHAR2(32) not null,
			  c_loanaccountcode  VARCHAR2(32) not null,
			  c_traceinfo  		 VARCHAR2(2000) not null,
			  c_actionplan       VARCHAR2(2000) not null
			)';
	execute immediate ' 
	alter table tafter_investment_record_vip
    	add constraint PK_af_inves_record_vip primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_af_invest_recordvip_ID') then
    execute immediate 'create sequence SEQ_af_invest_recordvip_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

--投后提醒规则表
if not fc_IsTableExists('tafter_investment_notice_rule') then
    execute immediate 'create table tafter_investment_notice_rule (
			  L_ID          	 NUMBER(10) not null,
			  c_projectcode      varchar2(32),
			  c_ruletype         VARCHAR2(2) not null,
			  c_noticetype       VARCHAR2(2) not null,
			  c_busitype  		 VARCHAR2(4),
			  c_noticeto         VARCHAR2(600) not null,
			  c_noticetotype     VARCHAR2(2) not null,
			  c_noticerate       VARCHAR2(2) not null,
			  l_noticerateday    NUMBER(10),
			  c_basedatetype     VARCHAR2(2),
			  c_basedate         DATE,
			  l_beforenoticeday  NUMBER(10) not null,
			  f_contractmoneybegin   NUMBER(19,6),
			  f_contractmoneyend      NUMBER(19,6),
			  c_memo             VARCHAR2(1000),
			  c_status           VARCHAR2(2) not null
			)';
	execute immediate ' 
	alter table tafter_investment_notice_rule
    	add constraint PK_af_inves_notice_rule primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_af_invest_noticerule_ID') then
    execute immediate 'create sequence SEQ_af_invest_noticerule_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

--投后提醒自定义时间表
if not fc_IsTableExists('tafter_investment_notice_date') then
    execute immediate 'create table tafter_investment_notice_date (
			  L_ID          	 NUMBER(10) not null,
			  l_ruleid         	 NUMBER(10) not null,
			  d_checkdate        DATE not null
			)';
	execute immediate ' 
	alter table tafter_investment_notice_date
    	add constraint PK_af_inves_notice_date primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_af_invest_noticedate_ID') then
    execute immediate 'create sequence SEQ_af_invest_noticedate_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

--20171222kangxin(投后相关的表新增)--end--

--20171219yanys21724(为抵质押物要素跟踪表增加实物资产所需字段)--start--
if  not fc_IsColExists('TINVEST_COLLATERAL','c_realassettype') then 
  execute immediate 'alter table TINVEST_COLLATERAL add c_realassettype VARCHAR2(2)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_SOURCEPROPERTIES') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_SOURCEPROPERTIES VARCHAR2(2)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_ASSETSOURCE') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_ASSETSOURCE VARCHAR2(2)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_USESTATUS') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_USESTATUS VARCHAR2(2)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_REALASSETSTATUS') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_REALASSETSTATUS VARCHAR2(2)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_WARRANTNO') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_WARRANTNO VARCHAR2(255)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_AREA') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_AREA VARCHAR2(6)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_REALASSETCOSTS') then 
  execute immediate 'alter table TINVEST_COLLATERAL add C_REALASSETCOSTS VARCHAR2(32)';
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_NEW_LWARRANTNO') then 
	execute immediate 'alter table TINVEST_COLLATERAL add C_NEW_LWARRANTNO VARCHAR2(255)'; 
 end if;   
 
if  not fc_IsColExists('TINVEST_COLLATERAL','C_NEW_HWARRANTNO') then 
	execute immediate 'alter table TINVEST_COLLATERAL add C_NEW_HWARRANTNO VARCHAR2(255)';    
 end if; 
 
if  not fc_IsColExists('TINVEST_COLLATERAL','F_AMOUNT') then 
	execute immediate 'alter table TINVEST_COLLATERAL add F_AMOUNT NUMBER(19,2)';
end if;   

if  not fc_IsColExists('TINVEST_COLLATERAL','F_TRANSFER_TAX') then 
	execute immediate 'alter table TINVEST_COLLATERAL add F_TRANSFER_TAX NUMBER(19,2)'; 
end if;

if  not fc_IsColExists('TINVEST_COLLATERAL','C_PAWNCODE') then 
	execute immediate 'alter table TINVEST_COLLATERAL add C_PAWNCODE VARCHAR2(32)'; 
end if;



--20171219yanys21724(为抵质押物要素跟踪表增加实物资产类型字段)--end--
--[M201712270152]20171227qiull(修改TPROJECT_FACTOR_INFO中C_COPYFROMFACTOR的长度)--start--
  if fc_IsColExists('tproject_factor_info','c_copyfromfactor') then
     execute immediate 'alter table tproject_factor_info modify c_copyfromfactor varchar2(255)';
   end if;
--[M201712270152]20171227qiull(修改TPROJECT_FACTOR_INFO中C_COPYFROMFACTOR的长度)--end--
--[M201712291054]20171229qiull(业务标识表修改字段长度)--start----
if fc_IsColExists('TINVEST_BUSIFLAG','C_INVESTTYPE') then
	execute immediate 'alter table TINVEST_BUSIFLAG modify C_INVESTTYPE VARCHAR2(5)';
end if;
--[M201712291054]20171229qiull(业务标识表修改字段长度)--end----
--20171228yanys21724(为资产交割明细增加对象类型字段)--start--
if  not fc_IsColExists('TASSET_TRANSFER_DETAIL','C_OBJECTTYPE') then 
  execute immediate 'alter table TASSET_TRANSFER_DETAIL add C_OBJECTTYPE VARCHAR2(32)';
end if;
--20171228yanys21724(为资产交割明细增加对象类型字段)--end--

--[201712240064]20180102shiph22854(新增风险预警管理相关表、主键约束和序列)--start--
--(风险预警信息表)
if not fc_IsTableExists('TRISK_WARNING_INFO') then
    execute immediate '
		create table TRISK_WARNING_INFO
			(
			  L_ID                  NUMBER not null,
			  C_TYPE                VARCHAR2(1) not null,	
			  C_PROJECTCODE         VARCHAR2(32) not null,
			  C_LOANACCOUNTCODE     VARCHAR2(32),	
			  D_OCCURDATE           DATE not null,
			  C_FEEDBACKRATE        VARCHAR2(2),
			  C_RISKDESC            VARCHAR2(2000),
			  C_RISKSOLUTION        VARCHAR2(2000),
			  C_ISWARNINGREMOVE     VARCHAR2(2) not null,
			  C_STATUS              VARCHAR2(2) not null,
			  PROCESS_INSTANCEID	VARCHAR2(100) not null
			)';
end if;			  
--(风险预警信息表的主键约束)
if fc_IsTableExists('TRISK_WARNING_INFO') and not fc_Constraints_Exists('TRISK_WARNING_INFO','PK_TRISK_WARNING_INFO','P','0') then
    execute immediate '
	  alter table TRISK_WARNING_INFO
		  add constraint PK_TRISK_WARNING_INFO primary key (L_ID)
		  using index ';
end if;
--(风险预警信息表主键的序列)
if not fc_IsSeqExists('SEQ_RISK_WARNING_INFO_ID') then
	execute immediate 'create sequence SEQ_RISK_WARNING_INFO_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--(风险预警分类表)
if not fc_IsTableExists('TRISK_WARNING_TYPE') then
    execute immediate '
		create table TRISK_WARNING_TYPE
			(
			  L_ID					NUMBER not null,
			  L_LEVEL				NUMBER not null,
			  C_LEVELNAME			VARCHAR2(32) not null,	
			  C_TYPE				VARCHAR2(32) not null,
			  C_CONTENT				VARCHAR2(2000) not null
			)';
end if;			  
--(风险预警分类表的主键约束)
if fc_IsTableExists('TRISK_WARNING_TYPE') and not fc_Constraints_Exists('TRISK_WARNING_TYPE','PK_TRISK_WARNING_TYPE','P','0') then
    execute immediate '
	  alter table TRISK_WARNING_TYPE
		  add constraint PK_TRISK_WARNING_TYPE primary key (L_ID)
		  using index ';
end if;
--(风险预警分类表主键的序列)
if not fc_IsSeqExists('SEQ_RISK_WARNING_TYPE_ID') then
	execute immediate 'create sequence SEQ_RISK_WARNING_TYPE_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--(风险预警信息、分类关联表)
if not fc_IsTableExists('TRISK_WARNING_INFO_TYPE') then
    execute immediate '
		create table TRISK_WARNING_INFO_TYPE
			(
			  L_ID					NUMBER not null,
			  L_WARNINGINFOID		NUMBER not null,	
			  L_WARNINGTYPEID		NUMBER not null
			)';
end if;			  
--(风险预警信息、分类关联表的主键约束)
if fc_IsTableExists('TRISK_WARNING_INFO_TYPE') and not fc_Constraints_Exists('TRISK_WARNING_INFO_TYPE','PK_TRISK_WARNING_INFO_TYPE','P','0') then
    execute immediate '
	  alter table TRISK_WARNING_INFO_TYPE
		  add constraint PK_TRISK_WARNING_INFO_TYPE primary key (L_ID)
		  using index ';
end if;
--(风险预警信息、分类关联表主键的序列)
if not fc_IsSeqExists('SEQ_RISK_WARNING_INFO_TYPE_ID') then
	execute immediate 'create sequence SEQ_RISK_WARNING_INFO_TYPE_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--(风险预警反馈表)
if not fc_IsTableExists('TRISK_WARNING_FEEDBACK') then
    execute immediate '
		create table TRISK_WARNING_FEEDBACK
			(
			  L_ID					NUMBER not null,
			  L_WARNINGINFOID		NUMBER not null,	
			  D_FEEDBACKDATE		DATE not null,
			  C_ISWARNINGREMOVE		VARCHAR2(2) not null,
			  C_FEEDBACKCONTENT     VARCHAR2(2000),
			  C_ENTERUSER			VARCHAR2(32),
 			  C_LASTUPDATEUSER		VARCHAR2(32),
 			  D_LASTUPDATETIME		DATE
			)';
end if;			  
--(风险预警反馈表的主键约束)
if fc_IsTableExists('TRISK_WARNING_FEEDBACK') and not fc_Constraints_Exists('TRISK_WARNING_FEEDBACK','PK_TRISK_WARNING_FEEDBACK','P','0') then
    execute immediate '
	  alter table TRISK_WARNING_FEEDBACK
		  add constraint PK_TRISK_WARNING_FEEDBACK primary key (L_ID)
		  using index ';
end if;
--(风险预警反馈表主键的序列)
if not fc_IsSeqExists('SEQ_RISK_WARNING_FEEDBACK_ID') then
	execute immediate 'create sequence SEQ_RISK_WARNING_FEEDBACK_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--(风险预警解除流程表)
if not fc_IsTableExists('TRISK_WARNING_REMOVE') then
    execute immediate '
		create table TRISK_WARNING_REMOVE
			(
			  L_ID					NUMBER not null,
			  L_WARNINGINFOID		NUMBER not null,	
			  D_CLOSEDATE			DATE not null,
			  C_MEMO				VARCHAR2(2000),
			  PROCESS_INSTANCEID	VARCHAR2(100) not null
			)';
end if;			  
--(风险预警解除流程表的主键约束)
if fc_IsTableExists('TRISK_WARNING_REMOVE') and not fc_Constraints_Exists('TRISK_WARNING_REMOVE','PK_TRISK_WARNING_REMOVE','P','0') then
    execute immediate '
	  alter table TRISK_WARNING_REMOVE
		  add constraint PK_TRISK_WARNING_REMOVE primary key (L_ID)
		  using index ';
end if;
--(风险预警解除流程表主键的序列)
if not fc_IsSeqExists('SEQ_RISK_WARNING_REMOVE_ID') then
	execute immediate 'create sequence SEQ_RISK_WARNING_REMOVE_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--[201712240064]20180102shiph22854(新增风险预警管理相关表、主键约束和序列)--end--
--20180105zhangcm(合同新增字段)--start--
if  not fc_IsColExists('TINVEST_CONTRACT','c_othermemo') then 
  execute immediate 'alter table TINVEST_CONTRACT add c_othermemo VARCHAR2(2000)';
end if;
if  not fc_IsColExists('TINVEST_CONTRACT','f_reorganizeamount') then 
  execute immediate 'alter table TINVEST_CONTRACT add f_reorganizeamount number(19,2)';
end if;
if  not fc_IsColExists('TINVEST_CONTRACT','c_orgtype') then 
  execute immediate 'alter table TINVEST_CONTRACT add c_orgtype varchar2(2)';
end if;
if  not fc_IsColExists('TINVEST_CONTRACT','c_agencyid') then 
  execute immediate 'alter table TINVEST_CONTRACT add c_agencyid varchar2(255)';
end if;
--20180105zhangcm(合同新增字段)--end--

--20180109yanys(新增抵债押物处置项目关联表)--start--
  if not fc_IsTableExists('TDISPOSAL_DEBT_OBJECTINFO') then
    execute immediate '
     create table TDISPOSAL_DEBT_OBJECTINFO
  (
    c_relationcode     VARCHAR2(32) not null,
    c_projectcode      VARCHAR2(32),
    c_storeprojectcode VARCHAR2(32),
    c_objectcode       VARCHAR2(32) not null,
    c_objecttype       VARCHAR2(1),
    c_memo             VARCHAR2(3000),
    c_enteruser        VARCHAR2(20),
    d_entertime        DATE,
    d_lastupdateuser   VARCHAR2(20),
    c_lastupdatetime   DATE,
    c_isallrelated     VARCHAR2(1)
  )';
end if;	
 if fc_IsTableExists('TDISPOSAL_DEBT_OBJECTINFO') and not fc_Constraints_Exists('TDISPOSAL_DEBT_OBJECTINFO','PK_DEBTOBJECTINFO_ID','P','0') then
    execute immediate '
	  alter table TDISPOSAL_DEBT_OBJECTINFO
  add constraint PK_DEBTOBJECTINFO_ID primary key (C_RELATIONCODE) ';
end if;
--20180109yanys(新增抵债押物处置项目关联表)--end--

--20170109chenhy18048(到账确认明细表字段变更)--start--
if not fc_IsColExists('TREPAY_CONFIRM','c_isdirect') then
	execute immediate 'alter table TREPAY_CONFIRM add c_isdirect VARCHAR2(1)';
end if;
--20170109chenhy18048(到账确认明细表字段变更)--end--

--20180109zhangchao（付款账户支持多个）---start---
if not fc_IsTableExists('TREPAY_ACCOUNT') then
  execute immediate 'create table TREPAY_ACCOUNT
(                       
  L_ID  NUMBER not null,               
  PROCESS_INSTANCEID   VARCHAR2(100) not null,                
  L_IJOURID        NUMBER(10),                      
  L_FUNDACID       VARCHAR2(32) not null,                      
  F_BALANCE        NUMBER(19,2) not null,                                
  D_DATE           DATE,                               
  C_CREATER        VARCHAR2(32),
  D_CREATE				 DATE                               
)';
end if;

if not fc_IsSeqExists('SEQ_TREPAY_ACCOUNT_ID') then
    execute immediate 'create sequence SEQ_TREPAY_ACCOUNT_ID
				minvalue 1
				maxvalue 999999999
				start with 2040
				increment by 1
				cache 20';
end if;
--20180109zhangchao（付款账户支持多个）---end---
--20180111wangbl(新增挂牌申请信息表)--start--
if not fc_IsTableExists('TPROJECT_LISTING_INFO') then
    execute immediate '
create table TPROJECT_LISTING_INFO
(
  c_listingid          VARCHAR2(32) not null,
  c_noticenumber       VARCHAR2(32),
  c_noticetitle1       VARCHAR2(255),
  c_noticetitle2       VARCHAR2(255),
  c_noticetitle3       VARCHAR2(255),
  c_assettype          VARCHAR2(2),
  c_corporetitle1      VARCHAR2(255),
  c_corporetitle2      VARCHAR2(255),
  c_projecttype        VARCHAR2(2),
  c_category           VARCHAR2(2),
  c_supportloan        VARCHAR2(2),
  c_contactinfo        VARCHAR2(255),
  c_clienttelphone     VARCHAR2(255),
  c_clientcellphone    VARCHAR2(255),
  f_evaluationprice    NUMBER(19,6),
  f_startingprice      NUMBER(19,6),
  f_bond               NUMBER(19,6),
  f_increaseprice      NUMBER(19,6),
  f_confirmbond        NUMBER(19,6),
  c_reservepriceornot  VARCHAR2(2),
  c_freighttype        VARCHAR2(2),
  f_freight            NUMBER(19,6),
  d_starttime          DATE,
  c_biddingcycleday    VARCHAR2(2),
  c_biddingcyclehour   VARCHAR2(2),
  c_biddingcycleminute VARCHAR2(2),
  d_endtime            DATE,
  c_delayperiod        VARCHAR2(32),
  c_servicecommission  VARCHAR2(2),
  c_province           VARCHAR2(32),
  c_cityno             VARCHAR2(32),
  c_areano             VARCHAR2(32),
  c_bidders            VARCHAR2(2),
  c_entrustment        VARCHAR2(2),
  c_projectcode        VARCHAR2(32),
  c_listingstatus      VARCHAR2(2),
  c_enteruser          VARCHAR2(32),
  d_entertime          DATE,
  c_lastupdateuser     VARCHAR2(32),
  d_lastupdatetime     DATE,
  c_processinstanceid  VARCHAR2(100),
  c_noticecontent      CLOB,
  c_auctionnotice      CLOB,
  c_corporediscription CLOB
)';
end if;
if fc_IsTableExists('TPROJECT_LISTING_INFO') and not fc_Constraints_Exists('TPROJECT_LISTING_INFO','PK_LISTINGID','P','0') then
    execute immediate '
alter table TPROJECT_LISTING_INFO
  add constraint PK_LISTINGID primary key (C_LISTINGID)';
end if;

if fc_IsTableExists('TPROJECT_LISTING_INFO') and fc_IsColExists('TPROJECT_LISTING_INFO','c_category') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify c_category VARCHAR2(10)';
end if;
--20180111wangbl(新增挂牌申请信息表)--end--
if not fc_IsTableExists('TBIDDING_RESULT_INFO') then
    execute immediate '
create table TBIDDING_RESULT_INFO
(
  c_resultid            VARCHAR2(32) not null,
  c_transresult         VARCHAR2(2),
  c_relationcode        VARCHAR2(32),
  f_transprice          NUMBER(19,6),
  f_enrollment          NUMBER,
  f_biddercount         NUMBER,
  f_biddingtimes        NUMBER,
  c_havebid             VARCHAR2(2),
  f_highestbid          NUMBER(19,6),
  c_paymentmethod       VARCHAR2(2),
  c_manageplanname      VARCHAR2(255),
  d_manageplansetupdate DATE,
  f_transferprice       NUMBER(19,6),
  f_priorityprice       NUMBER(19,6),
  f_priorityincome      NUMBER(19,6),
  c_inferiorrear        VARCHAR2(32),
  c_projectcode         VARCHAR2(32),
  c_biddingresultstatus VARCHAR2(2),
  c_enteruser           VARCHAR2(32),
  d_entertime           DATE,
  c_lastupdateuser      VARCHAR2(32),
  d_lastupdatetime      DATE,
  c_listingid           VARCHAR2(32),
  c_processinstanceid   VARCHAR2(100)
)';
end if;
if fc_IsTableExists('TBIDDING_RESULT_INFO') and not fc_Constraints_Exists('TBIDDING_RESULT_INFO','PK_RESULTID','P','0') then
    execute immediate '
alter table TBIDDING_RESULT_INFO
  add constraint PK_RESULTID primary key (C_RESULTID)';
end if;

if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','c_litigationstatus') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add c_litigationstatus VARCHAR2(2)';
end if;

if   fc_IsColExists('TMEETING_PROPOSAL','c_spcificmatter') then 
  execute immediate 'alter table TMEETING_PROPOSAL modify c_spcificmatter VARCHAR2(4)';
end if;

if   fc_IsColExists('TMEETING_PROPOSAL','c_content') then 
  execute immediate 'alter table TMEETING_PROPOSAL modify c_content VARCHAR2(5)';
end if;

--20180117kangxin(新增导入中间表)--start--
if not fc_IsTableExists('T_INT_INVEST_CONTRACT') then
	execute immediate '
create table T_INT_INVEST_CONTRACT
(
  c_projectcode                  VARCHAR2(32),
  C_CONTRACTNO					 VARCHAR2(255),
  C_CONTRACTNAME				 VARCHAR2(255),
  D_SIGNDATE					 DATE,		  
  D_BEGDATE						 DATE,		 
  C_CYKIND						 VARCHAR2(3),
  F_CONTRACTBALANCE				 NUMBER(25,8),
  C_REMARK						 VARCHAR2(4000),
  C_RIVALNAME					 VARCHAR2(300),
  C_RIVALACCOUNTNAME			 VARCHAR2(300),
  C_STOCK_STATE				     VARCHAR2(2),
  C_INTSTATUS                    VARCHAR2(2),
  C_ERRMSG                       VARCHAR2(3000),
  C_BATCH_NO                     NUMBER(10),
  C_SOURCE                       VARCHAR2(20)
)';
end if;

if not fc_IsTableExists('T_INT_ASSET_CREDITORCONTRACT') then
	execute immediate '
create table T_INT_ASSET_CREDITORCONTRACT
(
  C_LOANANO						 VARCHAR2(255),
  c_LOANACCOUNTNAME			     VARCHAR2(255),
  c_projectcode                  VARCHAR2(32),
  C_BUSINESSTYPE				 VARCHAR2(5),
  C_HEADBANK				 	 VARCHAR2(100),
  C_BRANCHBANK					 VARCHAR2(100),
  D_CONTRACTSTARTDATE			 date,
  D_CONTRACTENDDATE				 date,
  D_CONTRACTSIGNDATE			 date, 
  F_CORPUSAMOUNT				 NUMBER(19,6),
  F_INTEREST					 NUMBER(19,6),
  C_ISCALCINTEREST				 VARCHAR2(1), 
  D_LAWDEADDATE					 DATE,		
  C_RATETYPE					 VARCHAR2(3),
  C_FLOATWAY					 VARCHAR2(1),
  F_RATE 						 NUMBER(10,6),
  F_LOWRATE						 NUMBER(10,6),
  F_HIGHRATE					 NUMBER(10,6),
  C_CALCCYCLE					 VARCHAR2(3),
  C_SETTLEFREQ					 VARCHAR2(2),
  F_DEFAULTRATE					 NUMBER(10,6),
  C_DEFAULTCALCCYCLE			 VARCHAR2(3),
  C_INTSTATUS                    VARCHAR2(2),
  C_ERRMSG                       VARCHAR2(3000),
  C_BATCH_NO                     NUMBER(10),
  C_SOURCE                       VARCHAR2(20)
)';
end if;

if not fc_IsTableExists('T_INT_ASSET_LOANACCOUNT_INFO') then
	execute immediate '
create table T_INT_ASSET_LOANACCOUNT_INFO
(
  c_projectcode                  VARCHAR2(32),
  C_LOANACCOUNTNAME				 VARCHAR2(50),
  C_INDUSTRYDETAIL				 VARCHAR2(2),
  C_PROVINCECODE				 VARCHAR2(2),
  C_CITYNO						 VARCHAR2(100),
  C_REGIONCODE					 VARCHAR2(100),
  C_BUSINESSCONDITION		     VARCHAR2(255),
  F_CORPUSAMOUNT				 NUMBER(19,6),
  F_INTEREST					 NUMBER(19,6),
  C_DISBURSEMENTFEE			     VARCHAR2(50),
  F_QUOTATIONSCALE				 NUMBER(19,6), 
  F_LOANACCOUNTCOSTS             NUMBER(19,6),
  C_MEMO				 		 VARCHAR2(3000),
  C_EVALUATIONUSER				 VARCHAR2(20),
  C_DISPOSALYEARS			     VARCHAR2(4), 
  F_RECLAIMSCALE				 NUMBER(19,6),
  F_LASTBALANCE		     		 NUMBER(19,6),
  C_QUALIFICATION				 VARCHAR2(2), 
  C_ISSOLVENCY					 VARCHAR2(1), 
  C_STATUS						 VARCHAR2(2), 
  C_ISPAY			     		 VARCHAR2(1), 
  C_CUSTOMERPROPERTY			 VARCHAR2(1), 
  C_CERTIFICATETYPE				 VARCHAR2(2),  
  C_CERTIFICATECODE			     VARCHAR2(255),
  C_INTSTATUS                    VARCHAR2(2),  
  C_ERRMSG                       VARCHAR2(3000),
  C_BATCH_NO                     NUMBER(10),  
  C_SOURCE                       VARCHAR2(20)
)';
end if;

if not fc_IsTableExists('T_INT_PROJECT_INFO') then
	execute immediate '
create table T_INT_PROJECT_INFO
(
  c_projectcode                  VARCHAR2(32), 
  c_projectname                  VARCHAR2(255),
  c_projectphase                 VARCHAR2(2), 
  c_trustmanager                 VARCHAR2(32),
  c_dptid                        VARCHAR2(200),
  c_projectnature                VARCHAR2(3),
  c_fdcbusitype                  VARCHAR2(10),
  c_risktype                     VARCHAR2(50),
  c_trustpurpose                 VARCHAR2(3000),
  c_assetseller                  VARCHAR2(300),
  d_baseday                      DATE,
  f_corpusamount                 NUMBER(19,6),
  f_assetinterest                NUMBER(19,6),
  f_assistpayfee                 NUMBER(19,6),
  d_replybanktime                DATE,
  c_ispaysecrecydeposit          VARCHAR2(2),
  d_secrecydepositdeadline       DATE,
  c_ispaybiddeposit              VARCHAR2(2),
  d_investstartday               DATE,
  d_investendday                 DATE,
  d_biddepositdeadline           DATE,
  d_bidday                       DATE,
  c_thirdpartyname               VARCHAR2(100),
  c_thirdpartyfundingratio       VARCHAR2(50),
  c_assetmanagecompanyname       VARCHAR2(255),
  c_assetmanageplanname          VARCHAR2(255),
  c_capitalprovider              VARCHAR2(255),
  c_specialbusinessentity        VARCHAR2(2), 
  f_requiredfund                 NUMBER(19,6), 
  c_motiondept                   VARCHAR2(100),
  c_briefcontent                 VARCHAR2(3000),
  c_investmentmanager            VARCHAR2(255),
  f_debtamount                   NUMBER(19,6),
  f_defaultinterest              NUMBER(19,6),
  f_othermoney                   NUMBER(19,6),
  C_INTSTATUS                    VARCHAR2(2),
  C_ERRMSG                       VARCHAR2(3000),
  C_BATCH_NO                     NUMBER(10),
  C_SOURCE                       VARCHAR2(20)
)';
end if;

--20180117kangxin(新增导入中间表)--end--

--20180122wangbl(挂牌信息表字段类型修改)--start--
if   fc_IsColExists('TPROJECT_LISTING_INFO','f_evaluationprice') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify f_evaluationprice NUMBER(19)';
end if;

if   fc_IsColExists('TPROJECT_LISTING_INFO','f_startingprice') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify f_startingprice NUMBER(19)';
end if;

if   fc_IsColExists('TPROJECT_LISTING_INFO','f_bond') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify f_bond NUMBER(19)';
end if;

if   fc_IsColExists('TPROJECT_LISTING_INFO','f_increaseprice') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify f_increaseprice NUMBER(19)';
end if;

if   fc_IsColExists('TPROJECT_LISTING_INFO','f_confirmbond') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify f_confirmbond NUMBER(19)';
end if;

if  not fc_IsColExists('TPROJECT_LISTING_INFO','f_freight') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO modify f_freight NUMBER(19)';
end if;

--20180122wangbl(挂牌信息表字段类型修改)--end--

--20180122wangbl(挂牌信息表新增保留价、确认保留价和按成交比例字段)--start--
if  not fc_IsColExists('TPROJECT_LISTING_INFO','f_reserveprice') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO add f_reserveprice number(19)';
end if;

if  not fc_IsColExists('TPROJECT_LISTING_INFO','f_cofirmreserveprice') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO add f_cofirmreserveprice number(19)';
end if;

if  not fc_IsColExists('TPROJECT_LISTING_INFO','f_comp') then 
  execute immediate 'alter table TPROJECT_LISTING_INFO add f_comp number(19)';
end if;
--20180122wangbl(挂牌信息表新增保留价、确认保留价和按成交比例字段)--end--

--20180119chenhy1848(新增付款信息表)--start--

if not fc_IsTableExists('TREPAY_INFO') then
	execute immediate '
create table TREPAY_INFO
(
  L_ID               NUMBER not null,
  PROCESS_INSTANCEID VARCHAR2(100),
  C_PROJECTCODE      VARCHAR2(32) not null,
  C_CONTRACTID       VARCHAR2(32),
  C_LOANACCOUNTCODE  VARCHAR2(32),
  C_TYPE             VARCHAR2(10) not null,
  C_RIVALID          VARCHAR2(32) not null,
  C_ACCOID           VARCHAR2(32) not null,
  C_CYKIND           VARCHAR2(3) default 156 not null,
  D_PREOCCURDATE     DATE not null,
  F_PREOCCUR_BALANCE NUMBER(19,2) default 0 not null,
  F_OCCUR_BALANCE    NUMBER(19,2) default 0,
  F_PAYABLE          NUMBER(19,2) default 0,
  F_PURCHASE         NUMBER(19,2) default 0,
  C_DEPOSITTYPE      VARCHAR2(3),
  C_ISDEBTS          VARCHAR2(3) default 0,
  C_REMARK           VARCHAR2(3000),
  C_INVOICE          VARCHAR2(2),
  C_PAYWAY           VARCHAR2(2),
  C_PAYSOURCE        VARCHAR2(2),
  C_CHECKFLAG        VARCHAR2(2),
  C_CREATER          VARCHAR2(32),
  D_CREATE           DATE,
  C_ISOUTPACE        VARCHAR2(2),
  C_AFFLID           VARCHAR2(8)
)';
end if;


if fc_IsTableExists('TREPAY_INFO') and not fc_Constraints_Exists('TREPAY_INFO','PK_REPAY_INFO','P','0') then
    execute immediate '
alter table TREPAY_INFO
  add constraint PK_REPAY_INFO primary key (L_ID)';
end if;

--20180119chenhy1848(新增付款信息表)--end--

--20180118zhangchao（流程模板管理新增字段）------start---------
if not fc_IsColExists('TFLOW_FILE_TEMPLATE','C_TEMPTYPE') then
	execute immediate 'alter table TFLOW_FILE_TEMPLATE  add C_TEMPTYPE VARCHAR2(100)';
end if;

if not fc_IsColExists('TFLOW_FILE_TEMPLATE','C_TEMPTYPE_DISPLAY') then
	execute immediate 'alter table TFLOW_FILE_TEMPLATE  add C_TEMPTYPE_DISPLAY VARCHAR2(100)';
end if;
--20180118zhangchao（流程模板管理新增字段）------end---------

--20180122chenhy18048（补充序列脚本）------start---------
if not fc_IsSeqExists('SEQ_TREPAY_INFO_ID') then
    execute immediate 'create sequence SEQ_TREPAY_INFO_ID
minvalue 1
maxvalue 999999999
start with 1000
increment by 1
cache 20';
end if;
--20180122chenhy18048（补充序列脚本）------end---------

--20180123liulei22155（中介机构集中采购）------start---------

if not fc_IsTableExists('tagency_central_purchase') then
    execute immediate 'create table tagency_central_purchase (
			  L_ID          	 NUMBER not null,
			  c_agreementname    VARCHAR2(128) not null,
			  d_purchasedate     DATE not null,
			  d_validdate        DATE not null,
			  c_enteruserid	     VARCHAR2(32)  not null,
			  C_MEMO             VARCHAR2(3000)
			)';
	execute immediate ' 
	alter table tagency_central_purchase
    	add constraint PK_ag_central_purchase primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_ag_central_purchase_ID') then
    execute immediate 'create sequence SEQ_ag_central_purchase_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;

--中介机构集中采购明细表
if not fc_IsTableExists('tag_central_purchase_detail') then
    execute immediate 'create table tag_central_purchase_detail (
			  L_ID          	 NUMBER not null,
			  L_centralpurchaseid    NUMBER not null,
			  c_libid            NUMBER not null
			)';
	execute immediate ' 
	alter table tag_central_purchase_detail
    	add constraint PK_ag_purchase_detail primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_ag_purchase_detail_ID') then
    execute immediate 'create sequence SEQ_ag_purchase_detail_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;
--20180123liulei22155（中介机构集中采购）------end---------

--20180123kangxin21000（导入功能相关表字段添加）------start---------
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','C_ENTERTYPE') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add C_ENTERTYPE varchar2(2)';
end if;

if not fc_IsColExists('t_int_asset_loanaccount_info','c_rownum') then
	execute immediate 'alter table t_int_asset_loanaccount_info add c_rownum varchar2(32)';
end if;
--20180123kangxin21000（导入功能相关表字段添加）------end---------

--20180126zhuocc(项目表新增字段-风控小组成员、法务小组成员、财务小组成员) -- start--
if not fc_IsColExists('tproject_info','c_riskgroupmembers') then
	execute immediate 'alter table tproject_info add c_riskgroupmembers varchar2(500)';
end if;
if not fc_IsColExists('tproject_info','c_justicegroupmembers') then
	execute immediate 'alter table tproject_info add c_justicegroupmembers varchar2(500)';
end if;
if not fc_IsColExists('tproject_info','c_financegroupmembers') then
	execute immediate 'alter table tproject_info add c_financegroupmembers varchar2(500)';
end if;
--20180126zhuocc(项目表新增字段-风控小组成员、法务小组成员、财务小组成员) --end--

--20180128taoxd23007(时效中断流程新增流程实例号) -- start--
if not fc_IsColExists('tloanaccount_tinmestop','c_process_instanceid') then
	execute immediate 'alter table tloanaccount_tinmestop add c_process_instanceid varchar2(32)';
end if;
--20180128taoxd23007(时效中断流程新增流程实例号) --end--

--20180201caoyi20323(到账数据新增入账单位id和入账账号id字段) -- start--
if not fc_IsColExists('TREPAY_ARRIVAL','c_payee_company_code') then
	execute immediate 'alter table TREPAY_ARRIVAL add c_payee_company_code varchar2(35)';
end if;
if not fc_IsColExists('TREPAY_ARRIVAL','c_payee_account_id') then
	execute immediate 'alter table TREPAY_ARRIVAL add c_payee_account_id varchar2(35)';
end if;
--20180201caoyi20323(到账数据新增入账单位id和入账账号id字段) --end--

--[201801190615]20180201shiph22854(新增产权经纪挂牌信息表、主键约束和序列)--start--
--(产权经纪挂牌信息表)
if not fc_IsTableExists('TPROPERTY_BROKER_LISTING') then
    execute immediate '
		create table TPROPERTY_BROKER_LISTING
			(
			  L_ID                  NUMBER NOT NULL,
			  C_PROJECTCODE         VARCHAR2(32),
			  C_LISTINGADDR         VARCHAR2(2),	
			  C_LISTINGTYPE         VARCHAR2(2),
			  D_LISTINGBEGINDATE    DATE,	
			  D_LISTINGENDDATE      DATE,
			  F_LISTINGPRICE        NUMBER(19,6),
			  C_STATUS            	VARCHAR2(2),
			  C_MEMO        		VARCHAR2(2000)
			)';
end if;			  
--(产权经纪挂牌信息表的主键约束)
if fc_IsTableExists('TPROPERTY_BROKER_LISTING') and not fc_Constraints_Exists('TPROPERTY_BROKER_LISTING','PK_TPROPERTY_BROKER_LISTING','P','0') then
    execute immediate '
	  alter table TPROPERTY_BROKER_LISTING
		  add constraint PK_TPROPERTY_BROKER_LISTING primary key (L_ID)
		  using index ';
end if;
--(产权经纪挂牌信息表主键的序列)
if not fc_IsSeqExists('SEQ_PROPERTY_BROKER_LISTING_ID') then
	execute immediate 'create sequence SEQ_PROPERTY_BROKER_LISTING_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--[201801190615]20180201shiph22854(新增风险预警管理相关表、主键约束和序列)--end--

--[201801190615]20180201shiph22854(产权经纪项目管理-经纪委托合同，合同表新增字段)--start--
--交易底价
if not fc_IsColExists('tinvest_contract','f_tradeprice') then
	execute immediate 'alter table tinvest_contract add f_tradeprice NUMBER(19,6)';
end if;
--手续费率 
if not fc_IsColExists('tinvest_contract','f_feepayrate') then
	execute immediate 'alter table tinvest_contract add f_feepayrate NUMBER(19,6)';
end if;
--手续费总额
if not fc_IsColExists('tinvest_contract','f_feepayamount') then
	execute immediate 'alter table tinvest_contract add f_feepayamount NUMBER(19,6)';
end if;
--咨询服务费
if not fc_IsColExists('tinvest_contract','f_servicefee') then
	execute immediate 'alter table tinvest_contract add f_servicefee NUMBER(19,6)';
end if;
--支付方式
if not fc_IsColExists('tinvest_contract','c_paymenttype') then
	execute immediate 'alter table tinvest_contract add c_paymenttype varchar2(2)';
end if;
--结算方式
if not fc_IsColExists('tinvest_contract','c_settlementway') then
	execute immediate 'alter table tinvest_contract add c_settlementway varchar2(2)';
end if;
--交易所
if not fc_IsColExists('tinvest_contract','c_exchange') then
	execute immediate 'alter table tinvest_contract add c_exchange varchar2(255)';
end if;
--手续费总额
if not fc_IsColExists('tinvest_contract','f_billamount') then
	execute immediate 'alter table tinvest_contract add f_billamount NUMBER(19,6)';
end if;  
--是否已开票
if not fc_IsColExists('tinvest_contract','c_isbill') then
	execute immediate 'alter table tinvest_contract add c_isbill varchar2(2)';
end if;
--开票日期
if not fc_IsColExists('tinvest_contract','d_billdate') then
	execute immediate 'alter table tinvest_contract add d_billdate DATE';
end if;
--到账日期
if not fc_IsColExists('tinvest_contract','d_arrivaldate') then
	execute immediate 'alter table tinvest_contract add d_arrivaldate DATE';
end if;

--[201801190615]20180201shiph22854(产权经纪项目管理-经纪委托合同，合同表新增字段)--end--

--20180202liulei(文档移交借阅表单业务类型长度增加) -- start--
if fc_IsColExists('tdoc_transfer_info','c_fdcbusitype') then
     execute immediate 'alter table tdoc_transfer_info modify c_fdcbusitype varchar2(4)';
end if;
--20180202liulei(文档移交借阅表单业务类型长度增加) -- end--
-- --20180203wangbl(竞价结果信息表新增是否终止处置项目)------start---------
if not fc_IsColExists('TBIDDING_RESULT_INFO','c_terminateornot') then
	execute immediate 'alter table TBIDDING_RESULT_INFO add c_terminateornot VARCHAR2(2)';
end if;
-- --20180203wangbl(竞价结果信息表新增是否终止处置项目)------end---------

-- --20180203wangbl(项目资产关系表新增是否有效)------start---------
if not fc_IsColExists('TDISPOSAL_OBJECTINFO','c_isvalid') then
	execute immediate 'alter table TDISPOSAL_OBJECTINFO add c_isvalid VARCHAR2(2)';
end if;
-- --20180203wangbl(项目资产关系表新增是否有效)------end--------- 
--20180205wangbl(新增文档打印记录表)
if not  fc_istableexists('DOWNLOAD_RECORD')
THEN
  EXECUTE IMMEDIATE '
 	create table DOWNLOAD_RECORD
		(
		  uuid           VARCHAR2(32) not null,
		  text_id        VARCHAR2(32),
		  user_id        VARCHAR2(32),
		  d_downloadtime DATE
		)
  ';
END if;
if fc_istableexists('DOWNLOAD_RECORD') and not fc_IsColExists('DOWNLOAD_RECORD','c_printuserid') then
    execute immediate 'alter table DOWNLOAD_RECORD add c_printuserid varchar2(32)';
end if;

if fc_istableexists('DOWNLOAD_RECORD') and not fc_IsColExists('DOWNLOAD_RECORD','c_printnum') then
    execute immediate 'alter table DOWNLOAD_RECORD add c_printnum number(10)';
end if;

if fc_istableexists('DOWNLOAD_RECORD') and not fc_IsColExists('DOWNLOAD_RECORD','d_lastprinttime') then
    execute immediate 'alter table DOWNLOAD_RECORD add d_lastprinttime date';
end if;
--20180206yanys(设置TREPAY_CONFIRM的到账确认相关字段可以为null)--start--
if not fc_IsColNULLABLE('TREPAY_CONFIRM','l_approveid') then
	execute immediate 'ALTER TABLE TREPAY_CONFIRM  MODIFY l_approveid NULL';
end if;
if not fc_IsColNULLABLE('TREPAY_CONFIRM','L_ARRIVALID') then
	execute immediate 'ALTER TABLE TREPAY_CONFIRM  MODIFY L_ARRIVALID NULL';
end if;
--20180206yanys(设置TREPAY_CONFIRM的l_approveid可以为null)--end--
--tinvest_contract add contractauthority begin--
 if fc_IsTableExists('tinvest_contract') and  not fc_IsColExists('tinvest_contract','c_contractauthority') then
      execute immediate 'alter table tinvest_contract add c_contractauthority varchar2(10)';
 end if; 
if not fc_IsColExists('TINVEST_CONTRACT','c_guaranteemethod') then
  execute immediate 'alter table TINVEST_CONTRACT add c_guaranteemethod VARCHAR2(255)';
end if;
--tinvest_contract add contractauthority end--
--(处置结果信息录入表)
if not fc_IsTableExists('thandle_result_info') then
    execute immediate '
		create table thandle_result_info
 (
  L_RESULTID         NUMBER not null,
  c_projectcode      VARCHAR2(48),
  d_recoverydate     DATE,
  f_recveryamount    NUMBER(19,6),
  c_enteruser        VARCHAR2(30),
  d_entertime        DATE,
  c_lastupdateuser   VARCHAR2(30),
  d_lastupdatetime   DATE,
  C_PROCESSINSTANCEID     VARCHAR2(100)
 )';
end if;			  
--(处置结果信息表的主键约束)
if fc_IsTableExists('thandle_result_info') and not fc_Constraints_Exists('thandle_result_info','PK_RESULTID_ID','P','0') then
    execute immediate '
	  alter table thandle_result_info 
 		 add constraint PK_RESULTID_ID primary key (L_RESULTID)
		  using index ';
end if;
--(处置结果信息表主键的序列)
if not fc_IsSeqExists('SEQ_RESULTID') then
	execute immediate 'create sequence SEQ_RESULTID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--20180209chenhy18048(用款计划) -- start--

if not fc_IsTableExists('TPAY_PLAN') then
execute immediate '
create table TPAY_PLAN
(
  L_ID               NUMBER not null,
  C_PROJECTCODE      VARCHAR2(32),
  C_PAYTYPE          VARCHAR2(5) not null,
  C_LEVEL            VARCHAR2(1),
  D_BEGIN            DATE,
  D_END              DATE not null,
  F_PREOCCUR_BALANCE NUMBER(19,2) not null,
  F_OCCUR_BALANCE    NUMBER(19,2),
  C_CYCLE            VARCHAR2(5),
  F_RATE             NUMBER(10,6),
  C_STATUS           VARCHAR2(1) not null,
  C_APPROVE_STATUS   VARCHAR2(1),
  C_REMARK           VARCHAR2(500),
  C_CREATER          VARCHAR2(32),
  D_CREATE           DATE not null,
  C_UPDATER          VARCHAR2(32),
  D_UPDATE           DATE,
  C_CONTRACTID       VARCHAR2(32)
)';

execute immediate '
alter table TPAY_PLAN
  add constraint PK_TPAY_PLAN primary key (L_ID)';

execute immediate '
 create sequence SEQ_PAY_PLAN_ID
minvalue 1
maxvalue 999999999
start with 1000
increment by 1
cache 20';
end if;

if not fc_IsTableExists('TPAY_PLAN_TRACE') then
execute immediate '
create table TPAY_PLAN_TRACE
(
  L_ID                   VARCHAR2(32) not null,
  L_PLANID               NUMBER not null,
  D_INITBEGIN            DATE,
  D_INITEND              DATE,
  F_INITPREOCCUR_BALANCE NUMBER(19,2) not null,
  C_INITSTATUS           VARCHAR2(1),
  D_BEGIN                DATE,
  D_END                  DATE,
  F_PREOCCUR_BALANCE     NUMBER(19,2) not null,
  C_STATUS               VARCHAR2(1),
  C_REMARK               VARCHAR2(500),
  C_CREATER              VARCHAR2(32) not null,
  D_CREATE               DATE not null,
  C_APPROVE_STATUS       VARCHAR2(1),
  PROCESS_INSTANCEID     VARCHAR2(100)
)';

execute immediate '
alter table TPAY_PLAN_TRACE
  add constraint PK_PAY_PLAN_TRACE primary key (L_ID)';
end if;

--20180209chenhy18048(用款计划) -- end--

--20180222taoxd(债权合同信息表新增字段是否最高担保额)--start--
if not fc_IsColExists('TASSET_GUARANTEECONTRACT','C_ISGUARANTEETYPE') then
    execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_isguaranteetype VARCHAR2(2)';
end if;
--20180222taoxd(债权合同信息表新增字段是否最高担保额)--end--


--20180223kangxin(新增导入中间表)--start--
if not fc_IsColExists('t_int_asset_creditorcontract','c_rownum') then
    execute immediate 'alter table t_int_asset_creditorcontract add c_rownum varchar2(32)';
end if;

if not fc_IsColExists('T_INT_PROJECT_INFO','c_rownum') then
    execute immediate 'alter table T_INT_PROJECT_INFO add c_rownum varchar2(32)';
end if;

if not fc_IsColExists('T_INT_INVEST_CONTRACT','c_rownum') then
    execute immediate 'alter table T_INT_INVEST_CONTRACT add c_rownum varchar2(32)';
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','c_rownum') then
    execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add c_rownum varchar2(32)';
end if;

if not fc_IsColExists('tasset_creditorcontract','c_entertype') then
    execute immediate 'alter table tasset_creditorcontract add c_entertype varchar2(2)';
end if;

if not fc_IsColExists('t_int_asset_creditorcontract','C_CREDITORCONTRACTPHASE') then
    execute immediate 'alter table  t_int_asset_creditorcontract add C_CREDITORCONTRACTPHASE varchar2(2)';
end if;

if fc_IsColExists('t_int_asset_creditorcontract','C_RATETYPE') then
    execute immediate 'alter table  t_int_asset_creditorcontract modify C_RATETYPE varchar2(100)';
end if;

if fc_IsColExists('tseized_info','C_SEIZEDOBJECTID') then
    execute immediate 'alter table tseized_info modify C_SEIZEDOBJECTID varchar2(500)';
end if;

if fc_IsColExists('tasset_creditorcontract','C_CYKIND') then
    execute immediate 'alter table tasset_creditorcontract modify C_CYKIND varchar2(3)';
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_CYKIND') then
    execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_CYKIND VARCHAR2(3)';
end if;

if not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','C_CYKIND') then
    execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add C_CYKIND VARCHAR2(3)';
end if;

if not fc_IsTableExists('T_INT_ASSET_GUARANTEECONTRACT') then
	execute immediate '
create table T_INT_ASSET_GUARANTEECONTRACT
(
  c_loanno					 varchar2(255),
  C_ROWNUM			 	 	 VARCHAR2(32),
  c_guaranteetype            VARCHAR2(2),
  c_guaranteename            VARCHAR2(500),
  f_guaranteeamount          NUMBER(19,6),
  f_repayrate                NUMBER(19,6),
  c_issolvency               VARCHAR2(1),
  c_ispay                    VARCHAR2(1),
  f_remainingguaranteeamount NUMBER(19,6),
  f_getmoney                 NUMBER(19,6),
  f_cost                     NUMBER(19,6),
  d_guaranteestartdate       DATE,
  d_guaranteeenddate         DATE,
  c_guaranteestatus          VARCHAR2(20),
  c_disposalyears            VARCHAR2(4),
  f_balancecost              NUMBER(19,6),
  f_currentbalance           NUMBER(19,6),
  f_deductionten             NUMBER(19,6),
  f_lasttimeloss             NUMBER(19,6),
  f_lastbalance              NUMBER(19,6),
  c_operatingstatus          VARCHAR2(2),
  c_qualification            VARCHAR2(2),
  f_recoverablebalance       NUMBER(19,6),
  f_disposalmoney            NUMBER(19,6),
  c_guaranteeperiod          VARCHAR2(100),
  c_guaranteecontractno      VARCHAR2(100),
  c_projectcode				 varchar2(32),
  C_INTSTATUS				 varchar2(2),
  C_ERRMSG					 varchar2(3000),
  C_BATCH_NO				 varchar2(10),
  C_SOURCE					 varchar2(20)
)';
end if;

if not fc_IsTableExists('T_INT_ASSET_MORTGAGECONTRACT') then
	execute immediate '
create table T_INT_ASSET_MORTGAGECONTRACT
(
  C_ROWNUM			 	 VARCHAR2(32),
  C_LOANANO			 	 VARCHAR2(255),
  c_mortgagetype         VARCHAR2(2),
  c_mortgagor            VARCHAR2(400),
  d_mortgagestartdate    DATE,
  d_mortgageenddate      DATE,
  c_mortgagecontractno   VARCHAR2(100),
  C_INTSTATUS			 varchar2(2),
  C_ERRMSG				 varchar2(3000),
  C_BATCH_NO			 varchar2(10),
  C_SOURCE				 varchar2(20)
)';
end if;


if not fc_IsTableExists('T_INT_ASSET_PAWN_INFO') then
	execute immediate '
CREATE TABLE T_INT_ASSET_PAWN_INFO
(
  C_ROWNUM			 	  VARCHAR2(32),
  C_PAWNNAME              VARCHAR2(100),
  C_MORTGAGECONTRACTNO    VARCHAR2(100),
  C_PROVINCECODE          VARCHAR2(2),
  C_CITY                  VARCHAR2(100),
  C_REGION            	  VARCHAR2(100),
  C_PAWNTYPE              VARCHAR2(20),
  C_OTHERCREDENTIALSNO    VARCHAR2(1024),
  C_PAWNAMOUNT            VARCHAR2(50),
  F_PAWNAREA              NUMBER(19,6),
  F_MARKETPRICE           NUMBER(19,6),
  F_CASHPRICE             NUMBER(19,6),
  F_HOUSEARE              NUMBER(19,6),
  F_LASTBALANCE           NUMBER(19,6),
  C_PAWNDETAIL            VARCHAR2(500),
  C_ORIGINALCREDENTIALSNO VARCHAR2(1024),
  C_INTSTATUS			 varchar2(2),
  C_ERRMSG				 varchar2(3000),
  C_BATCH_NO			 varchar2(10),
  C_SOURCE				 varchar2(20)
)';
end if;

if not fc_IsTableExists('T_INT_LAWSUIT_INFO') then
	execute immediate '
CREATE TABLE T_INT_LAWSUIT_INFO
(
  C_ROWNUM			 VARCHAR2(32),
  C_CASEID           VARCHAR2(64),
  C_LOANACCOUNTNAME  VARCHAR2(100),
  C_LOANANO			 VARCHAR2(255),
  D_BEGINDATE        DATE,
  C_COURTNAME        VARCHAR2(64),
  D_DEALDATE         DATE,
  F_ACCOUNTMONEY     NUMBER(19,6),
  D_TRIALDATE        DATE,
  D_JUDGEDATE        DATE,
  C_DEFENDANT        VARCHAR2(4000),
  C_SUMMARY          VARCHAR2(4000),
  D_JUDGESDATE       DATE,
  C_SERVICETYPE      VARCHAR2(1),
  D_EXEDATE          DATE,
  C_CASERESULT       VARCHAR2(2),
  C_INTSTATUS		 VARCHAR2(2),
  C_ERRMSG			 VARCHAR2(3000),
  C_BATCH_NO		 VARCHAR2(10),
  C_SOURCE			 VARCHAR2(20)  
)';
end if;

if not fc_IsTableExists('T_INT_LAWSUIT_EXECUTION') then
	execute immediate '
create table T_INT_LAWSUIT_EXECUTION
(
  c_rownum			VARCHAR2(32),
  c_execaseid       VARCHAR2(64),
  c_loanaccountname VARCHAR2(255),
  C_LOANANO			VARCHAR2(255),
  d_exedate         DATE,
  c_courtname       VARCHAR2(64),
  d_dealdate        DATE,
  c_caseid          VARCHAR2(255),
  c_defendant       VARCHAR2(4000),
  c_memo            VARCHAR2(4000),
  c_evaluationname  VARCHAR2(32),
  c_identifyname    VARCHAR2(32),
  c_isexecuteend    VARCHAR2(1),
  c_judicialsale    VARCHAR2(4000),
  c_assetsdebt      VARCHAR2(4000),
  c_recoveamount    VARCHAR2(4000),
   C_INTSTATUS		 VARCHAR2(2),
  C_ERRMSG			 VARCHAR2(3000),
  C_BATCH_NO		 VARCHAR2(10),
  C_SOURCE			 VARCHAR2(20) 
)';
end if;

if not fc_IsTableExists('T_INT_BANKRUPTCY_INFO') then
	execute immediate '
create table T_INT_BANKRUPTCY_INFO
(
  c_rownum			VARCHAR2(32),
  c_caseid          VARCHAR2(64),
  d_begindate       DATE,
  c_courtname       VARCHAR2(64),
  d_dealdate        DATE,
  c_manager         VARCHAR2(255),
  f_creditamount    NUMBER(19,6),
  c_reforminfo      VARCHAR2(4000),
  c_compromiseinfo  VARCHAR2(4000),
  c_clearinfo       VARCHAR2(4000),
  c_summary         VARCHAR2(4000),
  c_loanaccountname VARCHAR2(255),
  c_managercontact  VARCHAR2(32),
  c_creditorsmeet   VARCHAR2(4000),
  d_meetdate    	DATE,
  c_meettopic   	VARCHAR2(128),
  c_meetcontent 	VARCHAR2(1500),
  C_INTSTATUS		VARCHAR2(2),
  C_ERRMSG			VARCHAR2(3000),
  C_BATCH_NO		VARCHAR2(10),
  C_SOURCE			VARCHAR2(20) 
)';
end if;

if not fc_IsTableExists('T_INT_SEIZED_INFO') then
	execute immediate '
CREATE TABLE T_INT_SEIZED_INFO
(
  C_ROWNUM			 VARCHAR2(32),
  C_SEIZEDID         VARCHAR2(64),
  C_LOANACCOUNTNAME  VARCHAR2(255),
  C_COURTNAME        VARCHAR2(64),
  D_DEALDATE         DATE,
  C_SEIZEDOBJECTTYPE VARCHAR2(2),
  C_SEIZEDOBJECTNAME VARCHAR2(255),
  C_SEIZEDTYPE       VARCHAR2(2),
  C_SEIZEDINFO       VARCHAR2(4000),
  D_SEIZEDDATE       DATE,
  C_SUMMARY          VARCHAR2(4000),
  C_IFFIRST          VARCHAR2(2),
  D_ENDDATE          DATE,
  C_ISBOYCOTT        VARCHAR2(2),
  C_SEIZEDOBJECTIDNAME  VARCHAR2(500),
  C_INTSTATUS		 VARCHAR2(2),
  C_ERRMSG			 VARCHAR2(3000),
  C_BATCH_NO		 VARCHAR2(10),
  C_SOURCE			 VARCHAR2(20) 
)';
end if;
--20180223kangxin(新增导入中间表)--end--
-- 20180223wangbl(资产包投标信息表新增字段)
if not fc_IsColExists('TASSET_BID_INFO','c_participationtype') then
  execute immediate 'alter table TASSET_BID_INFO add c_participationtype varchar2(2)';
end if;

if not fc_IsColExists('TASSET_BID_INFO','c_pushpackettype') then
  execute immediate 'alter table TASSET_BID_INFO add c_pushpackettype varchar2(2)';
end if;

if not fc_IsColExists('TASSET_BID_INFO','c_additionalremark') then
  execute immediate 'alter table TASSET_BID_INFO add c_additionalremark VARCHAR2(3000)';
end if;

if not fc_IsColExists('TASSET_BID_INFO','d_openbiddate') then
  execute immediate 'alter table TASSET_BID_INFO add d_openbiddate date';
end if;

--20180224taoxd(选聘结果表修改新增+选聘结果关联户表) --start--
if fc_IsTableExists('TAGENCY_APPLY_RESULT') and not fc_IsColExists('TAGENCY_APPLY_RESULT','c_contractno') then
    execute immediate 'alter table TAGENCY_APPLY_RESULT add c_contractno VARCHAR2(32)';
end if;
if fc_IsTableExists('TAGENCY_APPLY_RESULT') and not fc_IsColExists('TAGENCY_APPLY_RESULT','c_pay_instanceid') then
    execute immediate 'alter table TAGENCY_APPLY_RESULT add c_pay_instanceid VARCHAR2(32)';
end if;
if not fc_IsTableExists('TAGENCY_APPLY_REL_LOAN_RESULT') then
execute immediate '
create table TAGENCY_APPLY_REL_LOAN_RESULT
(
  l_id              NUMBER not null,
  c_resultid        NUMBER not null,
  c_loanaccountcode VARCHAR2(32),
  f_paid_amount     NUMBER(19,6) default 0,
  c_status          VARCHAR2(2) default 0
)';
execute immediate '
alter table TAGENCY_APPLY_REL_LOAN_RESULT
  add constraint SEQ_APPLYRELLOANRESULT_ID primary key (L_ID)';
execute immediate '
create sequence SEQ_APPLYRELLOANRESULT_ID
minvalue 1000
maxvalue 999999999
start with 1040
increment by 1
cache 20';
end if;
--20180224taoxd(选聘结果表修改新增+选聘结果关联户表) --end--

--[201802240171]20180226shiph22854(制式合同-法律服务委托合同，合同表新增字段)--start--
--律师事务所
if not fc_IsColExists('tinvest_contract','c_lawoffice') then
	execute immediate 'alter table tinvest_contract add c_lawoffice VARCHAR2(255)';
end if;
--经办律师
if not fc_IsColExists('tinvest_contract','c_lawyer') then
	execute immediate 'alter table tinvest_contract add c_lawyer VARCHAR2(2000)';
end if;
--保密承诺函违约金
if not fc_IsColExists('tinvest_contract','f_penalsum') then
	execute immediate 'alter table tinvest_contract add f_penalsum NUMBER(19,6)';
end if;
--工作成果交付方式
if not fc_IsColExists('tinvest_contract','c_workdeliverytype') then
	execute immediate 'alter table tinvest_contract add c_workdeliverytype VARCHAR2(2)';
end if;
--工作成果交付日期
if not fc_IsColExists('tinvest_contract','d_workdeliverydate') then
	execute immediate 'alter table tinvest_contract add d_workdeliverydate DATE';
end if;
--服务费支付模式
if not fc_IsColExists('tinvest_contract','c_servicepaytype') then
	execute immediate 'alter table tinvest_contract add c_servicepaytype VARCHAR2(2)';
end if;
--最高服务费金额
if not fc_IsColExists('tinvest_contract','f_highestservicefee') then
	execute immediate 'alter table tinvest_contract add f_highestservicefee NUMBER(19,6)';
end if;
--服务费支付期限(工作日)
if not fc_IsColExists('tinvest_contract','c_servicepaylimit') then
	execute immediate 'alter table tinvest_contract add c_servicepaylimit VARCHAR2(255)';
end if;  
--发票接收人
if not fc_IsColExists('tinvest_contract','c_invoicereceiver') then
	execute immediate 'alter table tinvest_contract add c_invoicereceiver VARCHAR2(255)';
end if;
--甲方联系人
if not fc_IsColExists('tinvest_contract','c_contact') then
	execute immediate 'alter table tinvest_contract add c_contact VARCHAR2(255)';
end if;
--甲方联系电话
if not fc_IsColExists('tinvest_contract','c_contactnum') then
	execute immediate 'alter table tinvest_contract add c_contactnum VARCHAR2(255)';
end if;
--[201802240171]20180226shiph22854(制式合同-法律服务委托合同，合同表新增字段)--end--

--[201802240171]20180226shiph22854(制式合同-债权转让合同，合同表新增字段)--start--
--付款期限（工作日）
if not fc_IsColExists('tinvest_contract','c_paydatelimit') then
	execute immediate 'alter table tinvest_contract add c_paydatelimit VARCHAR2(50)';
end if;
--分期付款次数
if not fc_IsColExists('tinvest_contract','c_paytimes') then
	execute immediate 'alter table tinvest_contract add c_paytimes VARCHAR2(50)';
end if;
--转让税费
if not fc_IsColExists('tinvest_contract','c_transfertaxtype') then
	execute immediate 'alter table tinvest_contract add c_transfertaxtype VARCHAR2(2)';
end if;
--交割期限(工作日)
if not fc_IsColExists('tinvest_contract','c_transferdatelimit') then
	execute immediate 'alter table tinvest_contract add c_transferdatelimit VARCHAR2(50)';
end if;
--过渡期受让方承担费用类别
if not fc_IsColExists('tinvest_contract','c_feekind') then
	execute immediate 'alter table tinvest_contract add c_feekind VARCHAR2(2000)';
end if;
--债权通知期限(工作日)
if not fc_IsColExists('tinvest_contract','c_noticedatelimit') then
	execute immediate 'alter table tinvest_contract add c_noticedatelimit VARCHAR2(50)';
end if;
--转让款延迟期限(工作日)
if not fc_IsColExists('tinvest_contract','c_delaydatelimit') then
	execute immediate 'alter table tinvest_contract add c_delaydatelimit VARCHAR2(50)';
end if;
--分期付款条件
if not fc_IsColExists('tinvest_contract','c_mutipaycondition') then
	execute immediate 'alter table tinvest_contract add c_mutipaycondition VARCHAR2(2000)';
end if; 
--转让方
if not fc_IsColExists('tinvest_contract','c_transferor') then
	execute immediate 'alter table tinvest_contract add c_transferor VARCHAR2(255)';
end if;
--转让方类型（0-干系人；1-基金）
if not fc_IsColExists('tinvest_contract','c_transferortype') then
	execute immediate 'alter table tinvest_contract add c_transferortype VARCHAR2(255)';
end if;
--转让方账户
if not fc_IsColExists('tinvest_contract','c_transferoraccount') then
	execute immediate 'alter table tinvest_contract add c_transferoraccount VARCHAR2(2000)';
end if;
--受让方
if not fc_IsColExists('tinvest_contract','c_transfee') then
	execute immediate 'alter table tinvest_contract add c_transfee VARCHAR2(255)';
end if;
--受让方类型（0-干系人；1-基金）
if not fc_IsColExists('tinvest_contract','c_transfeetype') then
	execute immediate 'alter table tinvest_contract add c_transfeetype VARCHAR2(255)';
end if;
--债务人
if not fc_IsColExists('tinvest_contract','c_debtor') then
	execute immediate 'alter table tinvest_contract add c_debtor VARCHAR2(255)';
end if;
--[201802240171]20180226shiph22854(制式合同-债权转让合同，合同表新增字段)--end--


if not fc_IsColExists('T_INT_ASSET_GUARANTEECONTRACT','c_isguaranteetype') then
	execute immediate 'alter table T_INT_ASSET_GUARANTEECONTRACT add c_isguaranteetype VARCHAR2(2)';
end if;


--20180228chenhy18048(资产增加资产性质和代管处置状态)--start--
if not fc_IsColExists('tasset_loanaccount_info','C_PROPERTYNATURE') then
  execute immediate 'alter table tasset_loanaccount_info add C_PROPERTYNATURE VARCHAR2(2)';
end if;

if not fc_IsColExists('tasset_loanaccount_info','C_ESCROWSTATUS') then
  execute immediate 'alter table tasset_loanaccount_info add C_ESCROWSTATUS VARCHAR2(2)';
end if;

if not fc_IsColExists('TASSET_CREDITORCONTRACT','C_PROPERTYNATURE') then
  execute immediate 'alter table TASSET_CREDITORCONTRACT add C_PROPERTYNATURE VARCHAR2(2)';
end if;

if not fc_IsColExists('TASSET_CREDITORCONTRACT','C_ESCROWSTATUS') then
  execute immediate 'alter table TASSET_CREDITORCONTRACT add C_ESCROWSTATUS VARCHAR2(2)';
end if;

if not fc_IsColExists('tasset_GuaranteeContract','C_ESCROWSTATUS') then
  execute immediate 'alter table tasset_GuaranteeContract add C_ESCROWSTATUS VARCHAR2(2)';
end if;

if not fc_IsColExists('tasset_pawn_info','C_ESCROWSTATUS') then
  execute immediate 'alter table tasset_pawn_info add C_ESCROWSTATUS VARCHAR2(2)';
end if;
--20180228chenhy18048(资产增加资产性质和代管处置状态)--end--

--20180302chenhy18048(到账确认信息表加一个回款性质字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM','C_REPAY_NATURE') then
  execute immediate 'alter table TREPAY_CONFIRM add C_REPAY_NATURE VARCHAR2(2)';
end if;
--20180302chenhy18048(到账确认信息表加一个回款性质字段)--end--

--20180306zhangchao(更新付款信息表项目编号允许为null)--start--
if not fc_IsColNULLABLE('TREPAY_INFO','C_PROJECTCODE') then
	execute immediate 'ALTER TABLE TREPAY_INFO  MODIFY C_PROJECTCODE NULL';
end if;
--20180306zhangchao(更新付款信息表项目编号允许为null)--start--

--20180307chenhy18048(到账确认配置表修改业务类型字段长度)--start--
if fc_IsColExists('TREPAY_CONFIRM_CONFIG','C_PROJECT_BUSITYPE') then
  execute immediate 'alter table TREPAY_CONFIRM_CONFIG modify C_PROJECT_BUSITYPE VARCHAR2(4)';
end if;
--20180307chenhy18048(到账确认配置表修改业务类型字段长度)--end--

--20180308zhuocc21770(新增股权资产信息表)--start--
if not fc_IsTableExists('TEQUITY_ASSETS_INFO') then
execute immediate '
create table TEQUITY_ASSETS_INFO
(
  l_equityassetno    NUMBER(10) not null,
  c_equityassetname  VARCHAR2(382),
  c_projectcode      VARCHAR2(48),
  c_assetholder      VARCHAR2(48),
  c_equitynature     VARCHAR2(32),
  f_equitybalance    NUMBER(25,8),
  l_stockamount      NUMBER(19,6),
  f_equityratio      NUMBER(10,6),
  c_equitystatus     VARCHAR2(2),
  c_checkflag        VARCHAR2(2),
  c_markettype       VARCHAR2(4),
  c_enterprise       VARCHAR2(48),
  c_investindustry   VARCHAR2(32),
  c_cykind           VARCHAR2(4),
  f_investbalance    NUMBER(25,8),
  c_remark           VARCHAR2(4000),
  c_heldhandlestatus VARCHAR2(2),
  c_rejecttype       VARCHAR2(3),
  c_propertynature   VARCHAR2(4),
  c_updateuser       VARCHAR2(32)
)';
execute immediate '
alter table TEQUITY_ASSETS_INFO
  add constraint PK_L_EQUITYASSETNO primary key (L_EQUITYASSETNO)';
execute immediate '
create sequence SEQ_EQUITYASSETNO
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20180308zhuocc21770(新增股权资产信息表)--end--
--20180307kangxin(处置关系表增加处置前状态字段)  --start--
if not fc_IsColExists('tDisposal_ObjectInfo','C_INITSTATUS') then
  execute immediate 'ALTER TABLE tDisposal_ObjectInfo ADD C_INITSTATUS VARCHAR2(5)';
end if;
--20180307kangxin(处置关系表增加处置前状态字段)  --end--

--[201801310203]20180309shiph22854(计提管理-代垫费用收益计提)--start--
--计提结果表增字段-计息金额类型（1-剩余本金；2-剩余代垫费用）
if not fc_IsColExists('TREPAY_ACCRUAL','C_BALANCETYPE') then
	execute immediate 'alter table TREPAY_ACCRUAL add C_BALANCETYPE VARCHAR2(2)';
end if;		
--合同表新增字段-是否计提代垫费（0-否；1-是）
if not fc_IsColExists('tinvest_contract','c_isaccruedassistpay') then
	execute immediate 'alter table tinvest_contract add c_isaccruedassistpay VARCHAR2(2)';
end if;
--[201801310203]20180309shiph22854(计提管理-代垫费用收益计提)--end--
--20180313zhuocc21770(抵质押物手工录入新增备注)--start--
if not fc_IsColExists('tasset_pawn_info','C_REMARK') then
	execute immediate 'alter table tasset_pawn_info add C_REMARK  VARCHAR2(500)';
end if;
--20180313zhuocc21770(抵质押物手工录入新增备注)--end--
if not fc_IsTableExists('TPROJECT_BANFILETYPE') then
  execute immediate 'create table TPROJECT_BANFILETYPE
(                       
  C_PROJECTTYPE  VARCHAR2(32),               
  C_PROJECTFILETYPE   VARCHAR2(3900)                            
)';
 end if;
 
 --[201802080616]20180314shiph22854(新增风险反馈流程，风险预警反馈表新增字段)--start--
--审批状态
if not fc_IsColExists('TRISK_WARNING_FEEDBACK','C_STATUS') then
	execute immediate 'alter table TRISK_WARNING_FEEDBACK add C_STATUS VARCHAR2(2)';
end if;
--流程实例号
if not fc_IsColExists('TRISK_WARNING_FEEDBACK','PROCESS_INSTANCEID') then
	execute immediate 'alter table TRISK_WARNING_FEEDBACK add PROCESS_INSTANCEID VARCHAR2(100)';
end if;
--[201802080616]20180314shiph22854(新增风险反馈流程，风险预警反馈表新增字段)--end--

--20180315chenhy18048(到账确认明细表新增利息金额-收入、利息金额-销项税字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_OUT_INCOME') then
	execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_OUT_INCOME number(19,2)';
end if;

if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_OUT_TAX') then
	execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_OUT_TAX number(19,2)';
end if;
--20180315chenhy18048(到账确认明细表新增利息金额-收入、利息金额-销项税字段)--end--

--20180315zhuocc21770(新增竞买人信息表)--start--
if not fc_IsTableExists('TASSET_BIDDER_INFO') then
execute immediate '
create table TASSET_BIDDER_INFO
(
  l_bidderid     NUMBER not null,
  c_customercode VARCHAR2(2000),
  c_biddersinfo  VARCHAR2(32),
  c_isbidderwin  VARCHAR2(1)
)';
execute immediate '
alter table TASSET_BIDDER_INFO
  add constraint PK_BIDDERID primary key (L_BIDDERID)';
execute immediate '
create sequence SEQ_BIDDERID minvalue 1 maxvalue 999999999 start
  with 1000 increment by 1 cache 2';
end if;
--20180315zhuocc21770(新增竞买人信息表)--end--

--[201802050341]20180316shiph22854(风险预警信息，风险预警反馈自动提醒，新增字段)--start--
--自定义时间表类型（1：投后提醒；2：风险预警），投后提醒自定义时间表
if not fc_IsColExists('tafter_investment_notice_date','c_type') then
	execute immediate 'alter table tafter_investment_notice_date add c_type VARCHAR2(2)';
end if;
--提醒规则类型（1：投后提醒；2：风险预警），投后提醒规则表
if not fc_IsColExists('tafter_investment_notice_rule','c_type') then
	execute immediate 'alter table tafter_investment_notice_rule add c_type VARCHAR2(2)';
end if;
--待办提醒类型（1：投后提醒；2：风险预警），投后待办提醒表
if not fc_IsColExists('tafter_investment_notice','c_type') then
	execute immediate 'alter table tafter_investment_notice add c_type VARCHAR2(2)';
end if;
--[201802050341]20180316shiph22854(风险预警信息，风险预警反馈自动提醒，新增字段)--end--
if not fc_IsColExists('TACCOUNT_CAPITAL','C_CANCELSTATUS') then
    execute immediate 'alter table TACCOUNT_CAPITAL add C_CANCELSTATUS VARCHAR2(4)';
end if;

if not fc_IsColExists('TACCOUNT_CAPITAL','C_STATUS_XY') then
	execute immediate 'alter table TACCOUNT_CAPITAL add C_STATUS_XY varchar2(8)';
end if;

if not fc_IsColExists('TACCOUNT_CAPITAL','C_OPERATOR') then
    execute immediate 'alter table TACCOUNT_CAPITAL add C_OPERATOR  VARCHAR2(16)';
end if;

--20180320taoxd(选聘结果表修改新增+选聘结果关联户表) --start--
if fc_IsTableExists('TAGENCY_APPLY_DETAIL') and not fc_IsColExists('TAGENCY_APPLY_RESULT','c_rivaltype') then
    execute immediate 'alter table TAGENCY_APPLY_DETAIL add c_rivaltype VARCHAR2(2)';
end if;
if fc_IsTableExists('TAGENCY_APPLY_DETAIL') and not fc_IsColExists('TAGENCY_APPLY_RESULT','c_applycontentid') then
    execute immediate 'alter table TAGENCY_APPLY_DETAIL add c_applycontentid NUMBER';
end if;
if fc_IsTableExists('TAGENCY_APPLY_RESULT') and not fc_IsColExists('TAGENCY_APPLY_RESULT','c_rivaltype') then
    execute immediate 'alter table TAGENCY_APPLY_RESULT add c_rivaltype VARCHAR2(2)';
end if;
if fc_IsTableExists('TAGENCY_APPLY_RESULT') and not fc_IsColExists('TAGENCY_APPLY_RESULT','c_applycontentid') then
    execute immediate 'alter table TAGENCY_APPLY_RESULT add c_applycontentid NUMBER';
end if;
if not fc_IsColExists('tinvest_contract','c_agencycustomer') then
     execute immediate 'alter table tinvest_contract  add c_agencycustomer VARCHAR2(255)';
   end if;
if not fc_IsTableExists('TAGENCY_APPLY_CONTENT') then
execute immediate '
create table TAGENCY_APPLY_CONTENT
(
  L_ID              NUMBER not null,
  C_APPLYID        VARCHAR2(32) not null,
  C_TYPE       VARCHAR2(2),
  C_TITLE      VARCHAR2(255),
  C_NOMINATEOFFICE          VARCHAR2(255),
  C_NOMINATELAWYER          VARCHAR2(255)
)';
execute immediate '
alter table TAGENCY_APPLY_CONTENT
  add constraint SEQ_APPLYCONTENT_ID primary key (L_ID)';
execute immediate '
create sequence SEQ_APPLYCONTENT_ID
minvalue 1000
maxvalue 999999999
start with 1000
increment by 1
cache 20';
end if;

if not fc_IsTableExists('TAGENCY_APPLY_CONTENT_REL_LOAN') then
execute immediate '
create table TAGENCY_APPLY_CONTENT_REL_LOAN
(
  L_ID                    NUMBER not null,
  C_APPLYCONTENTID        NUMBER,
  C_LOANACCOUNTCODE       VARCHAR2(32),
  F_SERVICE_FEE           NUMBER(19,6),
  F_PAID_AMOUNT           NUMBER(19,6),
  C_STATUS                VARCHAR2(2)
)';
execute immediate '
alter table TAGENCY_APPLY_CONTENT_REL_LOAN
  add constraint SEQ_APPLYCONTENTRELLOAN_ID primary key (L_ID)';
execute immediate '
create sequence SEQ_APPLYCONTENTRELLOAN_ID
minvalue 1000
maxvalue 999999999
start with 1000
increment by 1
cache 20';
end if;
--20180320taoxd(选聘结果表修改新增+选聘结果关联户表) --end--

--20180319zhangchao(新增公司制度表)--start--
if not fc_IsTableExists('company_policy') then
  execute immediate 'create table company_policy
(
  l_policyid      NUMBER(10) not null,
  c_policyname        VARCHAR2(32),
  c_department        VARCHAR2(32),
  c_documentnumber    VARCHAR2(32),
  c_viewthescoperole  VARCHAR2(500),
  d_creattime  date,
  c_viewthescopeuser  VARCHAR2(500),
  c_remark  VARCHAR2(1000)
  )';
end if;

if not fc_IsSeqExists('SEQ_COMPANY_POLICY_ID') then
    execute immediate 'create sequence SEQ_COMPANY_POLICY_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
  end if;
--20180319zhangchao(新增公司制度表)--end--

--20180320zhuocc(债权合同信息表新增字段)--start--
if not fc_IsColExists('tasset_creditorcontract','c_isassetchange') then
     execute immediate 'alter table tasset_creditorcontract add c_isassetchange varchar2(2)';
 end if;
if not fc_IsColExists('tasset_creditorcontract','c_assetchangetext') then
     execute immediate 'alter table tasset_creditorcontract add c_assetchangetext varchar2(2000)';
 end if;
--20180320zhuocc(债权合同信息表新增字段)--end--

--项目快照begin--
if not fc_IsTableExists('tproject_snapshot') then
  execute immediate 'create table tproject_snapshot
(
  l_id                NUMBER    not null,
  l_serialno          NUMBER    not null,
  c_type              VARCHAR2(10) not null,
  c_relatedcode       VARCHAR2(50),
  c_modifyuser        VARCHAR2(20),
  d_modifytime        date,
  c_tagname           VARCHAR2(100) not null,
  process_instanceid  VARCHAR2(100) not null,
  c_taskid              VARCHAR2(100) not null
  )';
  execute immediate '
alter table tproject_snapshot
  add constraint PK_TSID primary key (l_id)';
end if;

if not fc_IsSeqExists('SEQ_TPROJECT_SNAPSHOT_ID') then
    execute immediate 'create sequence SEQ_TPROJECT_SNAPSHOT_ID
      minvalue 1
      maxvalue 99999999
      start with 1
      increment by 1
      cache 20';
  end if;
--项目快照end--

if not fc_IsColExists('TREPAY_INFO','c_isdebtsloan') then
     execute immediate 'alter table TREPAY_INFO add c_isdebtsloan VARCHAR2(1)';
end if;

if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_pay_AMOUNT') then
     execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_pay_AMOUNT NUMBER(19,2)';
end if;

if not fc_IsSeqExists('SEQ_loan_allocate_ID') then
    execute immediate 'create sequence SEQ_loan_allocate_ID
		minvalue 1
		maxvalue 999999999
		start with 100
		increment by 1
		cache 20';
end if;

if not fc_IsTableExists('TREPAY_LOAN_ALLOCATE') then
  execute immediate 'create table TREPAY_LOAN_ALLOCATE
(
  L_ID               NUMBER not null,
  C_LOANACCOUNTCODE  VARCHAR2(32),
  PROCESS_INSTANCEID VARCHAR2(32),
  F_DEBTSMONEY       NUMBER(19,2),
  C_CREATER          VARCHAR2(32),
  C_UPDATER          VARCHAR2(32),
  C_CREATEDATE       DATE,
  C_UPDATEDATE       DATE
)';
  execute immediate '
alter table TREPAY_LOAN_ALLOCATE
  add constraint PK_REPAY_LOAN_ALLOCATE primary key (L_ID)';
end if;

--20180322chenhy18048(到账确认明细表新增发生费用字段、新增付款分摊到户信息表、修改付款信息表字段长度等)--end--
--20180322zhuocc21770(债权合同表、保证合同表、抵质押物表新增字段)--start--
if not fc_IsColExists('tasset_creditorcontract','f_oriacceptprincipal') then
  execute immediate 'alter table tasset_creditorcontract add f_oriacceptprincipal NUMBER(19,6)';
end if;  
if not fc_IsColExists('tasset_creditorcontract','f_oriacceptinterest') then
  execute immediate 'alter table tasset_creditorcontract add f_oriacceptinterest NUMBER(19,6)';
end if;  
if not fc_IsColExists('tasset_creditorcontract','f_oriacceptdfinterest') then
  execute immediate 'alter table tasset_creditorcontract add f_oriacceptdfinterest NUMBER(19,6)';
end if;  
if not fc_IsColExists('tasset_creditorcontract','f_oriacceptcpinterest') then
  execute immediate 'alter table tasset_creditorcontract add f_oriacceptcpinterest NUMBER(19,6)';
end if;  
if not fc_IsColExists('tasset_creditorcontract','c_lawsuitstatus') then
  execute immediate 'alter table tasset_creditorcontract add c_lawsuitstatus varchar2(2)';
end if;  
if not fc_IsColExists('tasset_creditorcontract','d_contractloandate') then
  execute immediate 'alter table tasset_creditorcontract add d_contractloandate date';
end if;  
if not fc_IsColExists('tasset_guaranteecontract','c_cykind') then
  execute immediate 'alter table tasset_guaranteecontract  add c_cykind varchar2(4)';
end if;
if not fc_IsColExists('tasset_guaranteecontract','d_limitationexpdate') then
  execute immediate 'alter table tasset_guaranteecontract add d_limitationexpdate date';
end if;
if not fc_IsColExists('tasset_pawn_info','d_pawnregdate') then
	execute immediate 'alter table tasset_pawn_info add d_pawnregdate date';
end if;
if not fc_IsColExists('tasset_pawn_info','c_addrdetail') then
	execute immediate 'alter table tasset_pawn_info add c_addrdetail varchar2(500)';
end if;
if not fc_IsColExists('tasset_pawn_info','c_cykind') then
	execute immediate 'alter table tasset_pawn_info add c_cykind varchar2(4)';
end if;
if not fc_IsColExists('tasset_pawn_info','f_pawnquantity') then
	execute immediate 'alter table tasset_pawn_info add f_pawnquantity NUMBER(19,4)';
end if;
if not fc_IsColExists('tasset_pawn_info','c_pawnunit') then
	execute immediate 'alter table tasset_pawn_info add c_pawnunit varchar2(15)';
end if;
--20180322zhuocc21770(债权合同表、保证合同表、抵质押物表新增字段)--end--

--20180326kangxin(债权合同中间表、保证合同中间表、抵质押物中间表新增字段)--start--
if not fc_IsColExists('t_int_asset_creditorcontract','f_oriacceptprincipal') then
  execute immediate 'alter table t_int_asset_creditorcontract add f_oriacceptprincipal NUMBER(19,6)';
end if;  
if not fc_IsColExists('t_int_asset_creditorcontract','f_oriacceptinterest') then
  execute immediate 'alter table t_int_asset_creditorcontract add f_oriacceptinterest NUMBER(19,6)';
end if;  
if not fc_IsColExists('t_int_asset_creditorcontract','f_oriacceptdfinterest') then
  execute immediate 'alter table t_int_asset_creditorcontract add f_oriacceptdfinterest NUMBER(19,6)';
end if;  
if not fc_IsColExists('t_int_asset_creditorcontract','f_oriacceptcpinterest') then
  execute immediate 'alter table t_int_asset_creditorcontract add f_oriacceptcpinterest NUMBER(19,6)';
end if;  
if not fc_IsColExists('t_int_asset_creditorcontract','c_lawsuitstatus') then
  execute immediate 'alter table t_int_asset_creditorcontract add c_lawsuitstatus varchar2(2)';
end if;  
if not fc_IsColExists('t_int_asset_creditorcontract','d_contractloandate') then
  execute immediate 'alter table t_int_asset_creditorcontract add d_contractloandate date';
end if;  
if not fc_IsColExists('t_int_asset_guaranteecontract','c_cykind') then
  execute immediate 'alter table t_int_asset_guaranteecontract  add c_cykind varchar2(4)';
end if;
if not fc_IsColExists('t_int_asset_guaranteecontract','d_limitationexpdate') then
  execute immediate 'alter table t_int_asset_guaranteecontract add d_limitationexpdate date';
end if;
if not fc_IsColExists('t_int_asset_pawn_info','d_pawnregdate') then
	execute immediate 'alter table t_int_asset_pawn_info add d_pawnregdate date';
end if;
if not fc_IsColExists('t_int_asset_pawn_info','c_addrdetail') then
	execute immediate 'alter table t_int_asset_pawn_info add c_addrdetail varchar2(500)';
end if;
if not fc_IsColExists('t_int_asset_pawn_info','c_cykind') then
	execute immediate 'alter table t_int_asset_pawn_info add c_cykind varchar2(4)';
end if;
if not fc_IsColExists('t_int_asset_pawn_info','f_pawnquantity') then
	execute immediate 'alter table t_int_asset_pawn_info add f_pawnquantity NUMBER(19,4)';
end if;
if not fc_IsColExists('t_int_asset_pawn_info','c_pawnunit') then
	execute immediate 'alter table t_int_asset_pawn_info add c_pawnunit varchar2(15)';
end if;
--20180326kangxin(债权合同中间表、保证合同中间表、抵质押物中间表新增字段)--end--
--债权合同修改审批流程 begin--
if not fc_IsColExists('tasset_creditorcontract','c_hasmodifyed') then
	execute immediate 'alter table tasset_creditorcontract add c_hasmodifyed varchar2(2)';
end if;
if not fc_IsColExists('tasset_creditorcontract','c_remark') then
	execute immediate 'alter table tasset_creditorcontract add c_remark varchar2(1000)';
end if;
--债权合同修改审批流程 end--
--20180329zhangchao(DOWNLOAD_RECORD表新增字段查看时间)--start--
if not fc_IsColExists('download_record','d_viewtime') then
	execute immediate 'alter table download_record add d_viewtime date';
end if;
--20180329zhangchao(DOWNLOAD_RECORD表新增字段查看时间)--end--
--20180403taolj20522(开票管理)--start--
if not fc_IsTableExists('TCBMS_FUNDVARY_INVOICE_INFO') then
  execute immediate 'create table TCBMS_FUNDVARY_INVOICE_INFO
(
  l_ijourid      NUMBER(10) not null,
  c_invoice_type VARCHAR2(1),
  c_invoice_date VARCHAR2(30),
  c_memo         VARCHAR2(500),
  c_createuser   VARCHAR2(100),
  d_createtime   DATE,
  l_id           NUMBER(10) not null
)';
end if;
--20180403taolj20522(开票管理)--end--

--20180403zhuocc(合同表新增送审部门、送审时间)--start--
  if not fc_IsColExists('tinvest_contract','c_trialdeptcode') then
     execute immediate 'alter table tinvest_contract add c_trialdeptcode VARCHAR2(50)';
   end if;
   if not fc_IsColExists('tinvest_contract','d_trialtime') then
     execute immediate 'alter table tinvest_contract add d_trialtime DATE';
   end if;

--20180403zhuocc(合同表新增送审部门、送审时间)--end--

--20180404kangxin(配合广州资产导入功能修改) --start--
if  fc_IsColExists('tasset_guaranteecontract','C_GUARANTEECONTRACTNO') then
	execute immediate 'alter table tasset_guaranteecontract modify C_GUARANTEECONTRACTNO varchar2(500)';
end if;
if  fc_IsColExists('t_int_asset_guaranteecontract','C_GUARANTEECONTRACTNO') then
	execute immediate 'alter table t_int_asset_guaranteecontract modify C_GUARANTEECONTRACTNO varchar2(500)';
end if;
if  fc_IsColExists('tasset_mortgagecontract','C_MORTGAGECONTRACTNO') then
	execute immediate 'alter table tasset_mortgagecontract modify C_MORTGAGECONTRACTNO varchar2(500)';
end if;
if  fc_IsColExists('t_int_asset_mortgagecontract','C_MORTGAGECONTRACTNO') then
	execute immediate 'alter table t_int_asset_mortgagecontract modify C_MORTGAGECONTRACTNO varchar2(500)';
end if;
if not fc_IsColExists('tasset_creditorcontract','c_loananoalias') then
	execute immediate 'alter table tasset_creditorcontract add c_loananoalias varchar2(2000)';
end if;
if not fc_IsColExists('t_int_asset_creditorcontract','c_loananoalias') then
	execute immediate 'alter table t_int_asset_creditorcontract add c_loananoalias varchar2(2000)';
end if;
if  fc_IsColExists('T_INT_ASSET_PAWN_INFO','C_MORTGAGECONTRACTNO') then
	execute immediate 'alter table T_INT_ASSET_PAWN_INFO modify C_MORTGAGECONTRACTNO varchar2(500)';
end if;
if not fc_IsColExists('t_int_asset_pawn_info','C_PAWNSTATUS') then
	execute immediate 'alter table t_int_asset_pawn_info add C_PAWNSTATUS varchar2(2)';
end if;
--20180404kangxin(配合广州资产导入功能修改) --end--

--20180404dutao(TEQUITY_ASSETS_INFO 表新增字段账面值)--start--
if not fc_IsColExists('tequity_assets_info','f_accountvalue') then
	execute immediate 'alter table tequity_assets_info add f_accountvalue number(25,8)';
end if;
--20180404dutao(TEQUITY_ASSETS_INFO 表新增字段账面值)--end--

--20180404dutao(修改付款方式字段的长度)--start--
if fc_IsColExists('trepay_info','C_PAYWAY') then
  execute immediate 'alter table trepay_info modify C_PAYWAY varchar2(2000)';
end if;
--20180404dutao(修改付款方式字段的长度)--end--	

--[201803230048]20180404shiph22854(计提管理-计提结果表格新增次序字段)--start--
--计提结果表增字段-次序
if fc_IsTableExists('TREPAY_ACCRUAL') and not fc_IsColExists('TREPAY_ACCRUAL','L_ORDER') then
	execute immediate 'alter table TREPAY_ACCRUAL add L_ORDER NUMBER';
end if;		
--[201803230048]20180404shiph22854(计提管理-计提结果表格新增排序字段)--end--
--20180408zhuocc(扩展项目表受托方以及委托方字段长度)--start--
if  fc_IsColExists('tproject_info','c_actualcust') then
	execute immediate 'alter table tproject_info modify c_actualcust varchar2(1000)';
end if;
if  fc_IsColExists('tproject_info','c_trustee') then
	execute immediate 'alter table tproject_info modify c_trustee varchar2(1000)';
end if;
--20180408zhuocc(扩展项目表受托方以及委托方字段长度)--end--

 --20180409kangxin(导入功能字段补充)-- start ---
if not fc_IsColExists('t_int_invest_contract','f_pmanagegeerate') then
 execute immediate 'alter table t_int_invest_contract add f_pmanagegeerate number(19,6)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_repaytype') then
execute immediate 'alter table t_int_invest_contract add c_repaytype varchar2(2)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_isprofitaccrua') then
execute immediate 'alter table t_int_invest_contract add c_isprofitaccrua varchar2(2)';
end if;

if not fc_IsColExists('t_int_invest_contract','f_frontfee') then
execute immediate 'alter table t_int_invest_contract add  f_frontfee NUMBER(19,2)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_backenddesc') then
execute immediate 'alter table t_int_invest_contract add c_backenddesc VARCHAR2(255)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_clearuplimit') then
execute immediate 'alter table t_int_invest_contract add c_clearuplimit VARCHAR2(32)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_firstparty') then
execute immediate 'alter table t_int_invest_contract add  c_firstparty VARCHAR2(32)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_secondparty') then
execute immediate 'alter table t_int_invest_contract add  c_secondparty  VARCHAR2(32)';
end if;

if not fc_IsColExists('t_int_invest_contract','f_copies1') then
execute immediate 'alter table t_int_invest_contract add  f_copies1  NUMBER(19,6)';
end if;

if not fc_IsColExists('t_int_invest_contract','f_copies2') then
execute immediate 'alter table t_int_invest_contract add  f_copies2  NUMBER(19,6)';
end if;

if not fc_IsColExists('t_int_invest_contract','f_copies3') then
execute immediate 'alter table t_int_invest_contract add  f_copies3  NUMBER(19,6)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_otherparty') then
execute immediate 'alter table t_int_invest_contract add  c_otherparty VARCHAR2(32)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_stamp') then
execute immediate 'alter table t_int_invest_contract add  c_stamp    VARCHAR2(32)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_ifstamp') then
execute immediate 'alter table t_int_invest_contract add  c_ifstamp  VARCHAR2(2)';
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ADDRESS') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ADDRESS	VARCHAR2(3000)';			--注册地址
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_BUSINESSCOPE') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add  C_BUSINESSCOPE	VARCHAR2(3000)';		--经营范围
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT1') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT1	VARCHAR2(3000)';			--债务人情况
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT2') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT2	VARCHAR2(3000)';			--法人担保情况
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT3') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT3	VARCHAR2(3000)';			--抵押物瑕疵事项
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT4') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT4	VARCHAR2(3000)';			--债权、担保法律审查
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT5') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT5	VARCHAR2(3000)';			--诉讼情况
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT6') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT6	VARCHAR2(3000)';			--抵押物及评估情况（抵质押物评估情况）
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT7') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT7	VARCHAR2(3000)';			--担保债权价值（保证人估值情况）
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT8') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT8	VARCHAR2(3000)';			--一般债权价值（债务人估值情况）
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT9') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT9	VARCHAR2(3000)';			--回款来源及收回期限
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT10') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT10	VARCHAR2(3000)';		    --该债权预计回收价值
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT11') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT11	VARCHAR2(3000)';				--其他债权人信息
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_ABSTRACT12') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_ABSTRACT12	VARCHAR2(3000)';				--其他财产线索
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','D_SETUPDATE') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add D_SETUPDATE	DATE';			--成立日期
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_REPRESENTATIVE') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_REPRESENTATIVE	VARCHAR2(50)';	--法人代表
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','F_REGISTEMONEY') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add F_REGISTEMONEY	NUMBER(19,6)';		--注册资本
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','F_DEFAULTINTEREST') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add F_DEFAULTINTEREST	NUMBER(19,6)';				--罚息
end if;

if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_LITIGATIONSTATUS') then
execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_LITIGATIONSTATUS	VARCHAR2(2)';			--诉讼状态
end if;



if not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','C_ISBANTRANSFER') then
execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add C_ISBANTRANSFER	VARCHAR2(1)';			--是否限制转让债权
end if;

if not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','F_DEFAULTINTEREST') then
execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add F_DEFAULTINTEREST	NUMBER(19,6)';			--罚息
end if;

if not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','F_COMPOUNDINTEREST') then
execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add F_COMPOUNDINTEREST	NUMBER(19,6)';			--复利
end if;

if not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','C_BASEKIND') then
execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add C_BASEKIND	VARCHAR2(4)';			--基准利率
end if;

if not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','C_CHANGEKIND') then
execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add C_CHANGEKIND	VARCHAR2(3)';		--调整方式
end if;
  --20180409kangxin(导入功能字段补充)-- end ---
--20180404zhangchao(制度表新增字段制度类型)--start--
if not fc_IsColExists('company_policy','C_POLICYTYPE') then
    execute immediate 'alter table company_policy add C_POLICYTYPE VARCHAR2(2)';
end if;
--20180404zhangchao(制度表新增字段制度类型)--end--

--20180410kangxin(投后规则表新增字段)--start--
if not fc_IsColExists('tafter_investment_notice_rule','L_AFTERNOTICEDAY') then
    execute immediate 'alter table tafter_investment_notice_rule add  L_AFTERNOTICEDAY	NUMBER(10)';
end if;
if fc_IsColExists('tafter_investment_notice_rule','L_BEFORENOTICEDAY') then
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_notice_rule'') and column_name = upper(''L_BEFORENOTICEDAY'') and nullable = ''N''') then
		execute immediate 'alter table tafter_investment_notice_rule modify  L_BEFORENOTICEDAY NULL';
	end if;	
end if;
--20180410kangxin(投后规则表新增字段)--end--

--20180412chenhy18048(到账确认信息表新增字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM','F_OUT_TAX') then
    execute immediate 'alter table TREPAY_CONFIRM add F_OUT_TAX number(19,2)';
end if;
--20180412chenhy18048(到账确认信息表新增字段)--end--
--[M201804120856]20180412shiph22854(风险预警信息，风险预警反馈自动提醒，新增字段)--start--
--投后提醒自定义时间表新增字段：关联编码（type为2时存风险预警信息id）
if not fc_IsColExists('tafter_investment_notice_date','c_relationcode') then
	execute immediate 'alter table tafter_investment_notice_date add c_relationcode VARCHAR2(32)';
end if;
--投后提醒规则表新增字段：关联编码（type为2时存风险预警信息id）
if not fc_IsColExists('tafter_investment_notice_rule','c_relationcode') then
	execute immediate 'alter table tafter_investment_notice_rule add c_relationcode VARCHAR2(32)';
end if;
--投后待办提醒表新增字段：关联编码（type为2时存风险预警信息id）
if not fc_IsColExists('tafter_investment_notice','c_relationcode') then
	execute immediate 'alter table tafter_investment_notice add c_relationcode VARCHAR2(32)';
end if;
--[M201804120856]20180412shiph22854(风险预警信息，风险预警反馈自动提醒，新增字段)--end--
--[M201804130032]20180413taolj20522(抵质押物预警线、平仓线预警)--end--
if not fc_IsColExists('TINVEST_COLLATERAL','F_WARNING_LINE') then
    execute immediate 'alter table TINVEST_COLLATERAL add F_WARNING_LINE  NUMBER(19, 4)';
end if;

if not fc_IsColExists('TINVEST_COLLATERAL','F_CLOSING_LINE') then
    execute immediate 'alter table TINVEST_COLLATERAL add F_CLOSING_LINE  NUMBER(19, 4)';
end if;
--[M201804130032]20180413taolj20522(抵质押物预警线、平仓线预警)--end--
if  fc_IsColExists('tproject_info','c_reclaimkind') then
    execute immediate 'alter table tproject_info modify c_reclaimkind varchar2(100) ';
end if;

if not fc_IsSeqExists('SEQ_TINVESTCONTRACT_ID') then
    execute immediate 'create sequence SEQ_TINVESTCONTRACT_ID
	minvalue 100000
	maxvalue 999999
	start with 100000
	increment by 1
	cache 20
	cycle';
end if;

if not fc_IsColExists('TINVEST_COLLATERAL','c_contractid') then
    execute immediate 'alter table TINVEST_COLLATERAL add c_contractid  varchar2(50)';
end if;

--20180417kagnxin(导入功能项目字段补充)--start--
if not fc_IsColExists('t_int_project_info','c_theme') then
	execute immediate 'alter table t_int_project_info  add c_theme  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_thirdpartyfundingratio') then
	execute immediate 'alter table t_int_project_info  add c_thirdpartyfundingratio  VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','d_investendday') then
	execute immediate 'alter table t_int_project_info  add d_investendday  DATE';
end if;
if not fc_IsColExists('t_int_project_info','c_contents') then
	execute immediate 'alter table t_int_project_info  add c_contents  VARCHAR2(500)';
end if;
if not fc_IsColExists('t_int_project_info','c_faxnumber') then
	execute immediate 'alter table t_int_project_info  add c_faxnumber  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_enddate') then
	execute immediate 'alter table t_int_project_info  add c_enddate  date';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield3') then
	execute immediate 'alter table t_int_project_info  add c_extfield3  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','d_auctionmarkup') then
	execute immediate 'alter table t_int_project_info  add d_auctionmarkup  NUMBER(16,2)';
end if;
if not fc_IsColExists('t_int_project_info','c_creditschedule') then
	execute immediate 'alter table t_int_project_info  add c_creditschedule  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','c_extendedendtime') then
	execute immediate 'alter table t_int_project_info  add c_extendedendtime  date';
end if;
if not fc_IsColExists('t_int_project_info','c_propertydivision') then
	execute immediate 'alter table t_int_project_info  add c_propertydivision  VARCHAR2(2048)';
end if;
if not fc_IsColExists('t_int_project_info','d_bidday') then
	execute immediate 'alter table t_int_project_info  add d_bidday  DATE';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield9') then
	execute immediate 'alter table t_int_project_info  add c_extfield9  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','l_managementfee') then
	execute immediate 'alter table t_int_project_info  add l_managementfee  NUMBER(16,4)';
end if;
if not fc_IsColExists('t_int_project_info','c_sourcerepayment') then
	execute immediate 'alter table t_int_project_info  add c_sourcerepayment  VARCHAR2(1000)';
end if;
if not fc_IsColExists('t_int_project_info','c_rivalcontroler') then
	execute immediate 'alter table t_int_project_info  add c_rivalcontroler  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield5') then
	execute immediate 'alter table t_int_project_info  add c_extfield5  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield8') then
	execute immediate 'alter table t_int_project_info  add c_extfield8  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','d_secrecydepositdeadline') then
	execute immediate 'alter table t_int_project_info  add d_secrecydepositdeadline  DATE';
end if;
if not fc_IsColExists('t_int_project_info','c_projectcounty') then
	execute immediate 'alter table t_int_project_info  add c_projectcounty  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield7') then
	execute immediate 'alter table t_int_project_info  add c_extfield7  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','c_dealplaninfo') then
	execute immediate 'alter table t_int_project_info  add c_dealplaninfo  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield2') then
	execute immediate 'alter table t_int_project_info  add c_extfield2  VARCHAR2(1500)';
end if;
if not fc_IsColExists('t_int_project_info','c_estateinfomeno') then
	execute immediate 'alter table t_int_project_info  add c_estateinfomeno  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_capitalprovider') then
	execute immediate 'alter table t_int_project_info  add c_capitalprovider  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_existencedate') then
	execute immediate 'alter table t_int_project_info  add c_existencedate  date';
end if;
if not fc_IsColExists('t_int_project_info','c_predictyieldexplain') then
	execute immediate 'alter table t_int_project_info  add c_predictyieldexplain  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','c_interest') then
	execute immediate 'alter table t_int_project_info  add c_interest  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','l_custodyrates') then
	execute immediate 'alter table t_int_project_info  add l_custodyrates  NUMBER(16,4)';
end if;
if not fc_IsColExists('t_int_project_info','f_consultvalue') then
	execute immediate 'alter table t_int_project_info  add f_consultvalue  VARCHAR2(60)';
end if;
if not fc_IsColExists('t_int_project_info','f_managerplantransferprice') then
	execute immediate 'alter table t_int_project_info  add f_managerplantransferprice  NUMBER(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','c_liveaddress') then
	execute immediate 'alter table t_int_project_info  add c_liveaddress  VARCHAR2(1000)';
end if;
if not fc_IsColExists('t_int_project_info','c_legalperson') then
	execute immediate 'alter table t_int_project_info  add c_legalperson  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','l_honorcustomerincome') then
	execute immediate 'alter table t_int_project_info  add l_honorcustomerincome  NUMBER(16,4)';
end if;
if not fc_IsColExists('t_int_project_info','c_revenueforecast') then
	execute immediate 'alter table t_int_project_info  add c_revenueforecast  VARCHAR2(2048)';
end if;
if not fc_IsColExists('t_int_project_info','d_replybanktime') then
	execute immediate 'alter table t_int_project_info  add d_replybanktime  DATE';
end if;
if not fc_IsColExists('t_int_project_info','c_companyname') then
	execute immediate 'alter table t_int_project_info  add c_companyname  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','f_priorityprice') then
	execute immediate 'alter table t_int_project_info  add f_priorityprice  NUMBER(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','c_agencyname') then
	execute immediate 'alter table t_int_project_info  add c_agencyname  VARCHAR2(36)';
end if;
if not fc_IsColExists('t_int_project_info','c_secondrepayment') then
	execute immediate 'alter table t_int_project_info  add c_secondrepayment  VARCHAR2(500)';
end if;
if not fc_IsColExists('t_int_project_info','c_destinedate') then
	execute immediate 'alter table t_int_project_info  add c_destinedate  date';
end if;
if not fc_IsColExists('t_int_project_info','c_timelimit') then
	execute immediate 'alter table t_int_project_info  add c_timelimit  VARCHAR2(10)';
end if;
if not fc_IsColExists('t_int_project_info','c_registeraddress') then
	execute immediate 'alter table t_int_project_info  add c_registeraddress  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_extendedstarttime') then
	execute immediate 'alter table t_int_project_info  add c_extendedstarttime  date';
end if;
if not fc_IsColExists('t_int_project_info','c_backenddesc') then
	execute immediate 'alter table t_int_project_info  add c_backenddesc  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','c_businesscontact') then
	execute immediate 'alter table t_int_project_info  add c_businesscontact  VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','c_prodescribe') then
	execute immediate 'alter table t_int_project_info  add c_prodescribe  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','c_contactnumber') then
	execute immediate 'alter table t_int_project_info  add c_contactnumber  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','d_projectleaderrate') then
	execute immediate 'alter table t_int_project_info  add d_projectleaderrate  NUMBER(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','c_managementcosts') then
	execute immediate 'alter table t_int_project_info  add c_managementcosts  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_commongrantor') then
	execute immediate 'alter table t_int_project_info  add c_commongrantor  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','c_sponsoragencies') then
	execute immediate 'alter table t_int_project_info  add c_sponsoragencies  VARCHAR2(500)';
end if;
if not fc_IsColExists('t_int_project_info','c_othermemo') then
	execute immediate 'alter table t_int_project_info  add c_othermemo  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','c_collectamount') then
	execute immediate 'alter table t_int_project_info  add c_collectamount  number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','d_begindate') then
	execute immediate 'alter table t_int_project_info  add d_begindate  DATE';
end if;
if not fc_IsColExists('t_int_project_info','c_investmentcompanyname') then
	execute immediate 'alter table t_int_project_info  add c_investmentcompanyname  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_projectnature') then
	execute immediate 'alter table t_int_project_info  add c_projectnature  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','c_pariodmeno') then
	execute immediate 'alter table t_int_project_info  add c_pariodmeno  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','c_investproportion') then
	execute immediate 'alter table t_int_project_info  add c_investproportion  VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','c_projectsourcesmeno') then
	execute immediate 'alter table t_int_project_info  add c_projectsourcesmeno  VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_refundorigin') then
	execute immediate 'alter table t_int_project_info  add c_refundorigin  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','c_boundtype') then
	execute immediate 'alter table t_int_project_info  add c_boundtype  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','c_postcode') then
	execute immediate 'alter table t_int_project_info  add c_postcode  VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','d_dealdate') then
	execute immediate 'alter table t_int_project_info  add d_dealdate  DATE';
end if;
if not fc_IsColExists('t_int_project_info','c_investduration') then
	execute immediate 'alter table t_int_project_info  add c_investduration  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','c_securitymeasures') then
	execute immediate 'alter table t_int_project_info  add c_securitymeasures  VARCHAR2(3000)';
end if;
if not fc_IsColExists('t_int_project_info','d_reserveprice') then
	execute immediate 'alter table t_int_project_info  add d_reserveprice  NUMBER(16,2)';
end if;
if not fc_IsColExists('t_int_project_info','c_initcashmultiple') then
	execute immediate 'alter table t_int_project_info  add c_initcashmultiple  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','c_agencyno') then
	execute immediate 'alter table t_int_project_info  add c_agencyno  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','l_sfunwamount') then
	execute immediate 'alter table t_int_project_info  add l_sfunwamount  NUMBER(16,4)';
end if;
if not fc_IsColExists('t_int_project_info','c_paidincapital') then
	execute immediate 'alter table t_int_project_info  add c_paidincapital  VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','c_extfield4') then
	execute immediate 'alter table t_int_project_info  add c_extfield4  VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','C_DESTINECOST') then
	execute immediate 'alter table t_int_project_info  add C_DESTINECOST  VARCHAR2(20)';
end if;
if not fc_IsColExists('t_int_project_info','C_DESTINECOSTRATE') then
	execute immediate 'alter table t_int_project_info  add C_DESTINECOSTRATE  VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','C_FINANCEADVISERRATE') then
	execute immediate 'alter table t_int_project_info  add C_FINANCEADVISERRATE	VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','D_SERVICECHARGE') then
	execute immediate 'alter table t_int_project_info  add D_SERVICECHARGE	NUMBER(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','F_PRESERVICEFEE') then
	execute immediate 'alter table t_int_project_info  add F_PRESERVICEFEE	NUMBER(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','F_RESTRUCTUREAMOUNT') then
	execute immediate 'alter table t_int_project_info  add F_RESTRUCTUREAMOUNT	NUMBER(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','C_RESTRUCTURELIMIT') then
	execute immediate 'alter table t_int_project_info  add C_RESTRUCTURELIMIT	VARCHAR2(10)';
end if;
if not fc_IsColExists('t_int_project_info','C_RESTRUCTURERATE') then
	execute immediate 'alter table t_int_project_info  add C_RESTRUCTURERATE	VARCHAR2(10)';
end if;
if not fc_IsColExists('t_int_project_info','C_RESTRUCTUREMETHOD') then
	execute immediate 'alter table t_int_project_info  add C_RESTRUCTUREMETHOD	VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_commitmentfeeincome') then
	execute immediate 'alter table t_int_project_info  add c_commitmentfeeincome	VARCHAR2(50)';
end if;
if not fc_IsColExists('t_int_project_info','f_preriredmoney') then
	execute immediate 'alter table t_int_project_info  add f_preriredmoney	 number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','c_bidasset') then
	execute immediate 'alter table t_int_project_info  add c_bidasset	 varchar2(2000)';
end if;
if not fc_IsColExists('t_int_project_info','f_appraisevalue') then
	execute immediate 'alter table t_int_project_info  add f_appraisevalue	 number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','f_firstlistingprice') then
	execute immediate 'alter table t_int_project_info  add f_firstlistingprice	 number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','d_contractsigndate') then
	execute immediate 'alter table t_int_project_info  add d_contractsigndate	 DATE';
end if;
if not fc_IsColExists('t_int_project_info','f_dealprice') then
	execute immediate 'alter table t_int_project_info  add f_dealprice	 number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','c_contractperform') then
	execute immediate 'alter table t_int_project_info  add c_contractperform	 VARCHAR2(4000)';
end if;
if not fc_IsColExists('t_int_project_info','c_tradevouchercode') then
	execute immediate 'alter table t_int_project_info  add c_tradevouchercode             VARCHAR2(255)';
end if;
if not fc_IsColExists('t_int_project_info','d_tradevoucherdate') then
	execute immediate 'alter table t_int_project_info  add d_tradevoucherdate  date';
end if;
if not fc_IsColExists('t_int_project_info','d_signindate') then
	execute immediate 'alter table t_int_project_info  add d_signindate  date';
end if;
if not fc_IsColExists('t_int_project_info','f_defaultinterest') then
	execute immediate 'alter table t_int_project_info  add f_defaultinterest  number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','f_othermoney') then
	execute immediate 'alter table t_int_project_info  add f_othermoney  number(19,6)';
end if;
if not fc_IsColExists('t_int_project_info','C_PROXYTYPE') then
	execute immediate 'alter table t_int_project_info  add C_PROXYTYPE  varchar2(1)';
end if;
if not fc_IsColExists('t_int_project_info','C_MONEYTYPE') then
	execute immediate 'alter table t_int_project_info  add C_MONEYTYPE  varchar2(3)';
end if;
if not fc_IsColExists('t_int_project_info','c_tenderingmanner') then
	execute immediate 'alter table t_int_project_info  add c_tenderingmanner  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_classification') then
	execute immediate 'alter table t_int_project_info  add c_classification  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_usesealtype') then
	execute immediate 'alter table t_int_project_info  add c_usesealtype  varchar2(50)';
end if;
if not fc_IsColExists('t_int_project_info','c_isbackend') then
	execute immediate 'alter table t_int_project_info  add c_isbackend  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_entrusttype') then
	execute immediate 'alter table t_int_project_info  add c_entrusttype  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_markettype') then
	execute immediate 'alter table t_int_project_info  add c_markettype  varchar2(50)';
end if;
if not fc_IsColExists('t_int_project_info','c_publictranstype') then
	execute immediate 'alter table t_int_project_info  add c_publictranstype  varchar2(2)';
end if;

if not fc_IsColExists('t_int_project_info','c_istrans') then
	execute immediate 'alter table t_int_project_info  add c_istrans  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_listingaddr') then
	execute immediate 'alter table t_int_project_info  add c_listingaddr  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_tradepaytype') then
	execute immediate 'alter table t_int_project_info  add c_tradepaytype  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_settlementway') then
	execute immediate 'alter table t_int_project_info  add c_settlementway  varchar2(2)';
end if;

if not fc_IsColExists('t_int_project_info','c_assetssortgrade') then
	execute immediate 'alter table t_int_project_info  add c_assetssortgrade  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_isearlyend') then
	execute immediate 'alter table t_int_project_info  add c_isearlyend  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','c_existleveragemultiple') then
	execute immediate 'alter table t_int_project_info  add c_existleveragemultiple  varchar2(2)';
end if;
if not fc_IsColExists('t_int_project_info','C_PROJECTTEAMMEMBERS') then
	execute immediate 'alter table t_int_project_info  add C_PROJECTTEAMMEMBERS  varchar2(255)';
end if;
if not fc_IsColExists('t_int_project_info','c_projectleader') then
	execute immediate 'alter table t_int_project_info  add c_projectleader  varchar2(50)';
end if;
--20180417kagnxin(导入功能项目字段补充)--end--
--20180419kangxin(投后规则设置修改提醒对象字段可为空)--start--
if fc_IsColExists('tafter_investment_notice_rule','C_NOTICETO') then
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_notice_rule'') and column_name = upper(''C_NOTICETO'') and nullable = ''N''') then
		execute immediate 'alter table tafter_investment_notice_rule modify  C_NOTICETO NULL';
	end if;	
end if;
--20180419kangxin(投后规则设置修改提醒对象字段可为空)--end--

--20180420chenhy18048(到账确认明细表添加剩余户成本字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_Current_LOAN_AMOUNT') then
	execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_Current_LOAN_AMOUNT NUMBER(19,2)';
end if;
--20180420chenhy18048(到账确认明细表添加剩余户成本字段)--end--

IF NOT FC_ISTABLEEXISTS('TASSET_TIME_WARN_RULE') THEN
  EXECUTE IMMEDIATE 'CREATE TABLE TASSET_TIME_WARN_RULE
(
  L_ID					NUMBER(8),
  C_RULETYPE		    VARCHAR2(2) NOT NULL,
  C_NOTICETOTYPE		VARCHAR2(2),
  C_NOTICETO			VARCHAR2(600),
  C_BASEDATETYPE		VARCHAR2(2),
  L_NOTICEDURATION		NUMBER(5),
  C_NOTICEDURATIONUNIT	VARCHAR2(2),
  C_MEMO				VARCHAR2(1000),
  C_STATUS				VARCHAR2(2) NOT NULL
)';
END IF;

IF FC_ISTABLEEXISTS('TASSET_TIME_WARN_RULE') AND NOT FC_CONSTRAINTS_EXISTS('TASSET_TIME_WARN_RULE','PK_TASSET_TIME_WARN_RULE','P','0') THEN
EXECUTE IMMEDIATE '
  ALTER TABLE TASSET_TIME_WARN_RULE
  ADD CONSTRAINT PK_TASSET_TIME_WARN_RULE PRIMARY KEY (L_ID)
  USING INDEX';
END IF;

IF NOT FC_ISSEQEXISTS('SEQ_TASSET_TIME_WARN_RULE_ID') THEN
    EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_TASSET_TIME_WARN_RULE_ID
      MINVALUE 1000
      MAXVALUE 999999
      START WITH 10001
      INCREMENT BY 1
      CACHE 20';
END IF;

--投后待办提醒表
if not fc_IsTableExists('TASSET_TIME_WARN_NOTICE') then
    execute immediate 'create table TASSET_TIME_WARN_NOTICE (
		L_ID          	 NUMBER(10) not null,
		L_RULEID           NUMBER(10) not null,
		C_CREDITORCONTRACTCODE	VARCHAR2(32),
		C_GUARANTEECONTRACTCODE	VARCHAR2(48),
		C_LAWID				VARCHAR2(48),
		C_SEIZEDID			VARCHAR2(48),
		c_noticeto         VARCHAR2(32) not null,
		D_NOTICEDATE       DATE,
		L_NOTICEDURATION	NUMBER(5) not null,
		c_status           VARCHAR2(2) not null
	)';
END IF;
IF FC_ISTABLEEXISTS('TASSET_TIME_WARN_NOTICE') AND NOT FC_CONSTRAINTS_EXISTS('TASSET_TIME_WARN_NOTICE','PK_TIME_WARN_NOTICE','P','0') THEN
	execute immediate ' 
	alter table TASSET_TIME_WARN_NOTICE
    	add constraint PK_TIME_WARN_NOTICE primary key (L_ID)';
end if;

if not fc_IsSeqExists('SEQ_TIME_WARN_NOTICE_ID') then
    execute immediate 'create sequence SEQ_TIME_WARN_NOTICE_ID
		minvalue 1
		maxvalue 999999
		start with 1
		increment by 1
		cache 20';
end if;


--20180423zhuocc21770(处置结果信息表新增处置结果描述)--start--
if not fc_IsColExists('thandle_result_info','c_rsremark') then
  execute immediate 'alter table thandle_result_info add c_rsremark varchar2(3000)';
--20180423zhuocc21770(处置结果信息表新增处置结果描述--end--
end if;

--[M201804231717]20180423shiph22854将TINVEST_CONTRACT表的c_profitlevel字段长度从VARCHAR2(2)扩展到 VARCHAR2(32)--start--
if fc_IsColExists('TINVEST_CONTRACT','c_profitlevel') then
    execute immediate 'alter table TINVEST_CONTRACT modify c_profitlevel VARCHAR2(32)';
end if;
--[M201804231717]20180423shiph22854将TINVEST_CONTRACT表的c_profitlevel字段长度从VARCHAR2(2)扩展到 VARCHAR2(32)--end--

--[M201804250550]20180425yuanlh(创建项目信息扩展表AMC)--start--
if not fc_IsTableExists('TPROJECT_INFO_AMC') then
  execute immediate 'create table TPROJECT_INFO_AMC (C_PROJECTCODE VARCHAR2(32))';
  execute immediate 'alter table TPROJECT_INFO_AMC add constraint PK_TPROJECT_INFO_AMC primary key (C_PROJECTCODE)';
end if;
--[M201804250550]20180425yuanlh(创建项目信息扩展表AMC)--end--


--20180423wansy24151(新增科目分类表TSUBJECT_TYPE) --start--
if not fc_IsTableExists('TSUBJECT_TYPE') then
execute immediate '
-- Create table
create table TSUBJECT_TYPE
(
	l_id 		NUMBER(10) 		not null,
	c_name		VARCHAR2(50),
	l_parentid	NUMBER(10),
	l_order		NUMBER(10),
	c_creater	VARCHAR2(32),
	d_create	DATE
)';
end if;

--20180423wansy24151(新建科目分类表的主键)
if fc_IsTableExists('TSUBJECT_TYPE') and not fc_Constraints_Exists('TSUBJECT_TYPE', 'PK_TSUBJECT_TYPE', 'P', '0') then
execute immediate '
	alter table TSUBJECT_TYPE
	add constraint PK_TSUBJECT_TYPE primary key (l_id)
	using index ';
end if;

--20180423wansy24151(新建序列，用于科目分类表的主键)
if not fc_IsSeqExists('SEQ_SUBJECT_TYPE_ID') then
execute immediate '
	create sequence SEQ_SUBJECT_TYPE_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180423wansy24151(新增科目分类表TSUBJECT_TYPE) --end--

--20180423wansy24151(新增科目信息表TSUBJECT_INFO) --start--
if not fc_IsTableExists('TSUBJECT_INFO') then
execute immediate '
-- Create table
create table TSUBJECT_INFO
(
	l_id 			 NUMBER(10) 	not null,
	c_subjectno		 VARCHAR2(32)	not null,
	c_subjectname	 VARCHAR2(50)	not null,
	c_mnemonic_code  VARCHAR2(32),
	c_subjectfull	 VARCHAR2(50),
	l_direction		 VARCHAR2(1)    not null,
	l_type           NUMBER(10)		not null,	
	c_currency		 VARCHAR2(10)	not null,
	c_isenable		 VARCHAR2(1)		not null,
	c_remark		 VARCHAR2(200),
	c_creater		 VARCHAR2(32),
	d_create		 DATE
)';
end if;

--20180423wansy24151(新建科目信息表的主键)
if fc_IsTableExists('TSUBJECT_INFO') and not fc_Constraints_Exists('TSUBJECT_INFO', 'PK_TSUBJECT_INFO', 'P', '0') then
execute immediate '
	alter table TSUBJECT_INFO
	add constraint PK_TSUBJECT_INFO primary key (l_id)
	using index ';
end if;

--20180423wansy24151(新建序列，用于科目信息表的主键)
if not fc_IsSeqExists('SEQ_SUBJECT_INFO_ID') then
execute immediate '
	create sequence SEQ_SUBJECT_INFO_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180423wansy24151(新增科目信息表TSUBJECT_INFO) --end--

--20180423wansy24151(新增科目信息表 导入excel中间表 T_INT_SUBJECT_INFO) --start--
if not fc_IsTableExists('T_INT_SUBJECT_INFO') then
execute immediate '
-- Create table
create table T_INT_SUBJECT_INFO
(	
	c_rownum		 VARCHAR2(32),
	c_subjectno		 VARCHAR2(32),
	c_subjectname	 VARCHAR2(50),
	c_mnemonic_code  VARCHAR2(32),
	c_subjectfull	 VARCHAR2(50),
	l_direction		 VARCHAR2(1),
	l_type           VARCHAR2(10),	
	c_currency		 VARCHAR2(10),
	c_isenable		 VARCHAR2(2),
	c_remark		 VARCHAR2(200),
	c_creater		 VARCHAR2(32),
	d_create		 DATE,
	c_intstatus     VARCHAR2(2),
    c_errmsg         VARCHAR2(3000),
    c_batch_no       NUMBER(10),
    c_source        VARCHAR2(20)
)';
end if;
--20180423wansy24151(新增科目信息表 导入excel中间表 T_INT_SUBJECT_INFO) --end--

--20180426wcy(项目组成员表新增序号字段) start--
if not fc_IsColExists('tproject_team_members','c_index') then
  execute immediate 'alter table tproject_team_members add c_index varchar2(3)';
end if;
--20180426wcy(项目组成员表新增序号字段) end--

--20180426chenhy18048(业务支出表增加收款方基金干系人标识字段) start--
if not fc_IsColExists('trepay_info','c_customerfund') then
  execute immediate 'alter table trepay_info add c_customerfund varchar2(1)';
end if;
--20180426chenhy18048(业务支出表增加收款方基金干系人标识字段) end--
--20180427panjq24368(拍卖管理债券合同编号字段可为空)--start--
if fc_IsColExists('TRECORD_AUCTION','C_CREDITORCONTRACTCODE') then
   if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TRECORD_AUCTION'') and column_name = upper(''C_CREDITORCONTRACTCODE'') and nullable = ''N''') then
    execute immediate 'alter table TRECORD_AUCTION MODIFY    C_CREDITORCONTRACTCODE NULL';
    end if;
end if;
--20180427panjq24368(拍卖管理债券合同编号字段可为空)--end--
--20180427liuan23902(批量导入到账认领添加的中间表)--start--
if not fc_IsTableExists('T_INT_FINANCIAL_ARRIVAL') then
	execute immediate '
	create table T_INT_FINANCIAL_ARRIVAL
	(
	  d_bank_date     DATE,
	  c_payer_company VARCHAR2(150),
	  c_payer_bank    VARCHAR2(150),
	  c_payer_account VARCHAR2(45),
	  c_payee_company VARCHAR2(150),
	  c_payee_bank    VARCHAR2(150),
	  c_payee_account VARCHAR2(45),
	  f_pay_amount    NUMBER(19,2),
	  c_remark        VARCHAR2(750),
	  c_intstatus     VARCHAR2(10),
	  c_errmsg        VARCHAR2(4000),
	  c_batch_no      VARCHAR2(100),
	  c_source        VARCHAR2(100),
	  c_payee_company_code VARCHAR2(35),
	  c_payee_account_id   VARCHAR2(35)
	)';
end if;
--20180427liuan23902(批量导入到账认领添加的中间表)--end--
--20180427zhangchao（业务支出表新增我方出资金额字段）------start---------
if not fc_IsColExists('trepay_info','f_ouramount') then
	execute immediate 'alter table trepay_info  add f_ouramount NUMBER(19,2)';
end if;
--20180427zhangchao（业务支出表新增我方出资金额字段）------end---------

--[201804040396]20180427shiph22854(付款信息表新增字段-科目编号)--start--
if not fc_IsColExists('TREPAY_INFO','C_SUBJECTNO') then 
  execute immediate 'alter table TREPAY_INFO add C_SUBJECTNO VARCHAR(32)';
end if;
--[201804040396]20180427shiph22854(付款信息表新增字段-科目编号)--end--
--20180502panjq24368(处置项目增加实物资产描述要素)--start--
if  not fc_IsColExists('TPROJECT_INFO_AMC','C_REALASSETREMARK') then 
  execute immediate 'alter table TPROJECT_INFO_AMC add C_REALASSETREMARK VARCHAR2(4000)';
end if;
--20180502panjq24368(处置项目增加实物资产描述要素)--end--

--20180502chenhy18048(到账确认信息表增加款项摘要字段) start--
if not fc_IsColExists('TREPAY_CONFIRM','C_SUMMARYMONEY') then
  execute immediate 'alter table TREPAY_CONFIRM add C_SUMMARYMONEY VARCHAR2(500)';
end if;
--20180502chenhy18048(到账确认信息表增加款项摘要字段) end--
	if not fc_IsTableExists('TAMC_TEMP_LOANCOSTINFO') then
		execute immediate '
		create table TAMC_TEMP_LOANCOSTINFO
		(
		c_loanaccountcode         VARCHAR2(32),
		f_blance          number(19,6),
		d_enddate         DATE,
		f_days            number,
		f_rate            number(19,6),
		f_cost            number(19,6)
		)
		tablespace TCMP
		pctfree 10
		initrans 1
		maxtrans 255
		storage
		(
			initial 64K
			next 1M
			minextents 1
			maxextents unlimited
		)';
	end if;
--20180504zhuocc21770(保全信息表新增其他权利设定情况字段) start--	
	if not fc_IsColExists('TSEIZED_INFO','c_otherrightsetting') then
	execute immediate 'alter table tseized_info add c_otherrightsetting varchar2(4000)';
end if;
--20180504zhuocc21770(保全信息表新增其他权利设定情况字段) end--

--lizs20455 添加回收价值总计--
if  not fc_IsColExists('TPROJECT_INFO_AMC','f_recoveryvalue') then 
  execute immediate 'alter table TPROJECT_INFO_AMC add f_recoveryvalue number(24,8)';
end if;
--lizs20455 添加回收价值总计--
--lizs20455 结息--
	if not fc_IsTableExists('TINTEREST_SETTLEMENT') then
		execute immediate '
		create table TINTEREST_SETTLEMENT
		(
		L_SERIALNO        number(19) not null,
		c_creditorcontractcode         varchar2(32) not null,
		D_EXPIRYDATE         DATE,
		D_BEGINDATE          DATE,
		D_ENDDATE            DATE,
		L_DAYS               NUMBER(5),
		F_PRINCIPAL          number(19,6),
		F_RETURNPRINCIPAL    number(19,6),	
		F_PRINCIPALBALANCE    number(19,6),
		F_INTEREST    number(19,6),
		F_CERRENTINTEREST    number(19,6),
		F_RETURNINTEREST    number(19,6),
		F_INTERESTBALANCE    number(19,6),
		F_DEFINTEREST    number(19,6),
		F_CERRENTDEFINTEREST    number(19,6),
		F_RETURNDEFINTEREST    number(19,6),
		F_DEFINTERESTBALANCE    number(19,6),
		F_COMINTEREST    number(19,6),
		F_CERRENTCOMINTEREST    number(19,6),
		F_RETURNCOMINTEREST    number(19,6),
		F_COMINTERESTBALANCE    number(19,6),
		F_RETURNTOTALMONEY		number(19,6),
		F_TOTALMONEY			number(19,6)
		)
		tablespace TCMP
		pctfree 10
		initrans 1
		maxtrans 255
		storage
		(
			initial 64K
			next 1M
			minextents 1
			maxextents unlimited
		)';
	end if;
		if not fc_IsTableExists('TINTEREST_SETTLEMENT_Temp') then
		execute immediate '
		create table TINTEREST_SETTLEMENT_Temp
		(
		c_creditorcontractcode         varchar2(32) not null,
		D_EXPIRYDATE         DATE,
		D_BEGINDATE          DATE,
		D_ENDDATE            DATE,
		L_DAYS               NUMBER(5),
		F_PRINCIPAL          number(19,6),
		F_RETURNPRINCIPAL    number(19,6),	
		F_PRINCIPALBALANCE    number(19,6),
		F_INTEREST    number(19,6),
		F_CERRENTINTEREST    number(19,6),
		F_RETURNINTEREST    number(19,6),
		F_INTERESTBALANCE    number(19,6),
		F_DEFINTEREST    number(19,6),
		F_CERRENTDEFINTEREST    number(19,6),
		F_RETURNDEFINTEREST    number(19,6),
		F_DEFINTERESTBALANCE    number(19,6),
		F_COMINTEREST    number(19,6),
		F_CERRENTCOMINTEREST    number(19,6),
		F_RETURNCOMINTEREST    number(19,6),
		F_COMINTERESTBALANCE    number(19,6),
		F_RETURNTOTALMONEY		number(19,6),
		F_TOTALMONEY			number(19,6)
		)
		tablespace TCMP
		pctfree 10
		initrans 1
		maxtrans 255
		storage
		(
			initial 64K
			next 1M
			minextents 1
			maxextents unlimited
		)';
	end if;
if not fc_IsSeqExists('SEQ_TINTEREST_SETTLEMENT_ID') then
execute immediate '
	create sequence SEQ_TINTEREST_SETTLEMENT_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;

--chenhy18048添加资金来源描述start--
if  not fc_IsColExists('TPROJECT_INFO_AMC','C_CAPITALSOURCE') then 
  execute immediate 'alter table TPROJECT_INFO_AMC add C_CAPITALSOURCE VARCHAR2(4000)';
end if;
--chenhy18048添加资金来源描述end--

if  not fc_IsColExists('TLOANACCOUNT_TINMESTOP','C_GUARANTEECONTRACTCODES') then 
  execute immediate 'alter table TLOANACCOUNT_TINMESTOP add C_GUARANTEECONTRACTCODES varchar2(300)';
end if;

if  not fc_IsColExists('TLOANACCOUNT_TINMESTOP','C_ISCONTAINCREDITOR') then 
  execute immediate 'alter table TLOANACCOUNT_TINMESTOP add C_ISCONTAINCREDITOR varchar2(2)';
end if;

if not fc_IsTableExists('TVOUCHER_TEMP') then
execute immediate '
-- Create table
create table TVOUCHER_TEMP
(
	l_id 		NUMBER(10) 		not null,
	c_type		VARCHAR2(2)     not null,
	c_groupid	VARCHAR2(1)		not null,
	c_remark	VARCHAR2(150)	not null,
	c_enable	VARCHAR2(1)		not null,
	c_creater	VARCHAR2(32),
	d_create	DATE
)';
end if;

--20180508wansy24151(凭证模板表的主键)
if fc_IsTableExists('TVOUCHER_TEMP') and not fc_Constraints_Exists('TVOUCHER_TEMP', 'PK_TVOUCHER_TEMP', 'P', '0') then
execute immediate '
	alter table TVOUCHER_TEMP
	add constraint PK_TVOUCHER_TEMP primary key (l_id)
	using index ';
end if;

--20180508wansy24151(新建序列，用于凭证模板表的主键)
if not fc_IsSeqExists('SEQ_VOUCHER_TEMP_ID') then
execute immediate '
	create sequence SEQ_VOUCHER_TEMP_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180508wansy24151(凭证模板表TVOUCHER_TEMP) -- end --


--20180508wansy24151(新增模板场景配置表 TVOUCHER_SCENE) --start--
if not fc_IsTableExists('TVOUCHER_SCENE') then
execute immediate '
-- Create table
create table TVOUCHER_SCENE
(
	l_id 			 NUMBER(10) 	not null,
	l_tempid 		 NUMBER(10) 	not null,
	c_remark		 VARCHAR2(500)	not null,
	l_order			 NUMBER(10),
	c_creater		 VARCHAR2(32),
	d_create		 DATE
)';
end if;

--20180508wansy24151(新建模板场景配置表的主键)
if fc_IsTableExists('TVOUCHER_SCENE') and not fc_Constraints_Exists('TVOUCHER_SCENE', 'PK_TVOUCHER_SCENE', 'P', '0') then
execute immediate '
	alter table TVOUCHER_SCENE
	add constraint PK_TVOUCHER_SCENE primary key (l_id)
	using index ';
end if;

--20180508wansy24151(新建序列，用于模板场景配置的主键)
if not fc_IsSeqExists('SEQ_VOUCHER_SCENE_ID') then
execute immediate '
	create sequence SEQ_VOUCHER_SCENE_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180508wansy24151(新增模板场景配置表 TVOUCHER_SCENE) --end--


--20180508wansy24151(新增凭证模板场景配置详情 TVOUCHER_SCENE_DETAIL) --start--
if not fc_IsTableExists('TVOUCHER_SCENE_DETAIL') then
execute immediate '
-- Create table
create table TVOUCHER_SCENE_DETAIL
(
	l_id 			 NUMBER(10) 	not null,
	l_sceneid		 NUMBER(10)		not null,
	l_order			 NUMBER(10),
	c_condition		 VARCHAR2(10)	not null,
	c_operation		 VARCHAR2(3)	not null,
	c_value			 VARCHAR2(10)	not null,
	c_relation		 VARCHAR2(2)	not null,
	c_creater		 VARCHAR2(32),
	d_create		 DATE
)';
end if;

--20180508wansy24151(新建模板场景配置表详情的主键)
if fc_IsTableExists('TVOUCHER_SCENE_DETAIL') and not fc_Constraints_Exists('TVOUCHER_SCENE_DETAIL', 'PK_TVOUCHER_SCENE_DETAIL', 'P', '0') then
execute immediate '
	alter table TVOUCHER_SCENE_DETAIL
	add constraint PK_TVOUCHER_SCENE_DETAIL primary key (l_id)
	using index ';
end if;

--20180508wansy24151(新建序列，用于模板场景配置详情的主键)
if not fc_IsSeqExists('SEQ_VOUCHER_SCENE_DETAIL_ID') then
execute immediate '
	create sequence SEQ_VOUCHER_SCENE_DETAIL_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180508wansy24151(新增凭证模板场景配置详情 TVOUCHER_SCENE_DETAIL) --end--


--20180508wansy24151(新增凭证模板场会计分录 TVOUCHER_ENTRY) --start--
if not fc_IsTableExists('TVOUCHER_ENTRY') then
execute immediate '
-- Create table
create table TVOUCHER_ENTRY
(
	l_id 			 NUMBER(10) 	not null,
	l_sceneid		 NUMBER(10)		not null,
	l_order			 NUMBER(10),
	c_subjectno	 	 VARCHAR2(32)	not null,
	c_value			 VARCHAR2(10)	not null,
	c_dimension		 VARCHAR2(10),
	c_type			 VARCHAR2(2),
	c_remark		 VARCHAR2(2),
	c_creater		 VARCHAR2(32),
	d_create		 DATE
)';
end if;

--20180508wansy24151(新建模板场景配置表详情的主键)
if fc_IsTableExists('TVOUCHER_ENTRY') and not fc_Constraints_Exists('TVOUCHER_ENTRY', 'PK_TVOUCHER_ENTRY', 'P', '0') then
execute immediate '
	alter table TVOUCHER_ENTRY
	add constraint PK_TVOUCHER_ENTRY primary key (l_id)
	using index ';
end if;

--20180508wansy24151(新建序列，用于模板场景配置详情的主键)
if not fc_IsSeqExists('SEQ_TVOUCHER_ENTRY_ID') then
execute immediate '
	create sequence SEQ_TVOUCHER_ENTRY_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180508wansy24151(新增凭证模板场会计分录 TVOUCHER_ENTRY) --end--

--20180508wansy24151(凭证场景值 配置表)  --start--
if not fc_IsTableExists('TVOUCHER_SCENE_CONFIG') then
execute immediate '
-- Create table
create table TVOUCHER_SCENE_CONFIG
(
	l_id 		NUMBER(10) 		not null,
	c_name		VARCHAR2(50)    not null,
	l_pid	    NUMBER(10)		not null,
	c_code		VARCHAR2(20)	not null,
	c_type		VARCHAR2(10),
	l_order		NUMBER(10)
)';
end if;

--20180508wansy24151(凭证场景值 配置表)
if fc_IsTableExists('TVOUCHER_SCENE_CONFIG') and not fc_Constraints_Exists('TVOUCHER_SCENE_CONFIG', 'PK_TVOUCHER_SCENE_CONFIG', 'P', '0') then
execute immediate '
	alter table TVOUCHER_SCENE_CONFIG
	add constraint PK_TVOUCHER_SCENE_CONFIG primary key (l_id)
	using index ';
end if;
--20180508wansy24151(凭证场景值 配置表)  --end--
--20180509panjq24368(新增考核指标相关的表、主键及序列)--start--
--考核指标表
if not fc_IsTableExists('TMEASURE_INDICATOR') then
    execute immediate '
		create table TMEASURE_INDICATOR
			(
			   L_ID                 number               not null,
			   C_MEASURETYPE        VARCHAR2(2)          not null,
			   C_ORGID              VARCHAR2(48)         not null,
			   C_YEAR               VARCHAR2(8),
			   C_BUSITYPE           VARCHAR2(2),
			   F_BALANCESCALE       NUMBER(19,6),
			   C_CREATEUSER         VARCHAR2(48),
			   D_CREATETIME         DATE,
			   C_LASTUPDATEUSER     VARCHAR2(48),
			   D_LASTUPDATETIME     DATE,
			   C_MEMO               VARCHAR2(4000)
			)';
end if;

--考核指标表的主键
if fc_IsTableExists('TMEASURE_INDICATOR') and not fc_Constraints_Exists('TMEASURE_INDICATOR','PK_TMEASURE_INDICATOR','P','0') then
    execute immediate '
	  alter table TMEASURE_INDICATOR
		  add constraint PK_TMEASURE_INDICATOR primary key (L_ID)
		  using index ';
end if;

--考核指标表主键对应序列
if not fc_IsSeqExists('SEQ_TMEASURE_INDICATOR_ID') then
	execute immediate 'create sequence SEQ_TMEASURE_INDICATOR_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;


--20180509panjq24368(新增考核指标相关的表、主键及序列)--end--
--20180510wcy(合同表新增字段)---start----
if not fc_IsColExists('tinvest_contract','c_assetmanageplanname') then
	execute immediate 'alter table tinvest_contract add c_assetmanageplanname varchar2(100)';
end if;

if not fc_IsColExists('tinvest_contract','d_assetmanagestartdate') then
	execute immediate 'alter table tinvest_contract add d_assetmanagestartdate DATE';
end if;

if not fc_IsColExists('tinvest_contract','d_assetmanageenddate') then
	execute immediate 'alter table tinvest_contract add d_assetmanageenddate DATE';
end if;

if not fc_IsColExists('tinvest_contract','f_managerplantransferprice') then
	execute immediate 'alter table tinvest_contract add f_managerplantransferprice NUMBER(19,6)';
end if;

if not fc_IsColExists('tinvest_contract','f_priorityprice') then
	execute immediate 'alter table tinvest_contract add f_priorityprice NUMBER(19,6)';
end if;

if not fc_IsColExists('tinvest_contract','c_prioritycompany') then
	execute immediate 'alter table tinvest_contract add c_prioritycompany varchar2(100)';
end if;

if not fc_IsColExists('tinvest_contract','c_debitside') then
	execute immediate 'alter table tinvest_contract add c_debitside varchar2(32)';
end if;
--20180510wcy(合同表新增字段)---end----

if not fc_IsColExists('tasset_loanaccount_info','C_ASSETSELLER') then
	execute immediate 'alter table tasset_loanaccount_info add C_ASSETSELLER VARCHAR2(300)';
end if;


-- M201805100893  创建预约信息表  
if not fc_IsTableExists('TNOTICE_APPT') then
execute immediate 'create table TNOTICE_APPT
(
  id       VARCHAR2(32) not null,
  nid      VARCHAR2(32),
  name     VARCHAR2(32),
  phone    VARCHAR2(32),
  address  VARCHAR2(128),
  email    VARCHAR2(32),
  apptdate DATE,
  content  VARCHAR2(1024),
  remark   VARCHAR2(1024)
)';
execute immediate ' 
  alter table TNOTICE_APPT
  add constraint PK_TNOTICE_APPT_ID primary key (id)';
end if;


-- M201805100893  创建公告借款人信息表  
if not fc_IsTableExists('TNOTICE_CUSTOMER') then
execute immediate 'create table TNOTICE_CUSTOMER
(
  id            VARCHAR2(32) not null,
  nid           VARCHAR2(32) not null,
  projectname   VARCHAR2(64),
  customername  VARCHAR2(64),
  province      VARCHAR2(32),
  city          VARCHAR2(32),
  litigation    VARCHAR2(32),
  rightsmoney   VARCHAR2(32),
  choice        VARCHAR2(2),
  guaranteetype VARCHAR2(64),
  guarantor     VARCHAR2(64),
  pawntype      VARCHAR2(64),
  pawninfo      VARCHAR2(128)
)';
execute immediate ' 
  alter table TNOTICE_CUSTOMER
  add constraint PK_TNOTICE_CUSTOMER_ID primary key (id)';
end if;


-- M201805100893  创建营销公告信息表  
if not fc_IsTableExists('TNOTICE_INFO') then
execute immediate 'create table TNOTICE_INFO
(
  id                 VARCHAR2(32) not null,
  title              VARCHAR2(64),
  type               VARCHAR2(2),
  content            VARCHAR2(2048),
  publish            DATE,
  validity           DATE,
  contacts           VARCHAR2(32),
  phone              VARCHAR2(32),
  email              VARCHAR2(32),
  jzdate             DATE,
  totalmoney         VARCHAR2(32),
  projectname        VARCHAR2(64),
  auctype            VARCHAR2(2),
  aucdate            DATE,
  aucplace           VARCHAR2(128),
  auccomp            VARCHAR2(64),
  aucnet             VARCHAR2(128),
  choice             VARCHAR2(2),
  attachfiles        VARCHAR2(256),
  process_instanceid VARCHAR2(100),
  status             VARCHAR2(2),
  audit_date         DATE
)';
execute immediate ' 
  alter table TNOTICE_INFO
  add constraint PK_TNOTICE_INFO_ID primary key (id)';
end if;

if not fc_IsColExists('TREPAY_INFO','C_ACQUISITIONTYPE') then
	execute immediate 'alter table TREPAY_INFO add C_ACQUISITIONTYPE VARCHAR2(2)';
end if;

--20180510zhuocc(TBANKRUPTCY_INFO、TBANKRUPTCY_MEETING_INFO新增字段)--start--
--破产阶段
if not fc_IsColExists('TBANKRUPTCY_INFO','c_bankruptphase') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add c_bankruptphase varchar2(10)';
end if;
--破产人
if not fc_IsColExists('TBANKRUPTCY_INFO','c_bankrupter') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add c_bankrupter varchar2(1000)';
end if;
--申报优先债权本金
if not fc_IsColExists('TBANKRUPTCY_INFO','f_declarepriorprincipal') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_declarepriorprincipal number(19,6)';
end if;
--确认优先债权本金
if not fc_IsColExists('TBANKRUPTCY_INFO','f_claimpriorprincipal') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_claimpriorprincipal number(19,6)';
end if;
--申报优先债权利息
if not fc_IsColExists('TBANKRUPTCY_INFO','f_declarepriorinterest') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_declarepriorinterest number(19,6)';
end if;
--确认优先债权利息
if not fc_IsColExists('TBANKRUPTCY_INFO','f_claimpriorinterest') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_claimpriorinterest number(19,6)';
end if;
--申报普通债权本金
if not fc_IsColExists('TBANKRUPTCY_INFO','f_declarecommonprincipal') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_declarecommonprincipal number(19,6)';
end if;
--确认普通债权本金
if not fc_IsColExists('TBANKRUPTCY_INFO','f_claimcommonprincipal') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_claimcommonprincipal number(19,6)';
end if;
--申报普通债权利息
if not fc_IsColExists('TBANKRUPTCY_INFO','f_declarecommoninterest') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_declarecommoninterest number(19,6)';
end if;
--破产相关诉讼
if not fc_IsColExists('TBANKRUPTCY_INFO','c_relatelawsuit') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add c_relatelawsuit varchar2(1000)';
end if;
--确认普通债权利息
if not fc_IsColExists('TBANKRUPTCY_INFO','f_claimcommoninterest') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add f_claimcommoninterest number(19,6)';
end if;
--代理律所
if not fc_IsColExists('TBANKRUPTCY_INFO','c_agencyoffice') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add c_agencyoffice varchar2(500)';
end if;
--是否存在破产相关诉讼
if not fc_IsColExists('TBANKRUPTCY_INFO','c_isrelatelawsuit') then 
  execute immediate 'alter table TBANKRUPTCY_INFO  add c_isrelatelawsuit varchar2(2)';
end if;

--会议类别
if not fc_IsColExists('TBANKRUPTCY_MEETING_INFO','c_meetingtype') then 
  execute immediate 'alter table TBANKRUPTCY_MEETING_INFO  add c_meetingtype varchar2(10)';
end if;
--会议结果
if not fc_IsColExists('TBANKRUPTCY_MEETING_INFO','c_meetingresult') then 
  execute immediate 'alter table TBANKRUPTCY_MEETING_INFO  add c_meetingresult varchar2(1000)';
end if;
--20180510zhuocc(TBANKRUPTCY_INFO、TBANKRUPTCY_MEETING_INFO新增字段)---end---

--20180511taoxd(TASSET_APPRAISEMENT_AP新增字段)--start--
if not fc_IsColExists('TASSET_APPRAISEMENT_AP','c_projectcode') then 
  execute immediate 'alter table TASSET_APPRAISEMENT_AP  add c_projectcode varchar2(32)';
end if;
--20180511taoxd(TASSET_APPRAISEMENT_AP新增字段)---end---

----20180511wansy24151(新建凭证管理表 TAMC_VOUCHER_INFO)--  --start--
if not fc_IsTableExists('TAMC_VOUCHER_INFO') then
execute immediate '
-- Create table
create table TAMC_VOUCHER_INFO
(
	l_id  				NUMBER(10)		not null,
	l_fundcode			VARCHAR2(32)	not null,
	d_date				DATE			not null,
	c_vouchergroupid	VARCHAR2(32)	not null,
	l_vouchercode		VARCHAR2(32),
	c_state				VARCHAR2(1)		not null,
	c_failreason		VARCHAR2(500),
	l_year				VARCHAR2(32),
	l_period			VARCHAR2(32),
	c_creater			VARCHAR2(32),
	d_create			DATE,
	c_updater			VARCHAR(32),
	d_update			DATE
	
)';
end if;

----20180511wansy24151(新建凭证管理表 主键)
if fc_IsTableExists('TAMC_VOUCHER_INFO') and not fc_Constraints_Exists('TAMC_VOUCHER_INFO', 'PK_TAMC_VOUCHER_INFO', 'P', '0') then
execute immediate '
	alter table TAMC_VOUCHER_INFO
	add constraint PK_TAMC_VOUCHER_INFO primary key (l_id)
	using index ';
end if;

----20180511wansy24151(新建序列， 新建凭证管理表序列)
if not fc_IsSeqExists('SEQ_AMC_VOUCHER_INFO_ID') then
execute immediate '
	create sequence SEQ_AMC_VOUCHER_INFO_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
----20180511wansy24151(新建凭证管理表 TAMC_VOUCHER_INFO)--  --end--

----20180511wansy24151(新建凭证管理会计科目表， TAMC_VOUCHER_INFO_ENTRY)--  --start--
if not fc_IsTableExists('TAMC_VOUCHER_INFO_ENTRY') then
execute immediate '
-- Create table
create table TAMC_VOUCHER_INFO_ENTRY
(
	l_id 				NUMBER(10) 		not null,
	l_entryid			VARCHAR2(32),
	l_voucherid			NUMBER(10)		not null,
	c_explanation		VARCHAR2(500),
	l_accountid			VARCHAR2(32)	not null,
	l_detailid  		VARCHAR2(32)	not null,
	c_currency			VARCHAR2(10)	not null,
	d_create			DATE			not null,
	c_exchangeratetype	VARCHAR2(10) 	not null,
	l_debit 			NUMBER(19,2)	not null,
	l_amountfor 		NUMBER(19,2)	not null,
	l_credit			NUMBER(19,2)	not null
)';
end if;

----20180511wansy24151(新建凭证管理会计科目表 主键)
if fc_IsTableExists('TAMC_VOUCHER_INFO_ENTRY') and not fc_Constraints_Exists('TAMC_VOUCHER_INFO_ENTRY', 'PK_TAMC_VOUCHER_INFO_ENTRY', 'P', '0') then
execute immediate '
	alter table TAMC_VOUCHER_INFO_ENTRY
	add constraint PK_TAMC_VOUCHER_INFO_ENTRY primary key (l_id)
	using index ';
end if;

----20180511wansy24151(新建序列， 新建凭证管理表会计科目序列)
if not fc_IsSeqExists('SEQ_AMC_VOUCHER_INFO_ENTRY_ID') then
execute immediate '
	create sequence SEQ_AMC_VOUCHER_INFO_ENTRY_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
----20180511wansy24151(新建凭证管理会计科目表， TAMC_VOUCHER_INFO_ENTRY)--  --end--


--20180511panjq24368(文档借阅（用）审批表单 增加字段“借阅时间“)--start--
if  not fc_IsColExists('TDOC_TRANSFER_INFO','D_BORROWTIME') then 
  execute immediate 'alter table TDOC_TRANSFER_INFO add D_BORROWTIME DATE';
end if;
--20180511panjq24368(文档借阅（用）审批表单 增加字段“借阅时间“)--start--';
--20180511panjq24368(文档借阅（用）审批表单 增加字段“备注框”)--start--
if  not fc_IsColExists('TDOC_TRANSFER_INFO','C_MEMO') then 
  execute immediate 'alter table TDOC_TRANSFER_INFO add C_MEMO VARCHAR2(4000)';
end if;
--20180511panjq24368(文档借阅（用）审批表单 增加字段“备注框”)--end--

--[201712250680]20180514shiph22854(新增工作日志相关的表、主键及序列)--start--
--工作日志表
if not fc_IsTableExists('TDAILY_LOG') then
    execute immediate '
		create table TDAILY_LOG
			(
			  L_ID                  	NUMBER not null,
			  c_logtype             	VARCHAR2(2) not null,
			  c_operatoruserid        	VARCHAR2(48) not null,
			  d_workdate         		DATE not null,
			  c_projectcode         	VARCHAR2(32),
			  c_customer_relationcode   VARCHAR2(32),
			  c_rivaluser           	VARCHAR2(255),
			  c_rivalposition       	VARCHAR2(255),
			  c_rivalnumber         	VARCHAR2(100),
			  c_memo         			VARCHAR2(2000),
			  c_createuser         		VARCHAR2(48),
			  d_createtime          	DATE,
			  c_lastupdateuser      	VARCHAR2(48),
			  d_lastupdatetime      	DATE
			)';
end if;	  
--工作日志表的主键
if fc_IsTableExists('TDAILY_LOG') and not fc_Constraints_Exists('TDAILY_LOG','PK_TDAILY_LOG','P','0') then
    execute immediate '
	  alter table TDAILY_LOG
		  add constraint PK_TDAILY_LOG primary key (L_ID)
		  using index ';
end if;
--工作日志表主键对应序列
if not fc_IsSeqExists('SEQ_DAILY_LOG_ID') then
	execute immediate 'create sequence SEQ_DAILY_LOG_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--工作日志权限表
if not fc_IsTableExists('TDAILY_LOG_AUTH') then
    execute immediate '
		create table TDAILY_LOG_AUTH
			(
			  L_ID                  NUMBER not null,
			  c_type             	VARCHAR2(2) not null,
			  c_objecttype        	VARCHAR2(2) not null,
			  c_objectcode         	VARCHAR2(48) not null
			)';
end if;  
--工作日志权限表的主键
if fc_IsTableExists('TDAILY_LOG_AUTH') and not fc_Constraints_Exists('TDAILY_LOG_AUTH','PK_TDAILY_LOG_AUTH','P','0') then
    execute immediate '
	  alter table TDAILY_LOG_AUTH
		  add constraint PK_TDAILY_LOG_AUTH primary key (L_ID)
		  using index ';
end if;
--工作日志权限表主键对应序列
if not fc_IsSeqExists('SEQ_DAILY_LOG_AUTH_ID') then
	execute immediate 'create sequence SEQ_DAILY_LOG_AUTH_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--工作日志权限关联表
if not fc_IsTableExists('TDAILY_LOG_AUTH_RELATION') then
    execute immediate '
		create table TDAILY_LOG_AUTH_RELATION
			(
			  L_ID                  NUMBER not null,
			  l_leaderid            NUMBER not null,
			  l_subid        		NUMBER not null
			)';
end if;		 
--工作日志权限关联表的主键
if fc_IsTableExists('TDAILY_LOG_AUTH_RELATION') and not fc_Constraints_Exists('TDAILY_LOG_AUTH_RELATION','PK_TDAILY_LOG_AUTH_RELATION','P','0') then
    execute immediate '
	  alter table TDAILY_LOG_AUTH_RELATION
		  add constraint PK_TDAILY_LOG_AUTH_RELATION primary key (L_ID)
		  using index ';
end if;
--工作日志权限关联表主键对应序列
if not fc_IsSeqExists('SEQ_DAILY_LOG_AUTH_RELATION_ID') then
	execute immediate 'create sequence SEQ_DAILY_LOG_AUTH_RELATION_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--[201712250680]20180514shiph22854(新增工作日志相关的表、主键及序列)--end--

--20180512taoxd(机构申请流程新增字段)--start--
if not fc_IsColExists('TAGENCY_APPLY_CONTENT_REL_LOAN','c_group') then 
  execute immediate 'alter table TAGENCY_APPLY_CONTENT_REL_LOAN  add c_group varchar2(8)';
end if;
if not fc_IsColExists('TAGENCY_APPLY_CONTENT','c_processinstanceid') then 
  execute immediate 'alter table TAGENCY_APPLY_CONTENT  add c_processinstanceid varchar2(32)';
end if;
--20180512taoxd(机构申请流程新增字段)---end---

--[201804180553]20180514shiph22854(计提管理-计提结果表格新增备注字段)--start--
--计提结果表增字段-次序
if fc_IsTableExists('TREPAY_ACCRUAL') and not fc_IsColExists('TREPAY_ACCRUAL','C_REMARK') then
	execute immediate 'alter table TREPAY_ACCRUAL add C_REMARK VARCHAR2(2000)';
end if;		
--[201804180553]20180514shiph22854(计提管理-计提结果表格新增备注字段)--end--

--M201805140690luheng24337(设置字段属性可以为空)--start--
if   fc_IsColExists('TREPAY_INFO','C_TYPE') then 
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_INFO'') and column_name = upper(''C_TYPE'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_INFO modify C_TYPE  null';
	end if;	
end if;
if   fc_IsColExists('TREPAY_INFO','C_RIVALID') then 
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_INFO'') and column_name = upper(''C_RIVALID'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_INFO modify C_RIVALID  null';
	end if;	
end if;
if   fc_IsColExists('TREPAY_INFO','C_ACCOID') then 
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_INFO'') and column_name = upper(''C_ACCOID'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_INFO modify C_ACCOID  null';
  	end if;	
end if;
if   fc_IsColExists('TREPAY_INFO','C_CYKIND') then 
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_INFO'') and column_name = upper(''C_CYKIND'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_INFO modify C_CYKIND  null';
  	end if;	
end if;
if   fc_IsColExists('TREPAY_INFO','D_PREOCCURDATE') then 
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_INFO'') and column_name = upper(''D_PREOCCURDATE'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_INFO modify D_PREOCCURDATE  null';
  	end if;	
end if;
if   fc_IsColExists('TREPAY_INFO','F_PREOCCUR_BALANCE') then 
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_INFO'') and column_name = upper(''F_PREOCCUR_BALANCE'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_INFO modify F_PREOCCUR_BALANCE  null';
  	end if;	
end if;

--20180515chenhy18048(到账确认表新增字段)--start--
if  not fc_IsColExists('TREPAY_CONFIRM','F_SERVICE_FREE2') then 
  execute immediate 'alter table TREPAY_CONFIRM add F_SERVICE_FREE2 NUMBER(19,2)';
end if;
--20180515chenhy18048(到账确认表新增字段)--end--


--[M201805151375]20180515yuanlh21739(删除重复代码后，缺失的字段补充)--start--
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_STOCKNAME') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_STOCKNAME VARCHAR2(50)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_PAY_WAY') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_PAY_WAY CHAR(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_YEAR_DAYS') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_YEAR_DAYS NUMBER(4,0)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_SCALE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_SCALE NUMBER(24,8)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_LEVEL_ORDER') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_LEVEL_ORDER NUMBER';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_FLOW_PAST') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_FLOW_PAST VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_IS_PAY_ADVANCE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_IS_PAY_ADVANCE VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_LEVEL_CODE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_LEVEL_CODE VARCHAR2(32)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_BONDCODE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_BONDCODE VARCHAR2(50)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_INIT_VALUE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_INIT_VALUE NUMBER(24,8)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_CREDIT_ORG1') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_CREDIT_ORG1 VARCHAR2(100)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_CREDIT_ORG2') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_CREDIT_ORG2 VARCHAR2(100)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_CREDIT_LEVEL1') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_CREDIT_LEVEL1 VARCHAR2(10)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_CREDIT_LEVEL2') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_CREDIT_LEVEL2 VARCHAR2(10)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_EXPECTED_AMOUNT') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_EXPECTED_AMOUNT NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_ASSET_VALUE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_ASSET_VALUE NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_LOCAL_AMOUNT') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_LOCAL_AMOUNT NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_LOCAL_PROPORTION') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_LOCAL_PROPORTION NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'D_EXPECTED_BEGINDATE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add D_EXPECTED_BEGINDATE DATE';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'D_TERM_UNIT') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add D_TERM_UNIT VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'L_TERM') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add L_TERM NUMBER';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_MINI_YIELD') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_MINI_YIELD NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_YIELD_EXPLAIN') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_YIELD_EXPLAIN VARCHAR2(4000)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_PROFFIT_CAL_EXPLAIN') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_PROFFIT_CAL_EXPLAIN VARCHAR2(4000)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_FLOAT_EXPLAIN') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_FLOAT_EXPLAIN VARCHAR2(4000)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_OPERATION_MODE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_OPERATION_MODE VARCHAR2(2)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_OPEN_FREQUENCY') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_OPEN_FREQUENCY VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_OPEN_SET') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_OPEN_SET VARCHAR2(5)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_OPEN_OTHER') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_OPEN_OTHER VARCHAR2(4000)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_OPEN_MODE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_OPEN_MODE VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_AMOUNT_MANTISSA_TYPE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_AMOUNT_MANTISSA_TYPE VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_SHARE_MANTISSA_TYPE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_SHARE_MANTISSA_TYPE VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_INTEREST_WAY') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_INTEREST_WAY VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_SALE_FORMULA') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_SALE_FORMULA VARCHAR2(4000)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_REBATE_SET') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_REBATE_SET VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_SUBSCRIPTION_SET') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_SUBSCRIPTION_SET VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_MINI_AMOUNT') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_MINI_AMOUNT NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'F_INCREASE_BASE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add F_INCREASE_BASE NUMBER(16,9)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_HUGE_REDEMPTION') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_HUGE_REDEMPTION VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_DIVIDEND_TYPE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_DIVIDEND_TYPE VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_DISTRIBUTE_TYPE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_DISTRIBUTE_TYPE VARCHAR2(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'D_FIRST_DISTRIBUTE_DATE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add D_FIRST_DISTRIBUTE_DATE DATE';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'L_CLOSED_PERIOD') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add L_CLOSED_PERIOD NUMBER';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'D_PROMOTION_BEGIN') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add D_PROMOTION_BEGIN DATE';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'D_PROMOTION_END') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add D_PROMOTION_END DATE';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_PROCESS_INSTANCE_ID') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_PROCESS_INSTANCE_ID VARCHAR2(32)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_PROPERTYTYPE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_PROPERTYTYPE VARCHAR2(2)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_PROFITPHASE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_PROFITPHASE VARCHAR2(2)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_ADJUSTDAY') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_ADJUSTDAY VARCHAR2(2)';
end if;
if not fc_IsColExists('TTRUST_CLIENTINFO', 'F_TRUSTCAPITAL') then
  execute immediate 'alter table TTRUST_CLIENTINFO add F_TRUSTCAPITAL NUMBER(19,2)';
end if;
if not fc_IsColExists('TTRUST_CLIENTINFO', 'F_ACTUALHOLDSHARE') then
  execute immediate 'alter table TTRUST_CLIENTINFO add F_ACTUALHOLDSHARE NUMBER(19,0)';
end if;
if not fc_IsColExists('TTRUST_CLIENTINFO', 'C_ORGPOSTERIORLEGALPERSON') then
  execute immediate 'alter table TTRUST_CLIENTINFO add C_ORGPOSTERIORLEGALPERSON VARCHAR2(255)';
end if;
if not fc_IsColExists('TTRUST_CLIENTINFO', 'C_ORGPOSTERIORLEGALADDRESS') then
  execute immediate 'alter table TTRUST_CLIENTINFO add C_ORGPOSTERIORLEGALADDRESS VARCHAR2(255)';
end if;
if not fc_IsColExists('TTRUST_CLIENTINFO', 'C_ORGPOSTERIORLEGALAREACODE') then
  execute immediate 'alter table TTRUST_CLIENTINFO add C_ORGPOSTERIORLEGALAREACODE VARCHAR2(255)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_TA_CONTRACTID') then
  execute immediate 'alter table TTRUST_CONTRACT add C_TA_CONTRACTID VARCHAR2(50)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_ABSTRADEACCO') then
  execute immediate 'alter table TTRUST_CONTRACT add C_ABSTRADEACCO VARCHAR2(255)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_CONTACTCODE') then
  execute immediate 'alter table TTRUST_CONTRACT add C_CONTACTCODE VARCHAR2(32)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_ACCOUNTCODE') then
  execute immediate 'alter table TTRUST_CONTRACT add C_ACCOUNTCODE VARCHAR2(32)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_CAPITALACCOUNTNO') then
  execute immediate 'alter table TTRUST_CONTRACT add C_CAPITALACCOUNTNO VARCHAR2(50)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_CAPITALACCOUNTNAME') then
  execute immediate 'alter table TTRUST_CONTRACT add C_CAPITALACCOUNTNAME VARCHAR2(100)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_TRADINGDESKS') then
  execute immediate 'alter table TTRUST_CONTRACT add C_TRADINGDESKS VARCHAR2(50)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'L_SHARES') then
  execute immediate 'alter table TTRUST_CONTRACT add L_SHARES NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'F_TRADING_RATE') then
  execute immediate 'alter table TTRUST_CONTRACT add F_TRADING_RATE NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_TRADING_TYPE') then
  execute immediate 'alter table TTRUST_CONTRACT add C_TRADING_TYPE VARCHAR2(1)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_CHANNELS') then
  execute immediate 'alter table TTRUST_CONTRACT add C_CHANNELS VARCHAR2(500)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_PROVINCE') then
  execute immediate 'alter table TTRUST_CONTRACT add C_PROVINCE VARCHAR2(10)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_CITY') then
  execute immediate 'alter table TTRUST_CONTRACT add C_CITY VARCHAR2(10)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_DISTRICT') then
  execute immediate 'alter table TTRUST_CONTRACT add C_DISTRICT VARCHAR2(2000)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_MEMO') then
  execute immediate 'alter table TTRUST_CONTRACT add C_MEMO VARCHAR2(4000)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'F_SUBSCRIPTION_RATE') then
  execute immediate 'alter table TTRUST_CONTRACT add F_SUBSCRIPTION_RATE NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'F_REBATE_RATE') then
  execute immediate 'alter table TTRUST_CONTRACT add F_REBATE_RATE NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'F_EXPECT_PROFIT_RATE') then
  execute immediate 'alter table TTRUST_CONTRACT add F_EXPECT_PROFIT_RATE NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'F_FEE_RATE') then
  execute immediate 'alter table TTRUST_CONTRACT add F_FEE_RATE NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_CHANNEL_CODE') then
  execute immediate 'alter table TTRUST_CONTRACT add C_CHANNEL_CODE VARCHAR2(2)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'F_COUNTER_FEE') then
  execute immediate 'alter table TTRUST_CONTRACT add F_COUNTER_FEE NUMBER(19,4)';
end if;
if not fc_IsColExists('TTRUST_CONTRACT', 'C_RIVALACCOUNTCODE') then
  execute immediate 'alter table TTRUST_CONTRACT add C_RIVALACCOUNTCODE VARCHAR2(32)';
end if;
if not fc_IsColExists('TASSET_VOUCHER', 'C_STAGECODE') then
  execute immediate 'alter table TASSET_VOUCHER add C_STAGECODE VARCHAR2(255)';
end if;
if not fc_IsColExists('TASSET_VOUCHER_STOCK', 'F_MARGIN_BALANCE') then
  execute immediate 'alter table TASSET_VOUCHER_STOCK add F_MARGIN_BALANCE NUMBER(19,2)';
end if;
if not fc_IsColExists('TASSET_VOUCHER_STOCK', 'F_PREPAY_BALANCE') then
  execute immediate 'alter table TASSET_VOUCHER_STOCK add F_PREPAY_BALANCE NUMBER(19,2)';
end if;
if not fc_IsColExists('TINVEST_INFO', 'C_INVESTMENT_SCALE') then
  execute immediate 'alter table TINVEST_INFO add C_INVESTMENT_SCALE VARCHAR2(255)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_MODIFYACCOAPPLICATION') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_MODIFYACCOAPPLICATION CHAR(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_AREA') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_AREA VARCHAR2(32)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ACCOUNTCHANGE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ACCOUNTCHANGE CHAR(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_CHANGECONTENT') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_CHANGECONTENT VARCHAR2(3999)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'D_CHANGEDATE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add D_CHANGEDATE DATE';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'D_EXPIREDATE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add D_EXPIREDATE DATE';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_PRODUCTSET') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_PRODUCTSET CHAR(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_SEALRECEIVE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_SEALRECEIVE CHAR(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_SEALSUPPLY') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_SEALSUPPLY CHAR(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'D_SETDATE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add D_SETDATE DATE';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'D_CANCELAPPROVEDATE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add D_CANCELAPPROVEDATE DATE';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_STATUSXYREJECTSTATUS') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_STATUSXYREJECTSTATUS VARCHAR2(32)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_STATUS_XY') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_STATUS_XY VARCHAR2(2)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_CANCELSTATUS') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_CANCELSTATUS VARCHAR2(4)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_IS_SUSPENDED') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_IS_SUSPENDED VARCHAR2(8)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_SUSPENDED_REASON') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_SUSPENDED_REASON VARCHAR2(512)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_APPLYER') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_APPLYER VARCHAR2(32)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'L_SERIALNO') then
  execute immediate 'alter table TACCOUNT_BANKINFO add L_SERIALNO NUMBER';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ENTERUSER') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ENTERUSER VARCHAR2(32)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_TEMPCODE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_TEMPCODE VARCHAR2(20)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_INTERESTSETTYPE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_INTERESTSETTYPE VARCHAR2(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_INTERESTSETDATE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_INTERESTSETDATE VARCHAR2(6)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_URGENTCANCEL_STATUS') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_URGENTCANCEL_STATUS VARCHAR2(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ISUSEACCOUNT') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ISUSEACCOUNT VARCHAR2(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ISSAVEFILE') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ISSAVEFILE VARCHAR2(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ISSETSUBACCOUNT') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ISSETSUBACCOUNT VARCHAR2(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_SCRAMBLER') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_SCRAMBLER CHAR(1)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ACCOUNTTOTAL') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ACCOUNTTOTAL VARCHAR2(2)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_ACCOUNTDETAIL') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_ACCOUNTDETAIL VARCHAR2(200)';
end if;
if not fc_IsColExists('TACCOUNT_BANKINFO', 'C_BANKKEY') then
  execute immediate 'alter table TACCOUNT_BANKINFO add C_BANKKEY CHAR(1)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_TA_PROFITCLASS') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_TA_PROFITCLASS VARCHAR2(32)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_OUTFUNDCODE') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_OUTFUNDCODE VARCHAR2(50)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_ISACCUMULATION') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_ISACCUMULATION VARCHAR2(10)';
end if;
if not fc_IsColExists('TFUNDINFO_PROFITLEVEL', 'C_ALLOCATION') then
  execute immediate 'alter table TFUNDINFO_PROFITLEVEL add C_ALLOCATION VARCHAR2(10)';
end if;
if not fc_IsColExists('TDEGREE_DEFINITION', 'C_DEGREEUSER2') then
  execute immediate 'alter table TDEGREE_DEFINITION add C_DEGREEUSER2 VARCHAR2(32)';
end if;
if not fc_IsColExists('TPROJECT_OBJECT_RELATION', 'C_STRUCTTYPE') then
  execute immediate 'alter table TPROJECT_OBJECT_RELATION add C_STRUCTTYPE VARCHAR2(2)';
end if;
if not fc_IsColExists('TI_HSAM_RIVAL', 'C_GOVERNMENT_LEVEL') then
  execute immediate 'alter table TI_HSAM_RIVAL add C_GOVERNMENT_LEVEL VARCHAR2(32)';
end if;
if not fc_IsColExists('TI_HSAM_RIVAL', 'C_GOVERNMENT_LEVEL_NAME') then
  execute immediate 'alter table TI_HSAM_RIVAL add C_GOVERNMENT_LEVEL_NAME VARCHAR2(255)';
end if;
if not fc_IsColExists('TI_HSAM_RIVAL', 'C_GOVERNMENT_NAME') then
  execute immediate 'alter table TI_HSAM_RIVAL add C_GOVERNMENT_NAME VARCHAR2(255)';
end if;
if not fc_IsColExists('TI_HSAM_RIVAL', 'C_INVESTORS_ELEMENTS') then
  execute immediate 'alter table TI_HSAM_RIVAL add C_INVESTORS_ELEMENTS VARCHAR2(32)';
end if;
if not fc_IsColExists('TI_HSAM_RIVAL', 'C_INVESTORS_ELEMENTS_NAME') then
  execute immediate 'alter table TI_HSAM_RIVAL add C_INVESTORS_ELEMENTS_NAME VARCHAR2(255)';
end if;
if not fc_IsColExists('TINVEST_PLAN', 'C_REJECTTYPE') then
  execute immediate 'alter table TINVEST_PLAN add C_REJECTTYPE VARCHAR2(2)';
end if;
--[M201805151375]20180515yuanlh21739(删除重复代码后，缺失的字段补充)--end--

--20180516taoxd(资产交割流程表单新增字段)--start--
if not fc_IsColExists('TASSET_TRANSFER_DETAIL','f_adjustmentcosts') then 
  execute immediate 'alter table TASSET_TRANSFER_DETAIL  add f_adjustmentcosts NUMBER(19,6)';
end if;
--20180516taoxd(资产交割流程表单新增字段)---end---


---20180516wcy(债权合同增加剩余本金，剩余利息) --start--
if not fc_IsColExists('tasset_creditorcontract','F_SURPLUSTPRINCIPAL') then
	execute immediate 'alter table tasset_creditorcontract add F_SURPLUSTPRINCIPAL NUMBER(19,6)';
end if;

if not fc_IsColExists('tasset_creditorcontract','F_SURPLUSINTEREST') then
	execute immediate 'alter table tasset_creditorcontract add F_SURPLUSINTEREST NUMBER(19,6)';
end if;
---20180516wcy(债权合同增加剩余本金，剩余利息) --end--

--20180517zhuocc21770(执行信息维护改造) --start--
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_lawexephase') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_lawexephase varchar2(10)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_judge') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_judge varchar2(255)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_judgecontact') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_judgecontact varchar2(32)';
end if;
if fc_IsColExists('TLAWSUIT_EXECUTION','c_evaluationname') then
	execute immediate 'alter table TLAWSUIT_EXECUTION drop column  c_evaluationname';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_lawyer') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_lawyer varchar2(255)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_agencyoffice') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_agencyoffice varchar2(500)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_lawercontact') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_lawercontact varchar2(32)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_isexerelate') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_isexerelate varchar2(2)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_relateinfo') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_relateinfo varchar2(3000)';
end if;
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_projectcode') then
	execute immediate 'alter table TLAWSUIT_EXECUTION  add c_projectcode varchar2(32)';
end if;
--20180517zhuocc21770(执行信息维护改造) --end--
--20180517zhuocc21770(拍卖表新增项目编号字段) --start--
if not fc_IsColExists('TRECORD_AUCTION','c_projectcode') then
	execute immediate 'alter table TRECORD_AUCTION  add c_projectcode varchar2(48)';
end if;
--20180517zhuocc21770(拍卖表新增项目编号字段) --end--
--20180518wcy14800(合同表增加工银所需要素) --start--
if not fc_IsColExists('tinvest_contract', 'c_startorg') then
  execute immediate 'alter table tinvest_contract add c_startorg VARCHAR2(2)';
end if;
if not fc_IsColExists('tinvest_contract', 'c_requiremethod') then
  execute immediate 'alter table tinvest_contract add c_requiremethod VARCHAR2(2)';
end if;
if not fc_IsColExists('tinvest_contract', 'c_ischeckbycondition') then
  execute immediate 'alter table tinvest_contract add c_ischeckbycondition VARCHAR2(2)';
end if;
if not fc_IsColExists('tinvest_contract', 'c_checkcondition') then
  execute immediate 'alter table tinvest_contract add c_checkcondition VARCHAR2(4000)';
end if;
if not fc_IsColExists('tinvest_contract', 'c_isenjoyvoteright') then
  execute immediate 'alter table tinvest_contract add c_isenjoyvoteright VARCHAR2(2)';
end if;
if not fc_IsColExists('tinvest_contract', 'c_maininvestpart') then
  execute immediate 'alter table tinvest_contract add c_maininvestpart VARCHAR2(32)';
end if;
--20180518wcy14800(合同表增加工银所需要素) --end--

--20180518kangxin(项目表增加字段) --start--
if not fc_IsColExists('TPROJECT_INFO_AMC','c_durdiligencelaunchorg') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_durdiligencelaunchorg VARCHAR2(5)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','d_predictinvestdate') then
	execute immediate 'alter table TPROJECT_INFO_AMC add d_predictinvestdate DATE';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','f_framesignedmoney') then
	execute immediate 'alter table TPROJECT_INFO_AMC add f_framesignedmoney number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','f_applyinvestmoney') then
	execute immediate 'alter table TPROJECT_INFO_AMC add f_applyinvestmoney number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_maininvestpart') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_maininvestpart VARCHAR2(200)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_predictinvestlimit') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_predictinvestlimit VARCHAR2(10)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_isneeddirector') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_isneeddirector VARCHAR2(10)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_isneedsupervisor') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_isneedsupervisor VARCHAR2(10)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_droptype') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_droptype VARCHAR2(50)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','f_approveinvestmoney') then
	execute immediate 'alter table TPROJECT_INFO_AMC add f_approveinvestmoney NUMBER(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','f_approveowninvestmoney') then
	execute immediate 'alter table TPROJECT_INFO_AMC add f_approveowninvestmoney NUMBER(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_approveinvestlimit') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_approveinvestlimit varchar2(10)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','d_approvedate') then
	execute immediate 'alter table TPROJECT_INFO_AMC add d_approvedate date';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_approvetype') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_approvetype varchar2(5)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_approveorg') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_approveorg varchar2(5)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_implementtype') then
	execute immediate 'alter table TPROJECT_INFO_AMC add c_implementtype varchar2(5)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','f_submitinvestmoney') then
	execute immediate'alter table TPROJECT_INFO_AMC  add f_submitinvestmoney number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','f_applyowninvestmoney') then
	execute immediate'alter table TPROJECT_INFO_AMC  add f_applyowninvestmoney number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INFO_AMC','c_fundtrustee') then
	execute immediate'alter table TPROJECT_INFO_AMC  add c_fundtrustee varchar2(500)';
end if;

if not fc_IsTableExists('TPROJECT_INVESTTARGET') then
    execute immediate '
		create table TPROJECT_INVESTTARGET
			(
			   l_id                 number(10)           not null,
			   c_projectcode        varchar2(50)         not null,
			   c_investtargetid     varchar2(48)         not null,
			   f_applyinvestmoney   number(19,6),
			   f_submitinvestmoney	number(19,6),
			   f_stocknumber        number(10),
			   f_shareratio			number(19,6),
			   f_predebtratio       number(19,6),
			   f_afterdebtratio    	number(19,6),
			   d_createtime         date,
			   c_createuser         varchar2(48),
			   c_lastupdateuser     varchar2(48),
			   d_lastupdatetime     date
			)';
end if;

--考核指标表的主键
if fc_IsTableExists('TPROJECT_INVESTTARGET') and not fc_Constraints_Exists('TPROJECT_INVESTTARGET','PK_TPROJECT_INVESTTARGETOR','P','0') then
    execute immediate '
	  alter table TPROJECT_INVESTTARGET
		  add constraint PK_TPROJECT_INVESTTARGETOR primary key (L_ID)
		  using index ';
end if;

--考核指标表主键对应序列
if not fc_IsSeqExists('SEQ_TPROJECT_INVESTTARGET_ID') then
	execute immediate 'create sequence SEQ_TPROJECT_INVESTTARGET_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

if not fc_IsTableExists('TRANSACTION_FRAMEWORK_INFO') then
    execute immediate '
-- Create table
create table TRANSACTION_FRAMEWORK_INFO
(
  c_frameworkid           NUMBER(10) not null,
  c_projectcode           VARCHAR2(32),
  c_capitalnature 		  VARCHAR2(32),
  f_capital   	          NUMBER(19,6),
  f_capitalratio          NUMBER(19,6),
  f_ratio			      NUMBER(19,6)
)';
end if;

if fc_IsTableExists('TRANSACTION_FRAMEWORK_INFO') and not fc_Constraints_Exists('TRANSACTION_FRAMEWORK_INFO','TRANSACTION_FRAMEWORK_PK','P','0') then
    execute immediate '
	  alter table TRANSACTION_FRAMEWORK_INFO
  add constraint TRANSACTION_FRAMEWORK_PK primary key (c_frameworkid)';
end if;

if not fc_IsSeqExists('SEQ_TRANSACTION_FRAMEWORK_ID') then
	execute immediate 'create sequence SEQ_TRANSACTION_FRAMEWORK_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

if not fc_IsTableExists('TPROJECT_CAPITAL_PURPOSE') then
    execute immediate '
-- Create table
create table TPROJECT_CAPITAL_PURPOSE
(
  l_id           NUMBER(10) not null,
  c_projectcode           VARCHAR2(32),
  c_creditorid 		  	  VARCHAR2(32),
  f_creditorbalance   	  NUMBER(19,6),
  f_financingcost         NUMBER(19,6),
  f_financingnature		  varchar2(2)
)';
end if;

if fc_IsTableExists('TPROJECT_CAPITAL_PURPOSE') and not fc_Constraints_Exists('TPROJECT_CAPITAL_PURPOSE','TPROJECT_CAPITAL_PURPOSE_PK','P','0') then
    execute immediate '
	  alter table TPROJECT_CAPITAL_PURPOSE
  add constraint TPROJECT_CAPITAL_PURPOSE_PK primary key (l_id)';
end if;

if not fc_IsSeqExists('SEQ_CAPITAL_PURPOSE_ID') then
	execute immediate 'create sequence SEQ_CAPITAL_PURPOSE_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--20180518kangxin(项目表增加字段) --end--
--20180518caoyi20323(划款申请表字段添加) --start--
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_CONTRACTSTATE') then
  execute immediate 'alter table TREPAY_INFO add C_CONTRACTSTATE VARCHAR2(2)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_CONTRACTCHECK') then
  execute immediate 'alter table TREPAY_INFO add C_CONTRACTCHECK VARCHAR2(512)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_CONTRACTEXAMINE') then
  execute immediate 'alter table TREPAY_INFO add C_CONTRACTEXAMINE VARCHAR2(512)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_APPROVESTATE') then
  execute immediate 'alter table TREPAY_INFO add C_APPROVESTATE VARCHAR2(2)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_APPROVECHECK') then
  execute immediate 'alter table TREPAY_INFO add C_APPROVECHECK VARCHAR2(512)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_APPROVEEXAMINE') then
  execute immediate 'alter table TREPAY_INFO add C_APPROVEEXAMINE VARCHAR2(512)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_APPROVEPID') then
  execute immediate 'alter table TREPAY_INFO add C_APPROVEPID VARCHAR2(32)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_CONTRACTPID') then
  execute immediate 'alter table TREPAY_INFO add C_CONTRACTPID VARCHAR2(32)';
end if;
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','c_paystatus') then
  execute immediate 'alter table TREPAY_INFO add c_paystatus VARCHAR2(2)';
end if;
--20180518caoyi20323(划款申请表字段添加) --end--
--20180518caoyi20323(划款核准状态中间表创建) --start--
if not fc_IsTableExists('TAPPROVE_STATE') then
    execute immediate '
create table TAPPROVE_STATE
(
  id             VARCHAR2(32) not null,
  c_projectcode  VARCHAR2(32),
  c_contractid   VARCHAR2(32),
  c_approve_type CHAR(2),
  c_approve_time DATE
)';
end if;
--20180518caoyi20323(划款核准状态中间表创建) --end--

--20180522kangxin(新增非标债转股字段) --start--
if not fc_IsColExists('TPROJECT_INVESTTARGET','d_predictturnstockdate') then
	execute immediate 'alter table TPROJECT_INVESTTARGET add d_predictturnstockdate date';
end if;

if not fc_IsColExists('TPROJECT_INVESTTARGET','f_predictturnstockmoney') then
	execute immediate 'alter table TPROJECT_INVESTTARGET add f_predictturnstockmoney number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INVESTTARGET','f_predictturnstockdebt') then
	execute immediate 'alter table TPROJECT_INVESTTARGET add f_predictturnstockdebt number(19,6)';
end if;

if not fc_IsColExists('TPROJECT_INVESTTARGET','f_predictturnstockinterest') then
	execute immediate 'alter table TPROJECT_INVESTTARGET add f_predictturnstockinterest number(19,6)';
end if;
if not fc_IsColExists('tasset_loanaccount_info','d_baseday') then
	execute immediate 'alter table tasset_loanaccount_info add d_baseday date';
end if;

--20180522kangxin(新增非标债转股字段)  --end--
if not fc_IsColExists('TLAWSUIT_EXECUTION','c_evaluationname') then
	execute immediate 'alter table TLAWSUIT_EXECUTION add  c_evaluationname varchar2(32)';
end if;
--20180524zhangchao(新增拜访客户信息表结构)  --start--
if not fc_IsTableExists('visitclient_info') then
    execute immediate '
create table visitclient_info
(
  c_visitclientcode        varchar2(32),
  c_projectcode     varchar2(32),
  d_communtime      date,
  c_communlocation      varchar2(100),
  c_isintention  varchar2(2),
  c_counterparty  varchar2(32),
  c_jobtitle  varchar2(32),
  c_entourage   varchar2(32),
  c_totalbranch varchar2(32),
  c_memo varchar2(4000)
)';
end if;
--20180524zhangchao(新增拜访客户信息表结构)  --start--


--20180524luheng(调整移动营销表字段名称并添加一个新的字段) --start--
if fc_IsColExists('TNOTICE_APPT','ID') then
	execute immediate 'alter table TNOTICE_APPT rename column ID to C_ID';
end if;

if fc_IsColExists('TNOTICE_APPT','NID') then
	execute immediate 'alter table TNOTICE_APPT rename column NID to C_NID';
end if;

if fc_IsColExists('TNOTICE_APPT','NAME') then
	execute immediate 'alter table TNOTICE_APPT rename column NAME to C_NAME';
end if;

if fc_IsColExists('TNOTICE_APPT','PHONE') then
	execute immediate 'alter table TNOTICE_APPT rename column PHONE to C_PHONE';
end if;

if fc_IsColExists('TNOTICE_APPT','ADDRESS') then
	execute immediate 'alter table TNOTICE_APPT rename column ADDRESS to C_ADDRESS';
end if;

if fc_IsColExists('TNOTICE_APPT','EMAIL') then
	execute immediate 'alter table TNOTICE_APPT rename column EMAIL to C_EMAIL';
end if;

if fc_IsColExists('TNOTICE_APPT','APPTDATE') then
	execute immediate 'alter table TNOTICE_APPT rename column APPTDATE to D_APPTDATE';
end if;

if fc_IsColExists('TNOTICE_APPT','CONTENT') then
	execute immediate 'alter table TNOTICE_APPT rename column CONTENT to C_CONTENT';
end if;

if fc_IsColExists('TNOTICE_APPT','REMARK') then
	execute immediate 'alter table TNOTICE_APPT rename column REMARK to C_REMARK';
end if;
-- 公告借款人信息表
if fc_IsColExists('TNOTICE_CUSTOMER','ID') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column ID to C_ID';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','NID') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column NID to C_NID';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','PROJECTNAME') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column PROJECTNAME to C_PROJECTNAME';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','CUSTOMERNAME') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column CUSTOMERNAME to C_CUSTOMERNAME';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','PROVINCE') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column PROVINCE to C_PROVINCE';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','CITY') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column CITY to C_CITY';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','LITIGATION') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column LITIGATION to C_LITIGATION';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','RIGHTSMONEY') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column RIGHTSMONEY to C_RIGHTSMONEY';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','CHOICE') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column CHOICE to C_CHOICE';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','GUARANTEETYPE') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column GUARANTEETYPE to C_GUARANTEETYPE';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','GUARANTOR') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column GUARANTOR to C_GUARANTOR';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','PAWNTYPE') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column PAWNTYPE to C_PAWNTYPE';
end if;

if fc_IsColExists('TNOTICE_CUSTOMER','PAWNINFO') then
	execute immediate 'alter table TNOTICE_CUSTOMER rename column PAWNINFO to C_PAWNINFO';
end if;

-- 公告信息表字段名称调整
if fc_IsColExists('TNOTICE_INFO','ID') then
	execute immediate 'alter table TNOTICE_INFO rename column ID to C_ID';
end if;

if fc_IsColExists('TNOTICE_INFO','TITLE') then
	execute immediate 'alter table TNOTICE_INFO rename column TITLE to C_TITLE';
end if;

if fc_IsColExists('TNOTICE_INFO','TYPE') then
	execute immediate 'alter table TNOTICE_INFO rename column TYPE to C_TYPE';
end if;

if fc_IsColExists('TNOTICE_INFO','CONTENT') then
	execute immediate 'alter table TNOTICE_INFO rename column CONTENT to C_CONTENT';
end if;

if fc_IsColExists('TNOTICE_INFO','PUBLISH') then
	execute immediate 'alter table TNOTICE_INFO rename column PUBLISH to D_PUBLISH';
end if;

if fc_IsColExists('TNOTICE_INFO','VALIDITY') then
	execute immediate 'alter table TNOTICE_INFO rename column VALIDITY to D_VALIDITY';
end if;

if fc_IsColExists('TNOTICE_INFO','CONTACTS') then
	execute immediate 'alter table TNOTICE_INFO rename column CONTACTS to C_CONTACTS';
end if;

if fc_IsColExists('TNOTICE_INFO','PHONE') then
	execute immediate 'alter table TNOTICE_INFO rename column PHONE to C_PHONE';
end if;

if fc_IsColExists('TNOTICE_INFO','EMAIL') then
	execute immediate 'alter table TNOTICE_INFO rename column EMAIL to C_EMAIL';
end if;

if fc_IsColExists('TNOTICE_INFO','JZDATE') then
	execute immediate 'alter table TNOTICE_INFO rename column JZDATE to D_JZDATE';
end if;

if fc_IsColExists('TNOTICE_INFO','TOTALMONEY') then
	execute immediate 'alter table TNOTICE_INFO rename column TOTALMONEY to C_TOTALMONEY';
end if;

if fc_IsColExists('TNOTICE_INFO','PROJECTNAME') then
	execute immediate 'alter table TNOTICE_INFO rename column PROJECTNAME to C_PROJECTNAME';
end if;

if fc_IsColExists('TNOTICE_INFO','AUCTYPE') then
	execute immediate 'alter table TNOTICE_INFO rename column AUCTYPE to C_AUCTYPE';
end if;

if fc_IsColExists('TNOTICE_INFO','AUCDATE') then
	execute immediate 'alter table TNOTICE_INFO rename column AUCDATE to D_AUCDATE';
end if;

if fc_IsColExists('TNOTICE_INFO','AUCPLACE') then
	execute immediate 'alter table TNOTICE_INFO rename column AUCPLACE to C_AUCPLACE';
end if;

if fc_IsColExists('TNOTICE_INFO','AUCCOMP') then
	execute immediate 'alter table TNOTICE_INFO rename column AUCCOMP to C_AUCCOMP';
end if;

if fc_IsColExists('TNOTICE_INFO','AUCNET') then
	execute immediate 'alter table TNOTICE_INFO rename column AUCNET to C_AUCNET';
end if;

if fc_IsColExists('TNOTICE_INFO','CHOICE') then
	execute immediate 'alter table TNOTICE_INFO rename column CHOICE to C_CHOICE';
end if;

if fc_IsColExists('TNOTICE_INFO','ATTACHFILES') then
	execute immediate 'alter table TNOTICE_INFO rename column ATTACHFILES to C_ATTACHFILES';
end if;

if fc_IsColExists('TNOTICE_INFO','PROCESS_INSTANCEID') then
	execute immediate 'alter table TNOTICE_INFO rename column PROCESS_INSTANCEID to C_PROCESS_INSTANCEID';
end if;

if fc_IsColExists('TNOTICE_INFO','STATUS') then
	execute immediate 'alter table TNOTICE_INFO rename column STATUS to C_STATUS';
end if;

if fc_IsColExists('TNOTICE_INFO','AUDIT_DATE') then
	execute immediate 'alter table TNOTICE_INFO rename column AUDIT_DATE to D_AUDIT_DATE';
end if;

if not fc_IsColExists('TNOTICE_INFO','C_PUBLISHMEDIT') then
	execute immediate 'alter table TNOTICE_INFO add C_PUBLISHMEDIT VARCHAR2(64)';
end if;

--20180524luheng(调整公告信息表字段名称) --end--

--20180523wansy24151将导入科目信息中间表的l_type字段长度从VARCHAR2(10)扩展到 VARCHAR2(50)--start--
if fc_IsColExists('T_INT_SUBJECT_INFO','L_TYPE') then
    execute immediate 'alter table T_INT_SUBJECT_INFO modify L_TYPE VARCHAR2(50)';
end if;
--20180523wansy24151将导入科目信息中间表的l_type字段长度从VARCHAR2(10)扩展到 VARCHAR2(50)--end--


--20180523wansy24151将导入科目信息中间表的C_SUBJECTFULL字段长度从VARCHAR2(50)扩展到 VARCHAR2(100)--start--
if fc_IsColExists('T_INT_SUBJECT_INFO','C_SUBJECTFULL') then
    execute immediate 'alter table T_INT_SUBJECT_INFO modify C_SUBJECTFULL VARCHAR2(100)';
end if;
--20180523wansy24151将导入科目信息中间表的C_SUBJECTFULL字段长度从VARCHAR2(50)扩展到 VARCHAR2(100)--end--

--20180523wansy24151将科目信息C_SUBJECTFULL字段长度从VARCHAR2(50)扩展到 VARCHAR2(100)--start--
if fc_IsColExists('TSUBJECT_INFO','C_SUBJECTFULL') then
    execute immediate 'alter table TSUBJECT_INFO modify C_SUBJECTFULL VARCHAR2(100)';
end if;
--20180523wansy24151将科目信息C_SUBJECTFULL字段长度从VARCHAR2(50)扩展到 VARCHAR2(100)--end--

--20180523wansy24151将凭证管理表的l_fundcode字段可以为空--start--
if fc_IsColExists('TAMC_VOUCHER_INFO','l_fundcode') then
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TAMC_VOUCHER_INFO'') and column_name = upper(''l_fundcode'') and nullable = ''N''') then
		execute immediate 'alter table TAMC_VOUCHER_INFO modify l_fundcode VARCHAR2(32) null';
	end if;
end if;
--20180523wansy24151将凭证管理表的l_fundcode字段可以为空--end--
if not fc_IsColExists('t_int_asset_loanaccount_info','c_assetseller') then
	execute immediate 'alter table t_int_asset_loanaccount_info add c_assetseller varchar2(500)';
end if;
if not fc_IsColExists('t_int_project_info','c_assetseller') then
	execute immediate 'alter table t_int_project_info modify c_assetseller varchar2(1000)';
end if;

if not fc_IsColExists('t_int_invest_contract','c_transferor') then
	execute immediate 'alter table t_int_invest_contract add c_transferor varchar2(500)';
end if;

--20180526zhuocc(诉讼信息表新增字段)-- start ---
if not fc_IsColExists('tlawsuit_info','c_projectcode') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_projectcode varchar2(48)';
end if;

if not fc_IsColExists('tlawsuit_info','d_calcinterestenddate') then
	execute immediate 'alter table TLAWSUIT_INFO  add d_calcinterestenddate DATE';
end if;

if not fc_IsColExists('tlawsuit_info','d_jgcalcinterestenddate') then
	execute immediate 'alter table TLAWSUIT_INFO  add d_jgcalcinterestenddate DATE';
end if;

if not fc_IsColExists('tlawsuit_info','f_judgeprincipal') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_judgeprincipal number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','f_judgeinterest') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_judgeinterest number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','f_judgerate') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_judgerate number(10,6)';
end if;

if not fc_IsColExists('tlawsuit_info','f_otherjudgeamount') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_otherjudgeamount number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','d_exeenddate') then
	execute immediate 'alter table TLAWSUIT_INFO  add d_exeenddate DATE';
end if;

if not fc_IsColExists('tlawsuit_info','c_suitphase') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_suitphase varchar2(2)';
end if;

if not fc_IsColExists('tlawsuit_info','c_judgesuitresult') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_judgesuitresult varchar2(2)';
end if;

if not fc_IsColExists('tlawsuit_info','f_principal') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_principal number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','f_interest') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_interest number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','f_otheramount') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_otheramount number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','c_suitstatus') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_suitstatus varchar2(2)';
end if;

if not fc_IsColExists('tlawsuit_info','c_suitreason') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_suitreason varchar2(500)';
end if;

if not fc_IsColExists('tlawsuit_info','f_suitfeeamount') then
	execute immediate 'alter table TLAWSUIT_INFO  add f_suitfeeamount number(19,6)';
end if;

if not fc_IsColExists('tlawsuit_info','c_isreturnsuitfee') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_isreturnsuitfee varchar2(2)';
end if;

if not fc_IsColExists('tlawsuit_info','c_deliverytype') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_deliverytype varchar2(2)';
end if;

if not fc_IsColExists('tlawsuit_info','d_judgedeliverydate') then
	execute immediate 'alter table TLAWSUIT_INFO  add d_judgedeliverydate DATE';
end if;

if not fc_IsColExists('tlawsuit_info','c_isjudgeworked') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_isjudgeworked varchar2(2)';
end if;

if not fc_IsColExists('tlawsuit_info','c_parent_id') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_parent_id varchar2(32)';
end if;

if not fc_IsColExists('tlawsuit_info','l_lawsuitorder') then
	execute immediate 'alter table TLAWSUIT_INFO  add l_lawsuitorder number(5)';
end if;

if not fc_IsColExists('tlawsuit_info','c_judgeresult') then
	execute immediate 'alter table TLAWSUIT_INFO  add c_judgeresult varchar2(3000)';
end if;
--20180526zhuocc(诉讼信息表新增字段)-- end ---

----20180528wansy24151(新建推送金蝶基础数据返回记录信息表 tbusiness_object_out_relation)--  --start--
if not fc_IsTableExists('TBUSINESS_OBJECT_OUT_RELATION') then
execute immediate '
-- Create table
create table TBUSINESS_OBJECT_OUT_RELATION
(
	c_objectcode  		VARCHAR2(32),
	c_type			    VARCHAR2(2),
	c_outcode			VARCHAR2(100)
)';
end if;
----20180528wansy24151(新建推送金蝶基础数据返回记录信息表 tbusiness_object_out_relation)--  --end--


----20180528wansy24151(特殊业务生成凭证的科目分录配置表 Tvoucher_specialsub_relation)--  --start--
if not fc_IsTableExists('TVOUCHER_SPECIALSUB_RELATION') then
execute immediate '
-- Create table
create table TVOUCHER_SPECIALSUB_RELATION
(
	c_subid  			VARCHAR2(32),
	c_businesstype		VARCHAR2(32),
	c_dimension			VARCHAR2(32),
	c_type				CHAR(1),
	c_plus_minus		CHAR(1)	
)';
end if;
----20180528wansy24151(特殊业务生成凭证的科目分录配置表 TVOUCHER_SPECIALSUB_RELATION)--  --end--

----20180528wansy24151(凭证科目分录表增加字段 核算维度类别 c_detail_type )--  --start--
if not fc_IsColExists('tamc_voucher_info_entry','c_detail_type') then
	 execute immediate 'alter table tamc_voucher_info_entry add c_detail_type varchar2(10)';
end if;
----20180528wansy24151(凭证科目分录表增加字段 核算维度类别 c_detail_type )--  --end--

----20180528wansy24151(科目分录模板表增加字段 借贷方向 c_direction )--  --start--
if not fc_IsColExists('tvoucher_entry','c_direction') then
	 execute immediate 'alter table tvoucher_entry add c_direction varchar2(1)';
end if;
----20180528wansy24151(科目分录模板表增加字段 借贷方向 c_direction )--  --end--


----20180528wansy24151(凭证表增加字段 )--  --start--
if not fc_IsColExists('tamc_voucher_info','c_process_instanceid') then
	 execute immediate 'alter table tamc_voucher_info add c_process_instanceid varchar2(100)';
end if;
if not fc_IsColExists('tamc_voucher_info','c_bill_type') then
	 execute immediate 'alter table tamc_voucher_info add c_bill_type varchar2(2)';
end if;
if not fc_IsColExists('tamc_voucher_info','d_accrual_date') then
	 execute immediate 'alter table tamc_voucher_info add d_accrual_date date';
end if;
if not fc_IsColExists('tamc_voucher_info','c_accrual_type') then
	 execute immediate 'alter table tamc_voucher_info add c_accrual_type varchar2(2)';
end if;
----20180528wansy24151(凭证表增加字段)--  --end--

----20180530chenhy18048(付款信息表增加收款账户等字段 )--start--
if not fc_IsColExists('TREPAY_INFO','c_acconame') then
	 execute immediate 'alter table TREPAY_INFO add c_acconame VARCHAR2(1024)';
end if;

if not fc_IsColExists('TREPAY_INFO','c_bankname') then
	 execute immediate 'alter table TREPAY_INFO add c_bankname VARCHAR2(159)';
end if;

if not fc_IsColExists('TREPAY_INFO','c_bankacco') then
	 execute immediate 'alter table TREPAY_INFO add c_bankacco VARCHAR2(100)';
end if;
----20180530chenhy18048(付款信息表增加收款账户等字段 )--end--
----20180530panjq24368(债委会信息表和债委会会议信息表)--end--
if not fc_IsTableExists('TDEBT_COMMISSION') then
  execute immediate 'create table TDEBT_COMMISSION
(
   L_COMMISSIONID       NUMBER               not null,
   C_PROJECTCODE        VARCHAR2(32),
   D_ESTABLISHDATE      date,
   C_CHAIRMANUNIT       VARCHAR2(1000),
   C_VICECHAIRMANUNIT   VARCHAR2(1000),
   C_MEMBERUNIT         VARCHAR2(1000),
   C_MEMO               VARCHAR2(4000),
   constraint PK_TDEBT_COMMISSION primary key (L_COMMISSIONID)
)';
end if;
if not fc_IsTableExists('TDEBT_COMMISSION_MEETING') then
  execute immediate 'create table TDEBT_COMMISSION_MEETING
(
   L_MEETINGID          NUMBER               not null,
   L_COMMISSIONID       NUMBER,
   D_MEETINGDATE        date,
   C_MEETINGCONTENT     VARCHAR2(4000),
   C_MEETINGRESULT      VARCHAR2(4000),
   constraint PK_TDEBT_COMMISSION_MEETING primary key (L_MEETINGID)
)';
end if;
--债委会会议信息表对应序列
if not fc_IsSeqExists('SEQ_TCOMMISSION_MEETING_ID') then
  execute immediate 'create sequence SEQ_TCOMMISSION_MEETING_ID
    minvalue 1
    maxvalue 999999999
    start with 1000
    increment by 1
    cache 20';
end if;
--债委会信息表对应序列
if not fc_IsSeqExists('SEQ_TDEBT_COMMISSION_ID') then
  execute immediate 'create sequence SEQ_TDEBT_COMMISSION_ID
    minvalue 1
    maxvalue 999999999
    start with 1000
    increment by 1
    cache 20';
end if;
----20180530panjq24368(债委会信息表和债委会会议信息表)--end--
--20180608lizs20455(资金来源关联表) begin--
if not fc_IsTableExists('TAMC_TRANSINFO_RELATION') then
  execute immediate 'create table TAMC_TRANSINFO_RELATION
(
   L_ID          NUMBER               not null,
   C_TRANSID       VARCHAR2(64),
   C_OBJ_ID        VARCHAR2(64),
   C_OBJ_TYPE     VARCHAR2(5),
   constraint PK_TAMC_TRANSINFO_RELATION primary key (L_ID)
)';
end if;
if not fc_IsSeqExists('SEQ_TAMC_TRANSINFO_RELATION_ID') then
  execute immediate 'create sequence SEQ_TAMC_TRANSINFO_RELATION_ID
    minvalue 1
    maxvalue 999999999
    start with 1000
    increment by 1
    cache 20';
end if;
--20180608lizs20455(资金来源关联表) end--
if not fc_IsColExists('TREPAY_INFO','F_TAXAMOUNT') then
	 execute immediate 'alter table TREPAY_INFO add F_TAXAMOUNT NUMBER(19,2)';
end if;

--201805230430shiph22854(投后跟踪记录设修改项目跟踪信息字段可为空)--start--
if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_PROJECTTRACEINFO') then
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TAFTER_INVESTMENT_TRACE_RECORD'') and column_name = upper(''C_PROJECTTRACEINFO'') and nullable = ''N''') then
		execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify  C_PROJECTTRACEINFO NULL';
	end if;	
end if;
--201805230430shiph22854(投后跟踪记录设修改项目跟踪信息字段可为空)--end--
----20180605zhangchao(公司制度管理新增创建人字段，扩展制度名称字段)--start-
if not fc_IsColExists('COMPANY_POLICY','c_creatuser') then
	 execute immediate 'alter table COMPANY_POLICY add c_creatuser varchar2(32)';
end if;
if fc_IsColExists('COMPANY_POLICY','C_POLICYNAME') then
    execute immediate 'alter table COMPANY_POLICY modify C_POLICYNAME VARCHAR2(100)';
end if;
----20180605zhangchao(公司制度管理新增创建人字段，扩展制度名称字段)--end-
--20180606kangxin(债权合同导入中间表新增诉讼有效期) --start--
if not fc_IsColExists('t_int_asset_creditorcontract','D_LAWDEADEND') then
	 execute immediate 'alter table t_int_asset_creditorcontract add D_LAWDEADEND date';
end if;
--20180606kangxin(债权合同导入中间表新增诉讼有效期) --end--
--20180606caoyi20323(划款账户新增字段交收状态) --start--
if not fc_IsColExists('TREPAY_ACCOUNT','C_CHECKFLAG') then
	 execute immediate 'alter table TREPAY_ACCOUNT add C_CHECKFLAG varchar2(10)';
end if;
--20180606caoyi20323(划款账户新增字段交收状态) --end--

--201800606chenhy18048(到账确认配置表新增业务分类字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM_CONFIG','c_busiclassification') then
  execute immediate 'alter table TREPAY_CONFIRM_CONFIG add c_busiclassification VARCHAR2(5)';
end if;
--201800606chenhy18048(到账确认配置表新增业务分类字段)--end--
--20180606zhuocc(股权资产新增字段)--start--
if not fc_IsColExists('tequity_assets_info','c_equityassetcode') then
	execute immediate 'alter table tequity_assets_info add c_equityassetcode varchar2(100)';
end if;
if not fc_IsColExists('tequity_assets_info','c_shareholding') then
	execute immediate 'alter table tequity_assets_info add c_shareholding varchar2(1)';
end if;
if not fc_IsColExists('tequity_assets_info','c_stockcode') then
	execute immediate 'alter table tequity_assets_info add c_stockcode varchar2(255)';
end if;
if not fc_IsColExists('tequity_assets_info','d_releasedate') then
	execute immediate 'alter table tequity_assets_info add d_releasedate DATE';
end if;
if not fc_IsColExists('tequity_assets_info','c_stockname') then
	execute immediate 'alter table tequity_assets_info add c_stockname varchar2(255)';
end if;
if not fc_IsColExists('tequity_assets_info','f_holdingnumber') then
	execute immediate 'alter table tequity_assets_info add f_holdingnumber NUMBER(19,6)';
end if;
if not fc_IsColExists('tequity_assets_info','f_carrycost') then
	execute immediate 'alter table tequity_assets_info add f_carrycost NUMBER(19,6)';
end if;
if not fc_IsColExists('tequity_assets_info','f_carrybalance') then
	execute immediate 'alter table tequity_assets_info add f_carrybalance NUMBER(19,6)';
end if;
if not fc_IsColExists('tequity_assets_info','f_latestbalance') then
	execute immediate 'alter table tequity_assets_info add f_latestbalance NUMBER(19,6)';
end if;
--20180606zhuocc(股权资产新增字段)--end--
--20180606zhangchao(借款人增加保证金字段)----start---
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','F_MARGIN_BALANCE') then
 execute immediate 'alter table TASSET_LOANACCOUNT_INFO add F_MARGIN_BALANCE NUMBER(19,6)';
end if;
--20180606zhangchao(借款人增加保证金字段)----end---

--20180606路恒(修改字段长度)--begin--
if fc_IsColExists('TREPAY_INFO','C_CONTRACTCHECK') then
	 execute immediate 'alter table TREPAY_INFO modify C_CONTRACTCHECK varchar2(2000)';
end if;

if fc_IsColExists('TREPAY_INFO','C_CONTRACTEXAMINE') then
	 execute immediate 'alter table TREPAY_INFO modify C_CONTRACTEXAMINE varchar2(2000)';
end if;

if fc_IsColExists('TREPAY_INFO','C_APPROVECHECK') then
	 execute immediate 'alter table TREPAY_INFO modify C_APPROVECHECK varchar2(2000)';
end if;

if fc_IsColExists('TREPAY_INFO','C_APPROVEEXAMINE') then
	 execute immediate 'alter table TREPAY_INFO modify C_APPROVEEXAMINE varchar2(2000)';
end if;
--20180606路恒(修改字段长度)--end--
--20180607caoyi20323(到账认领新增干系人信息字段) --start--
if not fc_IsColExists('TREPAY_ARRIVAL','c_payer_tcustomer') then
	 execute immediate 'alter table TREPAY_ARRIVAL add c_payer_tcustomer VARCHAR2(35)';
end if;
--20180607caoyi20323(到账认领新增干系人信息字段) --end--

--[201804270719]20180607shiph22854(抵质押合同信息表新增字段-抵押人编号)--start--
if fc_IsTableExists('TASSET_MORTGAGECONTRACT') and not fc_IsColExists('TASSET_MORTGAGECONTRACT','c_mortgagorcode') then 
  execute immediate 'alter table TASSET_MORTGAGECONTRACT add c_mortgagorcode VARCHAR(1000)';
end if;
--[201804270719]20180607shiph22854(抵质押合同信息表新增字段-抵押人编号)--start--

--201800612chenhy18048(付款业务表修改字段和财务关联表新增字段)--start--
if fc_IsColExists('TREPAY_INFO','C_AFFLID') then
  execute immediate 'alter table TREPAY_INFO modify C_AFFLID VARCHAR2(500)';
end if;

if not fc_IsColExists('TREPAY_DATA_RELATION','f_amount') then
  execute immediate 'alter table TREPAY_DATA_RELATION add f_amount number(19,2)';
end if;
--201800612chenhy18048(付款业务表新增和修改字段)--end--
--20180612zhuocc21770(资产包导入抵质押物中间表新增字段)--start--
if not fc_IsColExists('t_int_asset_pawn_info','c_remark') then
	execute immediate 'alter table T_INT_ASSET_PAWN_INFO add c_remark varchar2(500)';
end if;
--20180612zhuocc21770(资产包导入抵质押物中间表新增字段)--end--
--20180619lizs20455拆包 begin--
if not fc_IsTableExists('TAMC_SPLITPACKAGE_RELATION') then
  execute immediate 'create table TAMC_SPLITPACKAGE_RELATION
(
  c_id                VARCHAR2(64) not null,
  c_parentprojectcode VARCHAR2(64),
  c_projectcode       VARCHAR2(64),
  c_projectname       VARCHAR2(350),
  c_hassplit          VARCHAR2(2),
  c_processinstanceid VARCHAR2(150),
  c_depcode           VARCHAR2(150),
  constraint PK_TAMC_SPLITPACKAGE_RELATION primary key (c_id)
)';
end if;
if not fc_IsColExists('tasset_loanaccount_info','c_depcode') then
	execute immediate 'alter table tasset_loanaccount_info add c_depcode VARCHAR2(60)';
end if; 
if not fc_IsColExists('tasset_loanaccount_info','c_loandbcode') then
	execute immediate 'alter table tasset_loanaccount_info add c_loandbcode VARCHAR2(60)';
end if; 
--20180619lizs20455拆包 end--
--20180614wcy14800(方案表增加字段) start---
if not fc_IsColExists('tscheme_info','C_TRADESTRUCTURE') then
	execute immediate 'alter table tscheme_info add C_TRADESTRUCTURE VARCHAR2(32)';
end if; 

if not fc_IsColExists('tscheme_info','C_NORMALPARTNER') then
	execute immediate 'alter table tscheme_info add C_NORMALPARTNER VARCHAR2(32)';
end if; 

if not fc_IsColExists('tscheme_info','F_INVESTMENTAMOUNT') then
	execute immediate 'alter table tscheme_info add F_INVESTMENTAMOUNT NUMBER(24,6)';
end if; 

if not fc_IsColExists('tscheme_info','C_IMPLEMENTPARTNER') then
	execute immediate 'alter table tscheme_info add C_IMPLEMENTPARTNER VARCHAR2(32)';
end if; 

if not fc_IsColExists('tscheme_info','C_ORGTYPE') then
	execute immediate 'alter table tscheme_info add C_ORGTYPE VARCHAR2(32)';
end if; 

if not fc_IsColExists('tscheme_info','F_ADDEDTAXANDOTHER') then
	execute immediate 'alter table tscheme_info add F_ADDEDTAXANDOTHER NUMBER(24,6)';
end if; 

if not fc_IsColExists('tscheme_info','F_TOTALCOST') then
	execute immediate 'alter table tscheme_info add F_TOTALCOST NUMBER(24,6)';
end if; 

if not fc_IsColExists('tscheme_info','F_EXPECTANNUALRATE') then
	execute immediate 'alter table tscheme_info add F_EXPECTANNUALRATE NUMBER(24,6)';
end if; 
--20180614wcy14800(方案表增加字段) end---
--20180619caoyi20323(划款账户新增字段备注) --start--
if not fc_IsColExists('TREPAY_ACCOUNT','C_MEMO') then
	 execute immediate 'alter table TREPAY_ACCOUNT add C_MEMO varchar2(255)';
end if;
--20180619caoyi20323(划款账户新增字段备注) --end--
--20180619zhangchao(债权合同新增字段债权合同序号,修改债权合同编号长度) --start--
if not fc_IsColExists('TASSET_CREDITORCONTRACT','C_CONTRACTNUM') then
	 execute immediate 'alter table TASSET_CREDITORCONTRACT add C_CONTRACTNUM varchar2(4)';
end if;
if fc_IsColExists('TASSET_CREDITORCONTRACT','C_CREDITORCONTRACTCODE') then
  execute immediate 'alter table TASSET_CREDITORCONTRACT modify C_CREDITORCONTRACTCODE VARCHAR2(34)';
end if;
--20180619zhangchao(债权合同新增字段债权合同序号,修改债权合同编号长度) --end--

--20180619wansy24151 增加字段 外部系统主键--start--
if not fc_IsColExists('tbusiness_object_out_relation','c_outid') then
    execute immediate 'alter table tbusiness_object_out_relation add c_outid VARCHAR2(50)';
end if;
--20180619wansy24151 增加字段 外部系统主键--end--

--20180619wansy24151科目信息表 tsubject_info c_subjectname扩展到 VARCHAR2(200)--start--
if fc_IsColExists('tsubject_info','c_subjectname') then
    execute immediate 'alter table tsubject_info modify c_subjectname VARCHAR2(200)';
end if;
--20180619wansy24151科目信息表 tsubject_info c_subjectname扩展到 VARCHAR2(200)--end--

--20180619wansy24151 凭证表 增加字段 c_projectcode --start--
if not fc_IsColExists('tamc_voucher_info','c_projectcode') then
    execute immediate 'alter table tamc_voucher_info add c_projectcode VARCHAR2(48)';
end if;
--20180619wansy24151 凭证表 增加字段 c_projectcode --end--

--20180619wansy24151凭证信息表 tamc_voucher_info的c_failreason字段长度从VARCHAR2(800)扩展到 VARCHAR2(2000)--start--
if fc_IsColExists('tamc_voucher_info','c_failreason') then
    execute immediate 'alter table tamc_voucher_info modify c_failreason VARCHAR2(2000)';
end if;
--20180619wansy24151凭证信息表 tamc_voucher_info的c_failreason字段长度从VARCHAR2(800)扩展到 VARCHAR2(2000)--end--

--20180619wansy24151中间映射表tbusiness_object_out_relation 增加自增序列 --start--
if not fc_IsSeqExists('SEQ_BUSINESS_LOANACCOUNT_ID') then
execute immediate '
	create sequence SEQ_BUSINESS_LOANACCOUNT_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
--20180619wansy24151中间映射表tbusiness_object_out_relation 增加自增序列 --end--

--20180619wansy24151推送基础数据返回记录信息表 tbusiness_object_out_relation的c_objectcode字段长度从VARCHAR2(32)扩展到 VARCHAR2(100)--start--
if fc_IsColExists('tbusiness_object_out_relation','c_objectcode') then
    execute immediate 'alter table tbusiness_object_out_relation modify c_objectcode VARCHAR2(100)';
end if;
--20180619wansy24151推送基础数据返回记录信息表 tbusiness_object_out_relation的c_objectcode字段长度从VARCHAR2(32)扩展到 VARCHAR2(100)--end--

--20180619wansy24151 借款人中间表增加一个字段 借款人的主键id start--
if not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','c_loanaccountcode') then
	 execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add c_loanaccountcode varchar2(50)';
end if;
--20180619wansy24151借款人中间表增加一个字段 借款人的主键id end--

--[201805230619]20180620shiph22854(制式合同-法律服务委托合同，合同表新增字段)--start--
--其他特殊事项
if not fc_IsColExists('tinvest_contract','c_otherremark') then
	execute immediate 'alter table tinvest_contract add c_otherremark VARCHAR2(4000)';
end if;
--[201805230619]20180620shiph22854(制式合同-法律服务委托合同，合同表新增字段)--end--

--20180622zhuocc21770(融资合同，合同表新增字段)--start--
--还款方式
if not fc_IsColExists('tinvest_contract','c_rzrepayway') then
	execute immediate 'alter table tinvest_contract add c_rzrepayway VARCHAR2(32)';
end if;
--20180622zhuocc21770(融资合同，合同表新增字段)--end--

--20180622chenhy18048(到账确认信息表新增字段)--start--
if not fc_IsColExists('TREPAY_CONFIRM','f_amount') then
	execute immediate 'alter table TREPAY_CONFIRM add f_amount NUMBER(19,2)';
end if;
if not fc_IsColExists('TREPAY_CONFIRM','c_inputtype') then
	execute immediate 'alter table TREPAY_CONFIRM add c_inputtype varchar2(1)';
end if;
--20180622chenhy18048(到账确认信息表新增字段)--end--
--20180625caoyi20323(付款管理新增财务报销) --start--
if not fc_IsTableExists('TREIMBURSE_DETAIL') then
  execute immediate 'create table TREIMBURSE_DETAIL
(
  l_id                NUMBER not null,
  l_ijourid           NUMBER,
  c_type              VARCHAR2(2),
  d_startdate         DATE,
  d_enddate           DATE,
  c_lastdate          NUMBER,
  c_departure_place   VARCHAR2(100),
  c_destination_place VARCHAR2(100),
  f_total_amout       NUMBER(25,8),
  f_tax_amout         NUMBER(25,8),
  f_without_tax_amout NUMBER(25,8),
  c_memo              VARCHAR2(300),
  constraint PK_REIMBURSE_DETAIL primary key (L_ID)
)';
end if;
if not fc_IsTableExists('TUSER_ACCOUNT_INFO') then
  execute immediate 'create table TUSER_ACCOUNT_INFO
(
  c_userid          VARCHAR2(32) not null,
  c_cardno          VARCHAR2(100),
  c_accountbankname VARCHAR2(255),
  c_accountname     VARCHAR2(255),
  c_accountno       VARCHAR2(100),
  constraint PK_USER_ACCOUNT primary key (C_USERID)
)';
end if;
if not fc_IsColExists('TREPAY_INFO','c_usercode') then
	 execute immediate 'alter table TREPAY_INFO add c_usercode varchar2(32)';
end if;
if not fc_IsColExists('TREPAY_INFO','c_receiptcode') then
	 execute immediate 'alter table TREPAY_INFO add c_receiptcode varchar2(100)';
end if;
if not fc_IsColExists('TREPAY_INFO','d_receiptdate') then
	 execute immediate 'alter table TREPAY_INFO add d_receiptdate DATE';
end if;
if not fc_IsColExists('TREPAY_INFO','c_reimburseunit') then
	 execute immediate 'alter table TREPAY_INFO add c_reimburseunit varchar2(100)';
end if;
if not fc_IsColExists('TREPAY_INFO','c_department') then
	 execute immediate 'alter table TREPAY_INFO add c_department varchar2(2000)';
end if;
--20180625caoyi20323(付款管理新增财务报销) --end--
--20180625zhangchao(大包拆小包户编号记录存储表) --start--
if not fc_IsTableExists('TLOAN_CODE') then
  execute immediate 'create table TLOAN_CODE
(
  ID      VARCHAR2(32),
  C_CODE      VARCHAR2(10)
)';
end if;
if not fc_IsSeqExists('SEQ_LOANDBCODE') then
  execute immediate 'create sequence SEQ_LOANDBCODE
    minvalue 1
    maxvalue 999999999
    start with 1
    increment by 1
    cache 20';
end if;
--20180625zhangchao(大包拆小包户编号记录存储表) --end--

----20180627wansy24151(修改与金蝶关联中间表主键 tbusiness_object_out_relation)--  --end--
if fc_IsTableExists('TBUSINESS_OBJECT_OUT_RELATION') and  fc_Constraints_Exists('TBUSINESS_OBJECT_OUT_RELATION', 'PK_TBUSINESS_RELATION', 'P', '0') then
execute immediate '
  alter table TBUSINESS_OBJECT_OUT_RELATION
      drop constraint PK_TBUSINESS_RELATION cascade drop index';
end if;
if fc_IsTableExists('TBUSINESS_OBJECT_OUT_RELATION') and not fc_Constraints_Exists('TBUSINESS_OBJECT_OUT_RELATION', 'PK_TBUSINESS_OUT_RELATION', 'P', '0') then
execute immediate '
  alter table TBUSINESS_OBJECT_OUT_RELATION
      add constraint PK_TBUSINESS_OUT_RELATION primary key (c_objectcode, c_type)
      using index ';
end if;
----20180627wansy24151(修改与金蝶关联中间表主键 tbusiness_object_out_relation)--  --end--
if not fc_IsSeqExists('SEQ_REIMBURSE_DETAIL_ID') then
  execute immediate 'create sequence SEQ_REIMBURSE_DETAIL_ID
	minvalue 1
	maxvalue 999999999
	start with 1
	increment by 1
	cache 20';
end if;
----20180703panjq24368(风险预警信息表新增字段一录入人、录入时间、最近一次修改人、最近一次修改时间)------start
 if fc_IsTableExists('trisk_warning_type') and not fc_IsColExists('trisk_warning_type','c_createuser') then
    execute immediate 'alter table trisk_warning_type add c_createuser varchar2(48)';
 end if;
  if fc_IsTableExists('trisk_warning_type') and not fc_IsColExists('trisk_warning_type','d_createtime') then
    execute immediate 'alter table trisk_warning_type add d_createtime date';
 end if;
  if fc_IsTableExists('trisk_warning_type') and not fc_IsColExists('trisk_warning_type','c_lastupdateuser') then
    execute immediate 'alter table trisk_warning_type add c_lastupdateuser   varchar2(48)';
 end if;
  if fc_IsTableExists('trisk_warning_type') and not fc_IsColExists('trisk_warning_type','d_lastupdatetime') then
    execute immediate 'alter table trisk_warning_type add d_lastupdatetime date';
 end if;
----20180703panjq24368(风险预警信息表新增字段一录入人、录入时间、最近一次修改人、最近一次修改时间)------end

----20180704kangxin(新增交易架构说明) ----start------
if not fc_IsColExists('TRANSACTION_FRAMEWORK_INFO','c_frameworkmemo') then
	 execute immediate 'alter table TRANSACTION_FRAMEWORK_INFO add c_frameworkmemo varchar2(4000)';
end if;
----20180704kangxin(新增交易架构说明) ----end------
--20180704caoyi20323(到账管理新增核收费) --start--
if not fc_IsColExists('trepay_confirm','c_vouchers_state') then
    execute immediate 'alter table trepay_confirm add c_vouchers_state VARCHAR2(5)';
end if;
if not fc_IsTableExists('TREPAY_CHECKCHARGE_DETAIL') then
  execute immediate 'create table TREPAY_CHECKCHARGE_DETAIL
(
  c_detailid  VARCHAR2(32) not null,
  l_confirmid NUMBER,
  f_amount    NUMBER(19,2),
  d_date      DATE,
  constraint PK_TREPAY_CHECKCHARGE_DETAIL primary key (C_DETAILID)
)';
end if;
--20180704caoyi20323(到账管理新增核收费) --end--

----20180705chenhy18048(业务支出表新增字段)--start--
if not fc_IsColExists('TREPAY_INFO','c_pay_description') then
	execute immediate 'alter table TREPAY_INFO add c_pay_description VARCHAR2(3000)';
end if;
----20180705chenhy18048(业务支出表新增字段)--end--
--201800705zhangchao(营销项目新增要素)--start--
if  not fc_IsColExists('tproject_store_info','C_CLIENTNAME') then 
  execute immediate 'alter table tproject_store_info add C_CLIENTNAME VARCHAR2(100)';
end if;
if  not fc_IsColExists('tproject_store_info','C_ISCOOPERATION') then 
  execute immediate 'alter table tproject_store_info add C_ISCOOPERATION VARCHAR2(3)';
end if;
if  not fc_IsColExists('tproject_store_info','D_STORAGETIME') then 
  execute immediate 'alter table tproject_store_info add D_STORAGETIME DATE';
end if;
if  not fc_IsColExists('tproject_store_info','C_PROJECTMANAGER') then 
  execute immediate 'alter table tproject_store_info add C_PROJECTMANAGER VARCHAR2(30)';
end if;
if  not fc_IsColExists('tproject_store_info','F_INTENTIONAMOUNT') then 
  execute immediate 'alter table tproject_store_info add F_INTENTIONAMOUNT NUMBER(19,6)';
end if;
if  not fc_IsColExists('tproject_store_info','C_STOCKCOMPANY') then 
  execute immediate 'alter table tproject_store_info add C_STOCKCOMPANY VARCHAR2(100)';
end if;
if  not fc_IsColExists('tproject_store_info','D_INVESTMENTDATE') then 
  execute immediate 'alter table tproject_store_info add D_INVESTMENTDATE DATE';
end if;
--201800705zhangchao(营销项目新增要素)--end--

--201800705zhangchao(营销项目拜访客户信息新增要素)--start--
if  not fc_IsColExists('visitclient_info','C_TEAMLEADER') then 
  execute immediate 'alter table visitclient_info add C_TEAMLEADER VARCHAR2(32)';
end if;
if  not fc_IsColExists('visitclient_info','C_ENTOURAGE1') then 
  execute immediate 'alter table visitclient_info add C_ENTOURAGE1 VARCHAR2(500)';
end if;
if  not fc_IsColExists('visitclient_info','C_HEADOFFICE') then 
  execute immediate 'alter table visitclient_info add C_HEADOFFICE VARCHAR2(100)';
end if;
if  not fc_IsColExists('visitclient_info','C_BRANCHOFFIC') then 
  execute immediate 'alter table visitclient_info add C_BRANCHOFFIC VARCHAR2(100)';
end if;
--201800705zhangchao(营销项目拜访客户信息新增要素)--end--

--20180709lizs20455(受让方关系表) begin--
if not fc_IsTableExists('TAcquiring_PartyInfo') then
  execute immediate 'create table TAcquiring_PartyInfo
(
  C_ID          	VARCHAR2(32) not null,
  c_relationcode          VARCHAR2(100),
  c_projectcode VARCHAR2(255),
  c_companyrelation     VARCHAR2(255),
  c_stockproportion       VARCHAR2(100),
  C_CUSTOMERNO 	VARCHAR2(100),
  constraint PK_TAcquiring_PartyInfo primary key (C_ID)
)';
--20180709lizs20455(受让方关系表) end--
end if;

--201800708caoyi20323(富安资金接口)--start--
if  not fc_IsColExists('TUSER_ACCOUNT_INFO','C_PROVINCECODE') then 
  execute immediate 'alter table TUSER_ACCOUNT_INFO add C_PROVINCECODE VARCHAR2(5)';
end if;
if  not fc_IsColExists('TUSER_ACCOUNT_INFO','C_BANKNO') then 
  execute immediate 'alter table TUSER_ACCOUNT_INFO add C_BANKNO VARCHAR2(50)';
end if;
if  not fc_IsColExists('TUSER_ACCOUNT_INFO','C_CITYNO') then 
  execute immediate 'alter table TUSER_ACCOUNT_INFO add C_CITYNO VARCHAR2(5)';
end if;
if  not fc_IsColExists('TUSER_ACCOUNT_INFO','C_BIGAMOUNTPAYNUMBER') then 
  execute immediate 'alter table TUSER_ACCOUNT_INFO add C_BIGAMOUNTPAYNUMBER VARCHAR2(100)';
end if;
if  not fc_IsColExists('TREPAY_INFO','C_ERRORMSG') then 
  execute immediate 'alter table TREPAY_INFO add C_ERRORMSG VARCHAR2(2000)';
end if;
if  not fc_IsColExists('TREPAY_INFO','C_BATCHNO') then 
  execute immediate 'alter table TREPAY_INFO add C_BATCHNO VARCHAR2(100)';
end if;
if  not fc_IsColExists('TREPAY_ARRIVAL','C_OUTSYS_ID') then 
  execute immediate 'alter table TREPAY_ARRIVAL add C_OUTSYS_ID VARCHAR2(100)';
end if;
--201800708caoyi20323(富安资金接口)--end--

--201800709wcy(处置对象表新增字段)--start--
if not fc_IsColExists('tdisposal_objectinfo','c_objectname') then 
  execute immediate 'alter table tdisposal_objectinfo add c_objectname VARCHAR2(500)';
end if;
if not fc_IsColExists('tdisposal_objectinfo','f_corpusamount') then 
  execute immediate 'alter table tdisposal_objectinfo add f_corpusamount number(19,6)';
end if;
if not fc_IsColExists('tdisposal_objectinfo','f_interest') then 
  execute immediate 'alter table tdisposal_objectinfo add f_interest number(19,6)';
end if;
if not fc_IsColExists('tdisposal_objectinfo','f_appraisementvalue') then 
  execute immediate 'alter table tdisposal_objectinfo add f_appraisementvalue number(19,6)';
end if;
if not fc_IsColExists('tdisposal_objectinfo','f_overcost') then 
  execute immediate 'alter table tdisposal_objectinfo add f_overcost number(19,6)';
end if;
if not fc_IsColExists('tdisposal_objectinfo','c_isneedshow') then 
  execute immediate 'alter table tdisposal_objectinfo add c_isneedshow VARCHAR2(1)';
end if;
--201800709wcy(处置对象表新增字段)--end--

----20180713chenhy18048(业务支出表新增字段)--start--
if not fc_IsColExists('TREPAY_INFO','f_rincome') then
	execute immediate 'alter table TREPAY_INFO add f_rincome number(19,2)';
end if;
if not fc_IsColExists('TREPAY_INFO','f_rcapital') then
	execute immediate 'alter table TREPAY_INFO add f_rcapital number(19,2)';
end if;
if not fc_IsColExists('TREPAY_INFO','c_repayplanid') then
	execute immediate 'alter table TREPAY_INFO add c_repayplanid VARCHAR2(100)';
end if;
----20180713chenhy18048(业务支出表新增字段)--end--
if not fc_IsColExists('TINVEST_FUNDVARY','C_INCOMETYPE') then
	execute immediate 'alter table TINVEST_FUNDVARY add C_INCOMETYPE VARCHAR2(10)';
end if;
--20180712zhangchao(方案表增加字段) star---
if not fc_IsColExists('tscheme_info','C_ISSUBRESTRUCTURING') then
	execute immediate 'alter table tscheme_info add C_ISSUBRESTRUCTURING VARCHAR2(2)';
end if; 
if not fc_IsColExists('tscheme_info','C_ISPROBLEMWITHORG') then
	execute immediate 'alter table tscheme_info add C_ISPROBLEMWITHORG VARCHAR2(2)';
end if; 
if not fc_IsColExists('tscheme_info','F_BENCHMARKPRICE') then
	execute immediate 'alter table tscheme_info add F_BENCHMARKPRICE NUMBER(24,6)';
end if; 
if not fc_IsColExists('tscheme_info','C_PROJECTTYPE_SG') then
	execute immediate 'alter table tscheme_info add C_PROJECTTYPE_SG VARCHAR2(10)';
end if; 
if not fc_IsColExists('tscheme_info','C_ORGANIZATIONTYPE') then
	execute immediate 'alter table tscheme_info add C_ORGANIZATIONTYPE VARCHAR2(32)';
end if; 
if not fc_IsColExists('tscheme_info','C_ORGANIZATIONTYPEINFO') then
	execute immediate 'alter table tscheme_info add C_ORGANIZATIONTYPEINFO VARCHAR2(32)';
end if; 
if not fc_IsColExists('tscheme_info','C_ISDEFAULTACQUISITION') then
	execute immediate 'alter table tscheme_info add C_ISDEFAULTACQUISITION VARCHAR2(2)';
end if; 
if not fc_IsColExists('tscheme_info','C_TRANSACTIONSTRUCTURE') then
	execute immediate 'alter table tscheme_info add C_TRANSACTIONSTRUCTURE VARCHAR2(10)';
end if; 
if not fc_IsColExists('tscheme_info','C_GENERALPARTNER') then
	execute immediate 'alter table tscheme_info add C_GENERALPARTNER VARCHAR2(100)';
end if; 
if not fc_IsColExists('tscheme_info','F_AMOUNTOFCONTRIBUTION') then
	execute immediate 'alter table tscheme_info add F_AMOUNTOFCONTRIBUTION NUMBER(24,6)';
end if; 
if not fc_IsColExists('tscheme_info','C_EXECUTIVEPARTNER') then
	execute immediate 'alter table tscheme_info add C_EXECUTIVEPARTNER VARCHAR2(100)';
end if; 
if not fc_IsColExists('tscheme_info','F_INVESTMENTMOUNT') then
	execute immediate 'alter table tscheme_info add F_INVESTMENTMOUNT NUMBER(24,6)';
end if; 
if not fc_IsColExists('tscheme_info','F_INVESTMENTMOUNT_MU') then
	execute immediate 'alter table tscheme_info add F_INVESTMENTMOUNT_MU NUMBER(24,6)';
end if; 
if not fc_IsColExists('tscheme_info','C_INVESTDATE') then
	execute immediate 'alter table tscheme_info add C_INVESTDATE NUMBER(24,6)';
end if; 
if not fc_IsColExists('tscheme_info','C_QUITTYPE') then
	execute immediate 'alter table tscheme_info add C_QUITTYPE VARCHAR2(10)';
end if; 
if not fc_IsColExists('tscheme_info','C_SHARESNUM') then
	execute immediate 'alter table tscheme_info add C_SHARESNUM NUMBER(19,6)';
end if; 
if not fc_IsColExists('tscheme_info','C_SHAREHOLDINGRATIO_SC') then
	execute immediate 'alter table tscheme_info add C_SHAREHOLDINGRATIO_SC NUMBER(19,6)';
end if; 
if not fc_IsColExists('tscheme_info','C_ESTIMATEDINTERNAL') then
	execute immediate 'alter table tscheme_info add C_ESTIMATEDINTERNAL NUMBER(19,6)';
end if; 
if not fc_IsColExists('tscheme_info','F_TOTALAMOUNT') then
	execute immediate 'alter table tscheme_info add F_TOTALAMOUNT NUMBER(19,6)';
end if; 
if not fc_IsColExists('tscheme_info','F_VATANDOTHER') then
	execute immediate 'alter table tscheme_info add F_VATANDOTHER NUMBER(19,6)';
end if; 
if not fc_IsColExists('tscheme_info','F_ESTIMATEDANNUALIZED') then
	execute immediate 'alter table tscheme_info add F_ESTIMATEDANNUALIZED NUMBER(19,6)';
end if; 
if not fc_IsColExists('tscheme_info','F_RESTRUCTURINGGRACERATE') then
	execute immediate 'alter table tscheme_info add F_RESTRUCTURINGGRACERATE NUMBER(19,6)';
end if; 
--20180712zhangchao(方案表增加字段) end---
----20180719chenhy18048(修改到账确认关联信息表字段)--start--
if fc_IsColExists('TREPAY_CLAIM','L_APPROVEID') then
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_CLAIM'') and column_name = upper(''L_APPROVEID'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_CLAIM modify L_APPROVEID null';
  	end if;
end if;
if fc_IsColExists('TREPAY_CLAIM_APPROVE','PROCESS_INSTANCEID') then
	if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_CLAIM_APPROVE'') and column_name = upper(''PROCESS_INSTANCEID'') and nullable = ''N''') then
		execute immediate 'alter table TREPAY_CLAIM_APPROVE modify PROCESS_INSTANCEID null';
  	end if;
end if;
----20180719chenhy18048(修改到账确认关联信息表字段)--end--
----20180720taolj20522(新增到账流水打款方编号字段)--start--
if  not fc_IsColExists('trepay_arrival','C_PAYER_COMPANY_CODE') then 
  execute immediate 'alter table trepay_arrival add C_PAYER_COMPANY_CODE VARCHAR2(35)';
end if;

if  not fc_IsColExists('TCBMS_FUNDVARY_INVOICE_INFO','C_IDTYPE') then 
  execute immediate 'alter table TCBMS_FUNDVARY_INVOICE_INFO add C_IDTYPE VARCHAR2(1)';
end if;
----20180720taolj20522(新增到账流水打款方编号字段)--end--

--20180720zhuocc21770(修改收包估值新增相关字段)--start--
--借款人
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','f_recpRecoverablescale') then
     execute immediate 'alter table tasset_loanaccount_info add f_recpRecoverablescale number(19,6)';
end if;
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','f_recpRecoverablebalance') then
     execute immediate 'alter table tasset_loanaccount_info add f_recpRecoverablebalance number(19,6)';
end if;
--抵质押物
if not fc_IsColExists('tasset_pawn_info','f_recpMarketprice') then
	execute immediate 'alter table tasset_pawn_info add f_recpMarketprice number(19,6)';
end if; 
if not fc_IsColExists('tasset_pawn_info','f_recpCashprice') then
	execute immediate 'alter table tasset_pawn_info add f_recpCashprice number(19,6)';
end if; 
if not fc_IsColExists('tasset_pawn_info','f_recpCashrate') then
	execute immediate 'alter table tasset_pawn_info add f_recpCashrate number(19,6)';
end if; 
--保证合同
if not fc_IsColExists('TASSET_GUARANTEECONTRACT','f_recpRepayrate') then
    execute immediate 'alter table tasset_guaranteecontract add f_recpRepayrate number(19,6)';
end if;
if not fc_IsColExists('TASSET_GUARANTEECONTRACT','f_recpRemainingguaranteeamount') then
    execute immediate 'alter table tasset_guaranteecontract add f_recpRemainingguaranteeamount number(19,6)';
end if;
--20180720zhuocc21770(修改收包估值新增相关字段)--end--

--20180720zhuocc21770(到账确认信息表新增是否含税)--start--
if not fc_IsColExists('trepay_confirm','c_incomeTax_Type') then
	execute immediate 'alter table trepay_confirm add (c_incomeTax_Type VARCHAR2(10) default ''0'')';
end if;
--20180720zhuocc21770(到账确认信息表新增是否含税)--end--

--20180720wansy24151科目信息表 加是否预算科目字段 start--
if not fc_IsColExists('tsubject_info','c_isbudget') then
	 execute immediate 'alter table tsubject_info add c_isbudget varchar2(2)';
end if;
--20180720wansy24151科目信息表 加是否预算科目字段 end--

--20180720wansy24151 凭证分录表加核算维度字段、排序字段,  start--
if not fc_IsColExists('tamc_voucher_info_entry','l_detailid2') then
	 execute immediate 'alter table tamc_voucher_info_entry add l_detailid2 varchar2(500)';
end if;
if not fc_IsColExists('tamc_voucher_info_entry','c_detail_type2') then
	 execute immediate 'alter table tamc_voucher_info_entry add c_detail_type2 varchar2(10)';
end if;
if not fc_IsColExists('tamc_voucher_info_entry','l_detailid3') then
	 execute immediate 'alter table tamc_voucher_info_entry add l_detailid3 varchar2(500)';
end if;
if not fc_IsColExists('tamc_voucher_info_entry','c_detail_type3') then
	 execute immediate 'alter table tamc_voucher_info_entry add c_detail_type3 varchar2(10)';
end if;
if not fc_IsColExists('tamc_voucher_info_entry','l_order') then
	 execute immediate 'alter table tamc_voucher_info_entry add l_order number(10)';
end if;
--20180720wansy24151凭证分录表加核算维度字段 end--

--20180720wansy24151将凭证分录表的l_detailId字段可以为空--start--
if fc_IsColExists('TAMC_VOUCHER_INFO_ENTRY','l_detailId') then
	if fc_isdataexists('select count(*)  from user_tab_columns where table_name = upper(''TAMC_VOUCHER_INFO_ENTRY'') and column_name = upper(''l_detailId'') and nullable = ''N''') then
		execute immediate 'alter table TAMC_VOUCHER_INFO_ENTRY modify l_detailId VARCHAR2(500) null';
	end if;
end if;
--20180720wansy24151将凭证分录表的l_detailId字段可以为空--end--

--20180720wansy24151凭证分录表 增加核算维度银行账户判别 01 表示存账号， 02表示存账号id end--
if not fc_IsColExists('tamc_voucher_info_entry','c_account_judge') then
   execute immediate 'alter table tamc_voucher_info_entry add c_account_judge varchar2(2)';
end if;
--20180720wansy24151凭证分录表 增加核算维度银行账户判别 01 表示存账号， 02表示存账号 end--

--[201806140573]20180723shiph22854(债权资产改造-增加字段)-- start --
--1、债权资产表即债权合同表
--(1)项目编号
if fc_IsTableExists('tasset_creditorcontract') and not fc_IsColExists('tasset_creditorcontract','c_projectcode') then                            
  execute immediate 'alter table tasset_creditorcontract add c_projectcode VARCHAR2(32)';
end if;
--(2)合同id
if fc_IsTableExists('tasset_creditorcontract') and not fc_IsColExists('tasset_creditorcontract','c_contractid') then                            
  execute immediate 'alter table tasset_creditorcontract add c_contractid VARCHAR2(32)';
end if;
--(3)债权资产类型
if fc_IsTableExists('tasset_creditorcontract') and not fc_IsColExists('tasset_creditorcontract','c_creditorassettype') then                            
  execute immediate 'alter table tasset_creditorcontract add c_creditorassettype VARCHAR2(8)';
end if;
--(4)还款方式
if fc_IsTableExists('tasset_creditorcontract') and not fc_IsColExists('tasset_creditorcontract','c_repaytype') then                            
  execute immediate 'alter table tasset_creditorcontract add c_repaytype VARCHAR2(2)';
end if;
--(5)债权资产编号
if fc_IsTableExists('tasset_creditorcontract') and not fc_IsColExists('tasset_creditorcontract','c_creditorassetcode') then                            
  execute immediate 'alter table tasset_creditorcontract add c_creditorassetcode VARCHAR2(600)';
end if;
--2、合同表
--(1)生成投资类债权资产标志
if fc_IsTableExists('tinvest_contract') and not fc_IsColExists('tinvest_contract','c_isgeneratecreditorasset') then                            
  execute immediate 'alter table tinvest_contract add c_isgeneratecreditorasset VARCHAR2(2)';
end if;
--[201806140573]20180723shiph22854(债权资产改造-增加字段)--end-

--20180731kangxin(新增合同社会资本方表) --start--
if not fc_IsTableExists('TINVEST_CONTRACT_CAPITALPARTY') then
execute immediate '
	create table TINVEST_CONTRACT_CAPITALPARTY
	(
	  L_CAPITALPARTYID   NUMBER not null,
	  C_CAPITALPARTYCODE    VARCHAR2(32) not null,
	  C_CONTRACTID	VARCHAR2(32),
	  f_money number(19,6)
	)';
  
end if;

if fc_IsTableExists('TINVEST_CONTRACT_CAPITALPARTY') and not fc_Constraints_Exists('TINVEST_CONTRACT_CAPITALPARTY','PK_CONTRACT_CAPITALPARTY','P','0') then
    execute immediate '
	  alter table TINVEST_CONTRACT_CAPITALPARTY
	  add constraint PK_CONTRACT_CAPITALPARTY primary key (L_CAPITALPARTYID)
	  using index ';
  end if;

if not fc_IsSeqExists('SEQ_CONTRACT_CAPITALPARTY_ID') then
	execute immediate '
			create sequence SEQ_CONTRACT_CAPITALPARTY_ID
			minvalue 1
			maxvalue 999999999
			start with 1000
			increment by 1
			cache 20';
end if;
--20180731kangxin(新增合同社会资本方表) --end--
--20180730panjq24368(合同-股权资产-增加字段：收益上下限)--Start-
----增加合同表——预期投资收益率字段,资产持有人、是否代持、股权性质
if fc_istableexists('TINVEST_CONTRACT') and not fc_IsColExists('TINVEST_CONTRACT','c_predictyield') then
    execute immediate 'alter table TINVEST_CONTRACT add c_predictyield varchar2(382)';
end if;
if fc_istableexists('TINVEST_CONTRACT') and not fc_IsColExists('TINVEST_CONTRACT','c_predictyieldlimit') then
    execute immediate 'alter table TINVEST_CONTRACT add c_predictyieldlimit varchar2(255)';
end if;
if fc_istableexists('TINVEST_CONTRACT') and not fc_IsColExists('TINVEST_CONTRACT','C_ASSETHOLDER') then
    execute immediate 'alter table TINVEST_CONTRACT add C_ASSETHOLDER varchar2(48)';
end if;
if fc_istableexists('TINVEST_CONTRACT') and not fc_IsColExists('TINVEST_CONTRACT','C_EQUITYNATURE') then
    execute immediate 'alter table TINVEST_CONTRACT add C_EQUITYNATURE varchar2(32)';
end if;
if fc_istableexists('TINVEST_CONTRACT') and not fc_IsColExists('TINVEST_CONTRACT','C_SHAREHOLDING') then
    execute immediate 'alter table TINVEST_CONTRACT add C_SHAREHOLDING varchar2(1)';
end if;
 ----增加股权资产表——投资收益率字段
if fc_istableexists('TEQUITY_ASSETS_INFO') and not fc_IsColExists('TEQUITY_ASSETS_INFO','c_predictyield') then
    execute immediate 'alter table TEQUITY_ASSETS_INFO add c_predictyield varchar2(382)';
end if;
if fc_istableexists('TEQUITY_ASSETS_INFO') and not fc_IsColExists('TEQUITY_ASSETS_INFO','c_predictyieldlimit') then
    execute immediate 'alter table TEQUITY_ASSETS_INFO add c_predictyieldlimit varchar2(255)';
end if;
--20180730panjq24368(合同-股权资产-增加字段：收益上下限)--End-
--20180731chuyy(新增合同要素) --start--

if not fc_IsColExists('TINVEST_CONTRACT','c_othercontract') then
 execute immediate 'alter table tinvest_contract add ( c_othercontract varchar2(255) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_companyfundshare') then
 execute immediate 'alter table tinvest_contract add ( f_companyfundshare NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_incomeallotmode') then
 execute immediate 'alter table tinvest_contract add ( c_incomeallotmode varchar2(255) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_abcfinancefund') then
 execute immediate 'alter table tinvest_contract add ( f_abcfinancefund NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_isfundmanager') then
 execute immediate 'alter table tinvest_contract add ( c_isfundmanager varchar2(255) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_fundmanagermoney') then
 execute immediate 'alter table tinvest_contract add ( f_fundmanagermoney NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_fundtotalscale') then
 execute immediate 'alter table tinvest_contract add ( f_fundtotalscale NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_buycreditorprincipal') then
 execute immediate 'alter table tinvest_contract add ( f_buycreditorprincipal NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_buycreditorfine') then
 execute immediate 'alter table tinvest_contract add ( f_buycreditorfine NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_buycreditortotalamount') then
 execute immediate 'alter table tinvest_contract add ( f_buycreditortotalamount NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_buycreditorinterest') then
 execute immediate 'alter table tinvest_contract add ( f_buycreditorinterest NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_buycreditorcominterest') then
 execute immediate 'alter table tinvest_contract add ( f_buycreditorcominterest NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_actualholding') then
 execute immediate 'alter table tinvest_contract add ( f_actualholding NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_totalscale') then
 execute immediate 'alter table tinvest_contract add ( f_totalscale NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_transfermode') then
 execute immediate 'alter table tinvest_contract add ( c_transfermode varchar2(255) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_transfermoney') then
 execute immediate 'alter table tinvest_contract add ( f_transfermoney NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_debtmoney') then
 execute immediate 'alter table tinvest_contract add ( f_debtmoney NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_isassure') then
 execute immediate 'alter table tinvest_contract add ( c_isassure varchar2(255) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','c_assuresituation') then
 execute immediate 'alter table tinvest_contract add ( c_assuresituation varchar2(255) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_anvestfundmoney') then
 execute immediate 'alter table tinvest_contract add ( f_anvestfundmoney NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','f_fundmanagershare') then
 execute immediate 'alter table tinvest_contract add ( f_fundmanagershare NUMBER(19,6) null)';
end if;
if not fc_IsColExists('TINVEST_CONTRACT','C_DEPTID') then
 execute immediate 'alter table tinvest_contract add ( C_DEPTID varchar2(255) null)';
end if;
--20180731chuyy(新增合同要素) --end--

--[201807230641]20180803yuxd25447(债权合同表--新增字段)-- strat --
if  not fc_IsColExists('TASSET_CREDITORCONTRACT','F_INITPRINCIPAl') then 
  execute immediate 'alter table TASSET_CREDITORCONTRACT add F_INITPRINCIPAl NUMBER(19,6)';
end if;
--[201807230641]20180803yuxd25447(债权合同表--新增字段)-- end --

--20180802zhuocc21770(添加转让处置平台) start--
if  not fc_IsColExists('TPROJECT_INFO_AMC','c_transferplatform') then 
  execute immediate 'alter table tproject_info_amc add c_transferplatform varchar2(2)';
end if;
--20180802zhuocc21770(添加转让处置平台) end--
--20180802zhuocc21770(合同新增成交价格、成交人) start--
if  not fc_IsColExists('TINVEST_CONTRACT','f_transferprice') then 
  execute immediate 'alter table tinvest_contract add f_transferprice number(25,8)';
end if;
if  not fc_IsColExists('TINVEST_CONTRACT','c_clinch') then 
  execute immediate 'alter table tinvest_contract add c_clinch varchar2(32)';
end if;
--20180802zhuocc21770(合同新增成交价格、成交人) end--

--20180803luheng24337(借款人信息表添加资产类型字段) start--
if  not fc_IsColExists('TASSET_LOANACCOUNT_INFO','C_ASSET_CATEGORY') then 
  execute immediate 'alter table TASSET_LOANACCOUNT_INFO add C_ASSET_CATEGORY varchar2(32)';
end if;
--20180803luheng24337(借款人信息表添加资产类型字段) end--

--20180803luheng24337(移动营销) start--
if not fc_IsTableExists('TNOTICE_CUSTOMER_PAWN') then
execute immediate 'create table TNOTICE_CUSTOMER_PAWN
(
  c_id        VARCHAR2(32) not null,
  c_cid       VARCHAR2(32),
  c_province  VARCHAR2(32),
  c_city      VARCHAR2(32),
  c_assettype VARCHAR2(32),
  c_pawnname  VARCHAR2(1024),
  c_pawnarea  VARCHAR2(32),
  c_county    VARCHAR2(32)
)';
execute immediate ' 
  alter table TNOTICE_CUSTOMER_PAWN
  add constraint PK_TNOTICE_CUSTOMER_PAWN_ID primary key (c_id)';
end if;

if  not fc_IsColExists('TNOTICE_INFO','C_PICFILES') then 
  execute immediate 'alter table TNOTICE_INFO add C_PICFILES varchar2(2048)';
end if;

if  not fc_IsColExists('TNOTICE_CUSTOMER','C_COUNTY') then 
  execute immediate 'alter table TNOTICE_CUSTOMER add C_COUNTY varchar2(32)';
end if;

if  not fc_IsColExists('TNOTICE_CUSTOMER','C_ASSETCLASS') then 
  execute immediate 'alter table TNOTICE_CUSTOMER add C_ASSETCLASS varchar2(32)';
end if;

--20180803luheng24337(移动营销) end--

--20180827luheng24337(移动营销公告添加是否推送微信) start--
if fc_istableexists('TNOTICE_INFO') and not fc_IsColExists('TNOTICE_INFO','C_WX_STATUS') then 
  execute immediate 'alter table TNOTICE_INFO add C_WX_STATUS varchar2(10)';
end if;
--20180827luheng24337(移动营销公告添加是否推送微信) end--


--20180828luheng24337(移动营销公告借款人添加利息字段) start--
if fc_istableexists('TNOTICE_CUSTOMER') and not fc_IsColExists('TNOTICE_CUSTOMER','C_INTEREST') then 
  execute immediate 'alter table TNOTICE_CUSTOMER add C_INTEREST varchar2(32)';
end if;
if fc_istableexists('TNOTICE_CUSTOMER') and not fc_IsColExists('TNOTICE_CUSTOMER','C_LOANCODE') then 
  execute immediate 'alter table TNOTICE_CUSTOMER add C_LOANCODE varchar2(32)';
end if;
--20180828luheng24337(移动营销公告借款人添加利息字段) end--

--20180803kangxin(股权交割新增字段) --start--
if not fc_IsColExists('TEQUITY_ASSETS_INFO','d_realinvestdate') then
    execute immediate 'alter table TEQUITY_ASSETS_INFO add d_realinvestdate date';
end if;
if not fc_IsColExists('tinvest_fundvary','d_realinvestdate') then
    execute immediate 'alter table tinvest_fundvary add d_realinvestdate date';
end if;
if not fc_IsColExists('tinvest_fundvary','f_equityratio') then
    execute immediate 'alter table tinvest_fundvary add f_equityratio number(19,6)';
end if;
--20180803kangxin(股权交割新增字段) --end--
--20180806liusl(方案表增加字段) start---
if not fc_IsColExists('tscheme_info','F_DISTRIBUTIONSCALE') then
	execute immediate 'alter table tscheme_info add F_DISTRIBUTIONSCALE NUMBER(19,6)';
end if; 
--20180806liusl(方案表增加字段) end---
--20180731chuyy(新增合同要素-承做部门) --start--
if not fc_IsColExists('TINVEST_CONTRACT','C_DEPARTMENT') then
	execute immediate 'alter table TINVEST_CONTRACT add ( C_DEPARTMENT varchar2(255) null)';
end if; 

--20180731chuyy(新增合同要素-承做部门) --end--

--20180808zhuocc21770(破产信息新增实际清收金额、回款时间) start--
if not fc_IsColExists('TBANKRUPTCY_INFO','f_actualcollectionamount') then 
  execute immediate 'alter table tbankruptcy_info add f_actualcollectionamount number(19,6)';
end if;
if not fc_IsColExists('TBANKRUPTCY_INFO','d_returntime') then 
  execute immediate 'alter table tbankruptcy_info add d_returntime DATE';
end if;
--20180808zhuocc21770(破产信息新增实际清收金额、回款时间) start--
--20180808panjq24368(借款人信息表行业增加字段长度) start--
if   fc_IsColExists('TASSET_LOANACCOUNT_INFO','C_INDUSTRYDETAIL') then 
  execute immediate 'alter table  TASSET_LOANACCOUNT_INFO modify   C_INDUSTRYDETAIL  varchar2(32)';
end if;
--20180808panjq24368(借款人信息表行业增加字段长度) End--


--20180809chenhy18048(到账确认配置表增加是否冲销债权字段)start--
if not fc_IsColExists('TREPAY_CONFIRM_CONFIG','c_iscreditorContract') then 
  execute immediate 'alter table TREPAY_CONFIRM_CONFIG add c_iscreditorContract VARCHAR2(1)';
end if;
--20180809chenhy18048(到账确认配置表增加是否冲销债权字段)end--

--20180731chuyy(新增合同要素-银行/机构) --start--
if not fc_IsColExists('TINVEST_CONTRACT','c_bankorinstitution') then
 execute immediate 'alter table tinvest_contract add ( c_bankorinstitution varchar2(255) null)';
end if;
--20180731chuyy(新增合同要素-银行/机构) --end--
--20180809zhanzh19829(收款计划) -- start--
if not fc_IsTableExists('TRECEIVABLES_PLAN') then
execute immediate '
create table TRECEIVABLES_PLAN
(
  l_id               NUMBER(9) not null,
  c_projectcode      VARCHAR2(32),
  c_type             VARCHAR2(5),
  c_level            CHAR(1),
  d_start_date       DATE,
  d_end_date         DATE,
  f_preoccur_balance NUMBER(19,2),
  c_status           CHAR(1),
  c_approve_status   CHAR(1),
  c_remark           VARCHAR2(32),
  d_create_time      DATE,
  c_updater          VARCHAR2(32),
  d_update_time      DATE,
  c_creater          VARCHAR2(32)
)';
execute immediate '
alter table TRECEIVABLES_PLAN
  add constraint TRECEIVABLES_PLAN primary key (L_ID)';
  
end if;


if not fc_IsSeqExists('SEQ_RECEIVABLES_PLAN_ID') then
execute immediate '
 create sequence SEQ_RECEIVABLES_PLAN_ID
minvalue 1
maxvalue 999999999
start with 1000
increment by 1
cache 20';
end if;


--20180809zhanzh19829(收款追踪计划) -- start--

if not fc_IsTableExists('TRECEIVABLES_PLAN_TRACE') then
execute immediate '
create table TRECEIVABLES_PLAN_TRACE
(
  l_id                   NUMBER(9) not null,
  l_planid               NUMBER(9),
  d_initstart_date       DATE,
  d_initend_date         DATE,
  f_initpreoccur_balance NUMBER(19,2),
  c_initstatus           CHAR(1),
  c_initlevel            CHAR(1),
  d_start_date           DATE,
  d_end_date             DATE,
  f_preoccur_balance     NUMBER(19,2),
  c_status               CHAR(1),
  c_level                CHAR(1),
  c_remark               VARCHAR2(32),
  c_creater              VARCHAR2(32),
  d_create_time          DATE,
  c_type                 VARCHAR2(5),
  c_approve_status       CHAR(1),
  process_instanceid     VARCHAR2(100)
)';
execute immediate '
alter table TRECEIVABLES_PLAN_TRACE
  add constraint TRECEIVABLES_PLAN_TRACE primary key (L_ID)';

end if;

if not fc_IsSeqExists('SEQ_RECEIVABLES_PLAN_TRACE_ID') then
execute immediate '
 create sequence SEQ_RECEIVABLES_PLAN_TRACE_ID
minvalue 1
maxvalue 999999999
start with 1000
increment by 1
cache 20';
end if;

--201800809zhanzh19829(厦门个性化)--end--

--20180810wansy24151 凭证中间表增加字段 其他系统对应字段的名称 start--
if not fc_IsColExists('tbusiness_object_out_relation','c_outname') then
	 execute immediate 'alter table tbusiness_object_out_relation add c_outname varchar2(200)';
end if;
--20180810wansy24151 凭证中间表增加字段 其他系统对应字段的名称 end--

----20180813wansy24151(科目分录模板表增加字段 金额正负 C_PLUS_MINUS )--  --start--
if not fc_IsColExists('tvoucher_entry','C_PLUS_MINUS') then
	 execute immediate 'alter table tvoucher_entry add C_PLUS_MINUS varchar2(1)';
end if;
----20180813wansy24151(科目分录模板表增加字段 金额正负 C_PLUS_MINUS )--  --end--

----20180814wcy14800(处置对象表增加字段合同编号 )--  --start--
if not fc_IsColExists('tdisposal_objectinfo','c_contractid') then
	 execute immediate 'alter table tdisposal_objectinfo add c_contractid varchar2(32)';
end if;
----20180814wcy14800(处置对象表增加字段合同编号 )--  --end--
--20180815panjq(董监事管理相关表) -- start--
--董监事委派信息表
if not fc_IsTableExists('TSUPERVISOR_APPOINTMENT') then
execute immediate '
create table TSUPERVISOR_APPOINTMENT 
(
   L_ID                 NUMBER               not null,
   L_SUPERVISORID       NUMBER,
   C_USERID             VARCHAR2(48),
   C_ENTERPRISE         VARCHAR2(600),
   C_DUTY               VARCHAR2(20),
   D_APPOINDATE         DATE,
   D_OFFICEBEGINDATE    DATE,
   D_OFFICEENDDATE      DATE,
   C_REMARK             VARCHAR2(4000),
   L_EQUITYASSETNO      NUMBER(10),
   PROCESS_INSTANCEID   VARCHAR2(100),
   C_FLOWSTATUS         VARCHAR2(20),
   C_STATUS             VARCHAR2(3),
   C_TEMPCODE           VARCHAR2(48),
   L_SERIALNO           NUMBER,
   PARENT_PROCESS_INSTANCEID VARCHAR2(100),
   C_CREATOR_ID         Varchar2(96),
   C_CREATOR            Varchar2(96),
   D_CREATED_TIME       DATE,
   C_LAST_UPDATOR_ID    Varchar2(96),
   C_LAST_UPDATOR       Varchar2(96),
   D_LAST_UPDATED_TIME  DATE,
   constraint PK_TSUPERVISOR_APPOINTMENT primary key (L_ID)
)';

end if;

if not fc_IsSeqExists('SEQ_SUPERVISOR_APPOINTMENT_ID') then
execute immediate '
 create sequence SEQ_SUPERVISOR_APPOINTMENT_ID
increment by 1
start with 1000
maxvalue 999999999
 minvalue 1
 cache 20';
end if;
--董监事表
if not fc_IsTableExists('TSUPERVISOR_INFO') then
execute immediate '
create table TSUPERVISOR_INFO 
(
   L_ID                 NUMBER               not null,
   C_USERNAME           VARCHAR2(96),
   C_GENDER             VARCHAR2(20),
   C_BIRTHDAY           DATE,
   C_ORGLVL1            VARCHAR2(600),
   C_ORGLVL2            VARCHAR2(600),
   C_DUTY               VARCHAR2(20),
   C_REMARK             VARCHAR2(4000),
   C_CREATOR_ID         Varchar2(96),
   C_CREATOR            Varchar2(96),
   D_CREATED_TIME       DATE,
   C_LAST_UPDATOR_ID    Varchar2(96),
   C_LAST_UPDATOR       Varchar2(96),
   D_LAST_UPDATED_TIME  DATE,
   constraint PK_TSUPERVISOR_INFO primary key (L_ID)
)';

end if;

if not fc_IsSeqExists('SEQ_SUPERVISOR_INFO_ID') then
execute immediate '
 create sequence SEQ_SUPERVISOR_INFO_ID
increment by 1
start with 1000
maxvalue 999999999
 minvalue 1
 cache 20';
end if;
--董监事评价明细表
if not fc_IsTableExists('TSUPERVISOR_EVALUATION_DETAIL') then
execute immediate '
create table TSUPERVISOR_EVALUATION_DETAIL 
(
   L_ID                 NUMBER               not null,
   L_EVALRESULTID       Varchar2(48),
   L_EVALITEMID         Varchar2(48),
   F_SCORE              NUMBER(3),
   C_CREATOR_ID         Varchar2(96),
   C_CREATOR            Varchar2(96),
   D_CREATED_TIME       DATE,
   C_LAST_UPDATOR_ID    Varchar2(96),
   C_LAST_UPDATOR       Varchar2(96),
   D_LAST_UPDATED_TIME  DATE,
   constraint PK_TSUPERVISOR_EVALUATION_DETA primary key (L_ID)
)';

end if;

if not fc_IsSeqExists('SEQ_SE_DETAIL_ID') then
execute immediate '
 create sequence SEQ_SE_DETAIL_ID
increment by 1
start with 1000
maxvalue 999999999
 minvalue 1
 cache 20';
end if;
--董监事评价结果表
if not fc_IsTableExists('TSUPERVISOR_EVALUATION_RESULT') then
execute immediate '
create table TSUPERVISOR_EVALUATION_RESULT 
(
   L_ID                 NUMBER               not null,
   L_SUPERVISORID       NUMBER,
   C_SATISFACTION       VARCHAR2(20),
   D_EVALDATE           DATE,
   C_USERID             VARCHAR2(32),
   F_TOTALSCORE         NUMBER(3),
   C_GENERALEVAL        VARCHAR2(512),
   C_CREATOR_ID         Varchar2(96),
   C_CREATOR            Varchar2(96),
   D_CREATED_TIME       DATE,
   C_LAST_UPDATOR_ID    Varchar2(96),
   C_LAST_UPDATOR       Varchar2(96),
   D_LAST_UPDATED_TIME  DATE,
   constraint PK_TSUPERVISOR_EVALUATION_RESU primary key (L_ID)
)';

end if;

if not fc_IsSeqExists('SEQ_SE_RESULT_ID') then
execute immediate '
create sequence SEQ_SE_RESULT_ID
increment by 1
start with 1000
maxvalue 999999999
 minvalue 1
 cache 20';
end if;
--董监事评价项表
if not fc_IsTableExists('TSUPERVISOR_EVALUATION_ITEM') then
execute immediate '
create table TSUPERVISOR_EVALUATION_ITEM 
(
   L_ID                 NUMBER               not null,
   C_EVALITEMNAME       VARCHAR2(255),
   C_EVALITEMSCORE      NUMBER(3),
   F_EVALORDER          NUMBER(2),
   D_CREATEDTIME        DATE,
   C_ISVALID            varchar2(20),
   C_CREATOR_ID         Varchar2(96),
   C_CREATOR            Varchar2(96),
   D_CREATED_TIME       DATE,
   C_LAST_UPDATOR_ID    Varchar2(96),
   C_LAST_UPDATOR       Varchar2(96),
   D_LAST_UPDATED_TIME  DATE,
   constraint PK_TSUPERVISOR_EVALUATION_ITEM primary key (L_ID)
)';

end if;

if not fc_IsSeqExists('SEQ_SE_ITEM_ID') then
execute immediate '
create sequence SEQ_SE_ITEM_ID
increment by 1
start with 1000
maxvalue 999999999
 minvalue 1
 cache 20';
end if;
--董监事委派流水项表
if not fc_IsTableExists('TSUPERVISOR_APPOINTMENT_TRACE') then
execute immediate '
create table TSUPERVISOR_APPOINTMENT_TRACE 
(
   L_SERIALNO           NUMBER  not null,
   C_FACTORCODE         VARCHAR2(75),
   C_INITVALUE          VARCHAR2(4000),
   C_MODIFYVALUE        VARCHAR2(4000),
   C_MODIFYUSER         VARCHAR2(30),
   D_MODIFYTIME         DATE,
   C_REVIEWUSER         VARCHAR2(30),
   D_REVIEWTIME         DATE,
   C_HASREVIEW          VARCHAR2(1),
   C_HASEFFECT          VARCHAR2(1),
   C_TEMPCODE           VARCHAR2(30),
   C_MAINTABLEKEY       VARCHAR2(48),
   constraint PK_TSUPERVISOR_APPOINTMENT_TRA primary key (L_SERIALNO)
)';

end if;

if not fc_IsSeqExists('SEQ_APPOINTMENT_TRACE_ID') then
execute immediate '
create sequence SEQ_APPOINTMENT_TRACE_ID
increment by 1
start with 1000
maxvalue 999999999
 minvalue 1
 cache 20';
end if;
--20180815panjq(董监事管理相关表) -- End--


--20180815luheng24337 抵质押物表添加字段 --start--
if  not fc_IsColExists('TASSET_PAWN_INFO','c_pawntypeex') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_pawntypeex VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_tempcode') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_tempcode VARCHAR2(32)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','d_invest_date') then 
  execute immediate 'alter table TASSET_PAWN_INFO add d_invest_date date';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_investor') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_investor VARCHAR2(32)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_land_useage') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_land_useage VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_house_useage') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_house_useage VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_build_area') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_build_area NUMBER(19,6)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','d_completed_date') then 
  execute immediate 'alter table TASSET_PAWN_INFO add d_completed_date date';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_floor_no') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_floor_no NUMBER(5)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_near_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_near_status VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_use_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_use_status VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_rent') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_rent NUMBER(19,6)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_traffic_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_traffic_status VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_pawn_near') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_pawn_near VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_near_road_type') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_near_road_type VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_near_facility') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_near_facility VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_uptown_area') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_uptown_area VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_uptown_type') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_uptown_type VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_build_type') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_build_type VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factory_useage') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factory_useage VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factory_near') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factory_near VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_clean_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_clean_status VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factory_area') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factory_area VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factory_type') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factory_type VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_material_type') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_material_type VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_floor_num') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_floor_num NUMBER(5)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_direction') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_direction VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_decorate') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_decorate VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_land_boundary') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_land_boundary VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_floor_price') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_floor_price NUMBER(19,6)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_pawn_owner') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_pawn_owner VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_pawn_brand') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_pawn_brand VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_pawn_spec') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_pawn_spec VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_plate_type') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_plate_type VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_plate_no') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_plate_no VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_new_ratio') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_new_ratio VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_reg_no') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_reg_no VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_storage_place') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_storage_place VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_buy_price') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_buy_price NUMBER(19,6)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_total_price') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_total_price NUMBER(19,6)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_health_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_health_status VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_conserve_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_conserve_status VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_market_status') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_market_status VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_reg_dept') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_reg_dept VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_impawn_no') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_impawn_no VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_warehouse') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_warehouse VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_regulator') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_regulator VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_safekeep_dept') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_safekeep_dept VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_receipt_no') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_receipt_no VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_warehouse_no') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_warehouse_no VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_goods_heap') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_goods_heap VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','C_SCHOOL_STATUS') then 
  execute immediate 'alter table TASSET_PAWN_INFO add C_SCHOOL_STATUS VARCHAR2(32)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','C_AFFOREST') then 
  execute immediate 'alter table TASSET_PAWN_INFO add C_AFFOREST VARCHAR2(32)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','C_LAND_NATURE') then 
  execute immediate 'alter table TASSET_PAWN_INFO add C_LAND_NATURE VARCHAR2(64)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','C_UPTOWN_NAME') then 
  execute immediate 'alter table TASSET_PAWN_INFO add C_UPTOWN_NAME VARCHAR2(64)';
end if;
if not fc_IsColNULLABLE('TASSET_PAWN_INFO','C_MORTGAGECONTRACTCODE') then
	execute immediate 'ALTER TABLE TASSET_PAWN_INFO  MODIFY C_MORTGAGECONTRACTCODE NULL';
end if;
if not fc_IsColNULLABLE('TASSET_PAWN_INFO','C_PAWNNUM') then
	execute immediate 'ALTER TABLE TASSET_PAWN_INFO  MODIFY C_PAWNNUM NULL';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factor_usestatus') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factor_usestatus VARCHAR2(4)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_factor_rent') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_factor_rent NUMBER(19,6)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','f_factor_floornum') then 
  execute immediate 'alter table TASSET_PAWN_INFO add f_factor_floornum NUMBER(5)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factor_direction') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factor_direction VARCHAR2(500)';
end if;
if  not fc_IsColExists('TASSET_PAWN_INFO','c_factor_decorate') then 
  execute immediate 'alter table TASSET_PAWN_INFO add c_factor_decorate VARCHAR2(500)';
end if;
--20180815luheng24337 抵质押物表添加字段 --end--

--[M201808160566]20180816shiph22854(投后跟踪记录增加字段编号和检查方式)-- start --
--1、投后跟踪记录表
--(1)编号(记录同一个项目发起投后跟踪记录的次数)
if fc_IsTableExists('tafter_investment_trace_record') and not fc_IsColExists('tafter_investment_trace_record','c_projectcountnum') then                            
  execute immediate 'alter table tafter_investment_trace_record add c_projectcountnum VARCHAR2(10)';
end if;
--(2)检查方式，CHECK_TYPE:0-现场；1-非现场
if fc_IsTableExists('tafter_investment_trace_record') and not fc_IsColExists('tafter_investment_trace_record','c_checktype') then                            
  execute immediate 'alter table tafter_investment_trace_record add c_checktype VARCHAR2(2)';
end if;
--[M201808160566]20180816shiph22854(投后跟踪记录增加字段编号和检查方式)-- start --

--[M201808170159]20180816dutao23901 广州个性化 抵质押合同和存储中间表增加字段最高抵质押金额 --start--
if not fc_IsColExists('tasset_mortgagecontract','f_mortgagemaxmoney') then
	 execute immediate 'alter table tasset_mortgagecontract add f_mortgagemaxmoney number(19,6)';
end if;

if not fc_IsColExists('t_int_asset_mortgagecontract','f_mortgagemaxmoney') then
	 execute immediate 'alter table t_int_asset_mortgagecontract add f_mortgagemaxmoney number(19,6)';
end if;
--[M201808170159]20180816dutao23901 广州个性化 抵质押合同和存储中间表增加字段最高抵质押金额 --end--
--20180817zhangchao(修改TPROJECT_FACTOR_INFO中C_COPYFROMOUT的长度)--start--
  if fc_IsColExists('tproject_factor_info','C_COPYFROMOUT') then
     execute immediate 'alter table tproject_factor_info modify C_COPYFROMOUT varchar2(150)';
   end if;
--20180817zhangchao(修改TPROJECT_FACTOR_INFO中C_COPYFROMOUT的长度)--end--

--[M201808170824]20180821liuan23902 工银个性化 股权资产表中添加流程实例号字段 --start--
if not fc_IsColExists('tequity_assets_info','PROCESS_INSTANCEID') then
    execute immediate 'alter table tequity_assets_info add PROCESS_INSTANCEID varchar2(100)';
end if;
--[M201808170824]20180821liuan23902 工银个性化 股权资产表中添加流程实例号字段 --end--

--20180817zhuocc21770中介机构新增字段 --start--
if not fc_IsColExists('TALTERNATIVE_LIBRARY','C_LEGALCERKIND') then
	execute immediate 'alter table talternative_library add C_LEGALCERKIND varchar2(2)';
end if;

if not fc_IsColExists('talternative_lawyer','c_contacttel') then
	execute immediate 'alter table talternative_lawyer add c_contacttel varchar2(32)';
end if;

if not fc_IsColExists('talternative_lawyer','c_contactmail') then
	execute immediate 'alter table talternative_lawyer add c_contactmail varchar2(32)';
end if;
--20180817zhuocc21770中介机构新增字段 --end--

--[M201808170221]20180817shiph22854(新增股权资产明细表)-- start --
if not fc_IsTableExists('TEQUITY_ASSET_DETAIL') then
    execute immediate '
		create table TEQUITY_ASSET_DETAIL
			(
			  l_id                  number not null,
			  l_equityassetno       number not null,
			  l_ijourid				number,
			  d_registerdate        date,
			  f_investbalance       number(19,6),
			  f_investremaining     number(19,6),
			  l_stockamount         number,
			  f_equityratio    		number(19,6),
			  c_contractid          varchar2(32),
			  d_realinvestdate      date,
			  c_creator_id        	VARCHAR2(100),
			  c_creator           	VARCHAR2(100),
			  d_created_time      	DATE not null,
			  c_last_updator_id   	VARCHAR2(100),
			  c_last_updator      	VARCHAR2(100),
			  d_last_updated_time 	DATE			  
			)';
end if;
--新建股权资产明细表的主键
if fc_IsTableExists('TEQUITY_ASSET_DETAIL') and not fc_Constraints_Exists('TEQUITY_ASSET_DETAIL','PK_TEQUITY_ASSET_DETAIL','P','0') then
    execute immediate '
	  alter table TEQUITY_ASSET_DETAIL
		  add constraint PK_TEQUITY_ASSET_DETAIL primary key (L_ID)
		  using index ';
end if;
--新建序列，用于股权资产明细表的主键
if not fc_IsSeqExists('SEQ_EQUITY_ASSET_DETAIL_ID') then
	execute immediate 'create sequence SEQ_EQUITY_ASSET_DETAIL_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--资金流水id
if fc_IsTableExists('TEQUITY_ASSET_DETAIL') and not fc_IsColExists('TEQUITY_ASSET_DETAIL','l_ijourid') then
	execute immediate 'alter table TEQUITY_ASSET_DETAIL add l_ijourid number';
end if;
--[M201808170221]20180817shiph22854(新增股权资产明细表)--end --

--[M201808170221]20180817shiph22854(股权资产改造，股权资产表新增跟踪流水id、投资主体字段)--start --
if fc_IsTableExists('TEQUITY_ASSETS_INFO') and not fc_IsColExists('TEQUITY_ASSETS_INFO','L_SERIALNO') then
	execute immediate 'alter table TEQUITY_ASSETS_INFO add L_SERIALNO number';
end if;
if fc_IsTableExists('TEQUITY_ASSETS_INFO') and not fc_IsColExists('TEQUITY_ASSETS_INFO','c_maininvestpart') then
	execute immediate 'alter table TEQUITY_ASSETS_INFO add c_maininvestpart VARCHAR2(48)';
end if;
--[M201808170221]20180817shiph22854(股权资产改造，股权资产表新增跟踪流水id、投资主体字段)--end --

 --20180819-zhanzh(用款计划表增加字段)
  if not fc_IsColExists('Tpay_Plan','process_instanceid') then
     execute immediate 'alter table Tpay_Plan  add process_instanceid VARCHAR2(100)';
   end if;
    --20180819-panjq24368(董监事委派信息表新增字段)
  if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','L_EQUITYASSETNO') then
     execute immediate 'alter table TSUPERVISOR_APPOINTMENT  add L_EQUITYASSETNO NUMBER(10)';
   end if;
  if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','PROCESS_INSTANCEID') then
     execute immediate 'alter table TSUPERVISOR_APPOINTMENT  add PROCESS_INSTANCEID VARCHAR2(100)';
   end if;
  if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','C_FLOWSTATUS') then
     execute immediate 'alter table TSUPERVISOR_APPOINTMENT  add C_FLOWSTATUS VARCHAR2(20)';
   end if;
  if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','C_STATUS') then
     execute immediate 'alter table TSUPERVISOR_APPOINTMENT  add C_STATUS VARCHAR2(3)';
   end if;
   if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','C_TEMPCODE') then
     execute immediate 'alter table TSUPERVISOR_APPOINTMENT  add C_TEMPCODE VARCHAR2(48)';
   end if;
   
----20180820wansy24151(核收费详情表 增加字段制单状态  )--  --start--
if not fc_IsColExists('trepay_checkcharge_detail','C_VOUCHERS_STATE') then
	 execute immediate 'alter table trepay_checkcharge_detail add C_VOUCHERS_STATE varchar2(5)';
end if;
----20180820wansy24151(核收费详情表 增加字段制单状态  )--  --end--

----20180820wansy24151(凭证分录表增加字段 现金流量 )--  --start--
if not fc_IsColExists('tamc_voucher_info_entry','C_CASHFLOW') then
	 execute immediate 'alter table tamc_voucher_info_entry add C_CASHFLOW varchar2(10)';
end if;
----20180820wansy24151(凭证分录表增加字段 现金流量  )--  --end--

----20180820wansy24151(凭证分录表增加字段 核算维度  )--  --start--
if not fc_IsColExists('tamc_voucher_info_entry','C_DIMENSION') then
	 execute immediate 'alter table tamc_voucher_info_entry add C_DIMENSION varchar2(10)';
end if;
----20180820wansy24151(凭证分录表增加字段 核算维度  )--  --end--

 --20180819-zhanzh(回款计划表增加字段)
  if not fc_IsColExists('treceivables_plan','process_instanceid') then
     execute immediate 'alter table treceivables_plan  add process_instanceid VARCHAR2(100)';
   end if; 
--20180820caoyi20323(项目资金历史数据导入) start--
if not fc_IsTableExists('TPROJECT_FINANCIAL_HISTORY') then
    execute immediate '
		create table TPROJECT_FINANCIAL_HISTORY
		(
		  c_projectcode   VARCHAR2(32),
		  c_year          VARCHAR2(20),
		  c_type          VARCHAR2(1),
		  f_init_balancfe NUMBER(19,6),
		  c_time          VARCHAR2(50),
		  c_memo          VARCHAR2(500),
		  f_balance       NUMBER(19,6),
		  d_start_date    DATE,
		  d_end_date      DATE,
		  l_daynum        NUMBER(4),
		  f_rate          NUMBER(15,8),
		  f_cal_balance   NUMBER(19,6),
		  f_income        NUMBER(19,6),
		  f_tax           NUMBER(19,6),
		  c_overview      VARCHAR2(500),
		  c_intstatus     VARCHAR2(1) default 1,
		  c_errmsg        VARCHAR2(1000),
		  c_batch_no      VARCHAR2(32),
		  c_source        VARCHAR2(32),
		  c_year_paid     VARCHAR2(20)
		)';
end if;
--20180820caoyi20323(项目资金历史数据导入) end--

--[M201808201386]20180820dutao23901 富安资产业务支出流程新增字段是否推送资金系统 --start --
if fc_IsTableExists('TREPAY_INFO') and not fc_IsColExists('TREPAY_INFO','C_ISTOCAPITALSYS') then
	execute immediate 'alter table TREPAY_INFO add C_ISTOCAPITALSYS varchar(2)';
end if;
--[M201808201386]20180820dutao23901 富安资产业务支出流程新增字段是否推送资金系统 --end --

--[M201808201468]20180821chenhy18048(到账确认配置表及到账确认信息表新加关联资产字段) --start --
if fc_IsTableExists('TREPAY_CONFIRM_CONFIG') and not fc_IsColExists('TREPAY_CONFIRM_CONFIG','c_associated_asset_id') then
	execute immediate 'alter table TREPAY_CONFIRM_CONFIG add c_associated_asset_id char(1)';
end if;

if fc_IsTableExists('TREPAY_CONFIRM_CONFIG') and not fc_IsColExists('TREPAY_CONFIRM_CONFIG','c_associated_asset_required') then
	execute immediate 'alter table TREPAY_CONFIRM_CONFIG add c_associated_asset_required char(1)';
end if;

if fc_IsTableExists('TREPAY_CONFIRM') and not fc_IsColExists('TREPAY_CONFIRM','c_associated_asset_id') then
	execute immediate 'alter table TREPAY_CONFIRM add c_associated_asset_id VARCHAR2(2000)';
end if;
--[M201808201468]20180821chenhy18048(到账确认配置表及到账确认信息表新加关联资产字段) --end --

--20180821zhuocc217770(新增股权退出记录表) start--
if not fc_IsTableExists('TEQUITY_QUIT_RECORD') then
    execute immediate '
		create table TEQUITY_QUIT_RECORD
		(
			  l_id               NUMBER not null,
			  l_equityassetno    NUMBER not null,
			  c_quittype         VARCHAR2(2),
			  l_quitstockamount  NUMBER(19,6),
			  f_quitequityratio  NUMBER,
			  c_rival            VARCHAR2(32),
			  f_tradeprice       NUMBER(19,6),
			  c_quititem         VARCHAR2(3000),
			  l_serialno         NUMBER,
			  process_instanceid VARCHAR2(100),
			  c_flowstatus       VARCHAR2(2)
		)';
	--新建股权退出表的主键
	if fc_IsTableExists('TEQUITY_QUIT_RECORD') and not fc_Constraints_Exists('TEQUITY_QUIT_RECORD','PK_EQUITY_QUIT_ID','P','0') then
	    execute immediate '
		  alter table TEQUITY_QUIT_RECORD
			  add constraint PK_EQUITY_QUIT_ID primary key (L_ID)
			  using index ';
	end if;
	--新建序列，用于股权退出表的主键
	if not fc_IsSeqExists('SEQ_EQUITY_QUIT_RECORD_ID') then
		execute immediate 'create sequence SEQ_EQUITY_QUIT_RECORD_ID
			minvalue 1
			maxvalue 999999999
			start with 1000
			increment by 1
			cache 20';
	end if;
end if;
--20180821zhuocc217770(新增股权退出记录表) end--

--20180821luheng24337(抵质押物信息表省、市字段长度调整) begin--
if fc_IsColExists('TASSET_PAWN_INFO','C_PROVINCECODE') then
     execute immediate 'alter table TASSET_PAWN_INFO modify C_PROVINCECODE varchar2(10)';
end if;
if fc_IsColExists('TASSET_PAWN_INFO','C_CITYNO') then
     execute immediate 'alter table TASSET_PAWN_INFO modify C_CITYNO varchar2(10)';
end if;
--20180821luheng24337(抵质押物信息表省、市字段长度调整) end--

--20180822luheng24337(调整移动营销公告，公告内容字段类型为 clob) begin--
if fc_isdataexists('select count(*) from user_tab_columns where table_name =''TNOTICE_INFO'' and column_name=''C_CONTENT'' and data_type=''VARCHAR2''') then
    execute immediate 'alter table tnotice_info drop column c_content';
end if;
if not fc_IsColExists('tnotice_info','c_content') then
    execute immediate 'alter table tnotice_info add c_content clob';
end if;
--20180822luheng24337(调整移动营销公告，公告内容字段类型为 clob) end --

--20180821yuxd25447(三会管理) start--
if not fc_IsTableExists('TMEETING_INFO') then
    execute immediate '
				create table TMEETING_INFO 
		(
		   L_ID               NUMBER               not null,
		   L_EQUITYASSETNO    NUMBER,              
		   C_meetingname      VARCHAR2(600)       not null,
		   C_MEETINGTYPE      VARCHAR2(2),
		   c_attendee         VARCHAR2(600),
		   c_meetingnum       VARCHAR2(100),
		   d_meetingtime      DATE,
		   c_isbranch         varchar2(2),
		   c_meetingplace     VARCHAR2(3000),
		   c_voteitem         VARCHAR2(3000),
		   c_branchopinion    VARCHAR2(3000),
		   c_approveopinion   VARCHAR2(3000),
		   process_instanceid VARCHAR2(100),
		   c_flowstatus       VARCHAR2(2)
		   
		)'; 
		--三会管理的主键
		if fc_IsTableExists('TMEETING_INFO') and not fc_Constraints_Exists('TMEETING_INFO','PK_TMEETING_INFO','P','0') then
			execute immediate '
			  alter table TMEETING_INFO
				  add constraint PK_TMEETING_INFO primary key (L_ID)
				  using index ';
		end if;
		--新建序列，用于三会管理的主键
		if not fc_IsSeqExists('SEQ_MEETING_INFO_ID') then
		execute immediate 'create sequence SEQ_MEETING_INFO_ID
			minvalue 1
			maxvalue 999999999
			start with 1000
			increment by 1
			cache 20';
	end if;
end if;
--20180821yuxd25447(三会管理) end--
--20180822panjq24368(董监事委派增加流水字段)Start--
if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','L_SERIALNO') then
    execute immediate 'alter table TSUPERVISOR_APPOINTMENT add L_SERIALNO  number';
end if;
--20180822panjq24368(董监事委派增加流水字段)End--
--20180822panjq24368(董监事委派增加父类流程编码字段)Start--
if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','PARENT_PROCESS_INSTANCEID') then
    execute immediate 'alter table TSUPERVISOR_APPOINTMENT add PARENT_PROCESS_INSTANCEID  VARCHAR2(100)';
end if;
--20180822panjq24368(董监事委派增加父类流程编码字段)End--
--20180824panjq24368(董监事委派相关表调整字段名称)Start--
 -----修改董监事表相关信息Start
  --董监事人才信息表
  if fc_IsTableExists('TSUPERVISOR_INFO') then
    if fc_IsColExists('TSUPERVISOR_INFO', 'L_CREATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_INFO rename column L_CREATOR_ID to C_CREATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_INFO', 'L_LAST_UPDATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_INFO rename column L_LAST_UPDATOR_ID to C_LAST_UPDATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_INFO', 'L_LAST_UPDATOR') then
      execute immediate 'alter table TSUPERVISOR_INFO rename column L_LAST_UPDATOR to C_LAST_UPDATOR';
    end if;
    if fc_IsColExists('TSUPERVISOR_INFO', 'L_LAST_UPDATED_TIME') then
      execute immediate 'alter table TSUPERVISOR_INFO rename column L_LAST_UPDATED_TIME to D_LAST_UPDATED_TIME';
    end if;
  end if;
  --董监事评价结果表
  if fc_IsTableExists('TSUPERVISOR_EVALUATION_RESULT') then
    if fc_IsColExists('TSUPERVISOR_EVALUATION_RESULT', 'L_CREATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_RESULT rename column L_CREATOR_ID to C_CREATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_RESULT', 'L_LAST_UPDATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_RESULT rename column L_LAST_UPDATOR_ID to C_LAST_UPDATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_RESULT', 'L_LAST_UPDATOR') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_RESULT rename column L_LAST_UPDATOR to C_LAST_UPDATOR';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_RESULT', 'L_LAST_UPDATED_TIME') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_RESULT rename column L_LAST_UPDATED_TIME to D_LAST_UPDATED_TIME';
    end if;
  end if;
  --董监事评价明细表
  if fc_IsTableExists('TSUPERVISOR_EVALUATION_DETAIL') then
    if fc_IsColExists('TSUPERVISOR_EVALUATION_DETAIL', 'L_CREATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_DETAIL rename column L_CREATOR_ID to C_CREATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_DETAIL', 'L_LAST_UPDATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_DETAIL rename column L_LAST_UPDATOR_ID to C_LAST_UPDATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_DETAIL', 'L_LAST_UPDATOR') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_DETAIL rename column L_LAST_UPDATOR to C_LAST_UPDATOR';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_DETAIL', 'L_LAST_UPDATED_TIME') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_DETAIL rename column L_LAST_UPDATED_TIME to D_LAST_UPDATED_TIME';
    end if;
  end if;
  --董监事委派
  if fc_IsTableExists('TSUPERVISOR_APPOINTMENT') then
    if fc_IsColExists('TSUPERVISOR_APPOINTMENT', 'L_CREATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_APPOINTMENT rename column L_CREATOR_ID to C_CREATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_APPOINTMENT', 'L_LAST_UPDATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_APPOINTMENT rename column L_LAST_UPDATOR_ID to C_LAST_UPDATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_APPOINTMENT', 'L_LAST_UPDATOR') then
      execute immediate 'alter table TSUPERVISOR_APPOINTMENT rename column L_LAST_UPDATOR to C_LAST_UPDATOR';
    end if;
    if fc_IsColExists('TSUPERVISOR_APPOINTMENT', 'L_LAST_UPDATED_TIME') then
      execute immediate 'alter table TSUPERVISOR_APPOINTMENT rename column L_LAST_UPDATED_TIME to D_LAST_UPDATED_TIME';
    end if;
  end if;
--董监事评价项表
  if fc_IsTableExists('TSUPERVISOR_EVALUATION_ITEM') then
    if fc_IsColExists('TSUPERVISOR_EVALUATION_ITEM', 'L_CREATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_ITEM rename column L_CREATOR_ID to C_CREATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_ITEM', 'L_LAST_UPDATOR_ID') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_ITEM rename column L_LAST_UPDATOR_ID to C_LAST_UPDATOR_ID';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_ITEM', 'L_LAST_UPDATOR') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_ITEM rename column L_LAST_UPDATOR to C_LAST_UPDATOR';
    end if;
    if fc_IsColExists('TSUPERVISOR_EVALUATION_ITEM', 'L_LAST_UPDATED_TIME') then
      execute immediate 'alter table TSUPERVISOR_EVALUATION_ITEM rename column L_LAST_UPDATED_TIME to D_LAST_UPDATED_TIME';
    end if;
  end if;
  commit;
  -----修改董监事表相关信息End

--20180824panjq24368(董监事委派相关表调整字段名称)End--

--[201808160786]20180828liuan23902 华润个性化 (回款信息表中增加拟付款金额(不含税)字段)Start--
if not fc_IsColExists('trepay_info','F_AMOUNT_WITHOUT_TAX') then
    execute immediate 'alter table trepay_info add F_AMOUNT_WITHOUT_TAX number(19,6)';
end if;
--[201808160786]20180828liuan23902 华润个性化 (回款信息表中增加拟付款金额(不含税)字段)End--

--[M201808281440]20180828zhuocc21770(新增用印流程诉讼信息变更记录表)-- start --
if not fc_IsTableExists('TLAWSUIT_FLOW_CHANGELOG') then
    execute immediate '
		create table TLAWSUIT_FLOW_CHANGELOG
			(
			    l_logid             NUMBER not null,
			  	c_processinstanceid VARCHAR2(50),
			  	c_changeruser       VARCHAR2(32),
			  	c_islawsuit         VARCHAR2(2),
			  	c_islawsuitexe      VARCHAR2(2),
			  	c_isbreakupreorg    VARCHAR2(2),
			 	  c_taskid            VARCHAR2(32)
			)';
end if;
--主键
if fc_IsTableExists('TLAWSUIT_FLOW_CHANGELOG') and not fc_Constraints_Exists('TLAWSUIT_FLOW_CHANGELOG','PK_LAWSUITFLOW_LOGID','P','0') then
    execute immediate '
	  alter table TLAWSUIT_FLOW_CHANGELOG
		  add constraint PK_LAWSUITFLOW_LOGID primary key (L_LOGID)
		  using index ';
end if;
--新建序列
if not fc_IsSeqExists('SEQ_LAWSUIT_CHANGELOG_ID') then
	execute immediate 'create sequence SEQ_LAWSUIT_CHANGELOG_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;
--[M201808281440]20180828zhuocc21770(新增用印流程诉讼信息变更记录表)--end --

--[201808281504]20180828yuxd25447 江西个性化 (新增区域字段)Start--
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','c_district') then
    execute immediate 'alter table TASSET_LOANACCOUNT_INFO add c_district varchar2(600)';
end if;
--[201808281504]20180828yuxd25447 江西个性化 (新增区域字段)End--
--[M201808290283]20180829chuyy 21要素 (字段长度修改)Start--
if  fc_IsColExists('tproject_capital_purpose','c_creditorid') then
    execute immediate 'alter table tproject_capital_purpose modify c_creditorid VARCHAR2(255)';
end if;
--[M201808290283]20180829chuyy 21要素 (字段长度修改)End--
--[M201808311237]20180831chuyy (批次号字段长度修改)Start--
if  fc_IsColExists('T_INT_ASSET_GUARANTEECONTRACT','C_BATCH_NO') then
    execute immediate 'alter table T_INT_ASSET_GUARANTEECONTRACT modify C_BATCH_NO VARCHAR2(20)';
end if;
if  fc_IsColExists('T_INT_ASSET_MORTGAGECONTRACT','C_BATCH_NO') then
    execute immediate 'alter table T_INT_ASSET_MORTGAGECONTRACT modify C_BATCH_NO VARCHAR2(20)';
end if;
if  fc_IsColExists('T_INT_ASSET_PAWN_INFO','C_BATCH_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO modify C_BATCH_NO VARCHAR2(20)';
end if;
if  fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','C_BATCH_NO') then
    execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO modify C_BATCH_NO number(20)';
end if;
if  fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','C_BATCH_NO') then
    execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT modify C_BATCH_NO number(20)';
end if;

--[M201808311237]20180831chuyy  (批次号字段长度修改)End--

--20180813liusl(借款人信息表增加字段) start---
if not fc_IsColExists('tasset_loanaccount_info','C_SOURCE') then
	execute immediate 'alter table tasset_loanaccount_info add C_SOURCE VARCHAR2(10)';
end if; 
--20180813liusl(借款人信息表增加字段) end---
--20180831liusl(tscheme_object_relation表增加字段) start---
if not fc_IsColExists('tscheme_object_relation','f_totalmoney') then
	execute immediate 'alter table tscheme_object_relation add f_totalmoney NUMBER(19,6)';
end if;
--20180831liusl(tscheme_object_relation表增加字段) end---

--[M201809030360]20180903shiph22854(分开控制生成投资类和处置类债权资产)--start-
--(2)生成处置类债权资产标志
if fc_IsTableExists('tinvest_contract') and not fc_IsColExists('tinvest_contract','c_generatedisposalassetflag') then
  execute immediate 'alter table tinvest_contract add c_generatedisposalassetflag VARCHAR2(2)';
end if;
--[M201809030360]20180903shiph22854(分开控制生成投资类和处置类债权资产)--end-

--[M201809050784]20180905zhangzw25265(到账确认表c_summarymoney,c_remark字段长度增加)--start-
   if fc_IsColExists('trepay_confirm','c_summarymoney') then
     execute immediate 'alter table trepay_confirm modify c_summarymoney varchar2(3000)';
   end if;
  if fc_IsColExists('trepay_arrival','c_remark') then
     execute immediate 'alter table trepay_arrival modify c_remark varchar2(3000)';
   end if;
--[M201809050784]20180905zhangzw25265(到账确认表c_summarymoney字段长度增加)--end-

--20180905wansy24151付款表 增加其他类付款类型的名称、权益投资类型 --start--
if not fc_IsColExists('trepay_info','c_other_payname') then
    execute immediate 'alter table trepay_info add c_other_payname VARCHAR2(50)';
end if;

if not fc_IsColExists('trepay_info','c_equity_invest_type') then
    execute immediate 'alter table trepay_info add c_equity_invest_type VARCHAR2(10)';
end if;
--20180905wansy24151付款表 增加其他类付款类型的名称、权益投资类型 --end--

--20180906chenhy18048(到账认领流水表增加预计银行流水日期) --start--
if not fc_IsColExists('TREPAY_ARRIVAL','D_PRE_BANK_DATE') then
    execute immediate 'alter table TREPAY_ARRIVAL add D_PRE_BANK_DATE date';
end if;
--20180906chenhy18048(到账认领流水表增加预计银行流水日期) --end--

--20180906panjq24368(投后跟踪新增字段)--start-
if fc_IsTableExists('TAFTER_INVESTMENT_TRACE_RECORD')  then
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_WARNINGINFO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_WARNINGINFO VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_PROJECTTRACEINFO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_PROJECTTRACEINFO VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_TODO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_TODO VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_RISKDESC') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_RISKDESC VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_LOANTRACEINFO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_LOANTRACEINFO VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_MORTGAGETRACEINFO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_MORTGAGETRACEINFO VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_GUARANTEETRACEINFO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_GUARANTEETRACEINFO VARCHAR2(4000)';
   end if;
   if fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_MANAGEMENTDESC') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD modify C_MANAGEMENTDESC VARCHAR2(4000)';
   end if;
   
   --------------新增字段
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_COPY_MANAGER') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_COPY_MANAGER VARCHAR2(2)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','F_BEINDEBT') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add F_BEINDEBT NUMBER(19,6)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_LIQUIDATE_NORMAL') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_LIQUIDATE_NORMAL VARCHAR2(2)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_RUN_NORMAL') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_RUN_NORMAL VARCHAR2(2)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_CONTROL_NORMAL') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_CONTROL_NORMAL VARCHAR2(2)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_ENCOURAGE_NORMAL') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_ENCOURAGE_NORMAL VARCHAR2(2)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_ASTRICT_NORMAL') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_ASTRICT_NORMAL VARCHAR2(2)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_PAWN_CHANGE') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_PAWN_CHANGE VARCHAR2(2)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_IS_PLEDGE_CHANGE') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_IS_PLEDGE_CHANGE VARCHAR2(2)';
   end if;
   if not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','F_LIQUIDATE_MONEY') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add F_LIQUIDATE_MONEY NUMBER(19,6)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','F_SUM_MONEY') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add F_SUM_MONEY NUMBER(19,6)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','F_SUMDEBT_MONEY') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add F_SUMDEBT_MONEY NUMBER(19,6)';
   end if;
   if not  fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','F_INCOME_MONEY') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add F_INCOME_MONEY NUMBER(19,6)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','F_INCOME_RATE_MONEY') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add F_INCOME_RATE_MONEY NUMBER(19,6)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_SUBJECT') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_SUBJECT VARCHAR2(4000)';
   end if;
   if not  fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_PROJECT_COMMENT') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_PROJECT_COMMENT VARCHAR2(4000)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_RECYCLE_SUBJECT') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_RECYCLE_SUBJECT VARCHAR2(4000)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_AFTER_PHONE') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_AFTER_PHONE VARCHAR2(4000)';
   end if;
   if not  fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_AFTER_VISIT') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_AFTER_VISIT VARCHAR2(4000)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_AFTER_REMARK') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_AFTER_REMARK VARCHAR2(4000)';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','L_SERIALNO') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add L_SERIALNO NUMBER';
   end if;
   if  not fc_IsColExists('TAFTER_INVESTMENT_TRACE_RECORD','C_TEMPCODE') then
        execute immediate 'alter table TAFTER_INVESTMENT_TRACE_RECORD add C_TEMPCODE VARCHAR2(255)';
   end if;
    if fc_IsColExists('tafter_investment_trace_record','C_RECORDTYPE') then
		if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_trace_record'') and column_name = upper(''C_RECORDTYPE'') and nullable = ''N''') then
			execute immediate 'alter table tafter_investment_trace_record modify C_RECORDTYPE null';
		end if;  
	end if;
	if fc_IsColExists('tafter_investment_trace_record','C_PROJECTCODE') then
	  if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_trace_record'') and column_name = upper(''C_PROJECTCODE'') and nullable = ''N''') then
			execute immediate 'alter table tafter_investment_trace_record modify C_PROJECTCODE null';
	  end if;  
	end if;
	if fc_IsColExists('tafter_investment_trace_record','D_RECORDDATE') then
	  if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_trace_record'') and column_name = upper(''D_RECORDDATE'') and nullable = ''N''') then
			execute immediate 'alter table tafter_investment_trace_record modify D_RECORDDATE null';
	  end if;  
	end if;
	if fc_IsColExists('tafter_investment_trace_record','C_RECORDUSERCODE') then
	  if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_trace_record'') and column_name = upper(''C_RECORDUSERCODE'') and nullable = ''N''') then
			execute immediate 'alter table tafter_investment_trace_record modify C_RECORDUSERCODE null';
	  end if;  
	end if;
	if fc_IsColExists('tafter_investment_trace_record','C_STATUS') then
	  if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_trace_record'') and column_name = upper(''C_STATUS'') and nullable = ''N''') then
			execute immediate 'alter table tafter_investment_trace_record modify C_STATUS null';
	  end if;  
	end if;
	if fc_IsColExists('tafter_investment_trace_record','C_ISWARNING') then
	  if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''tafter_investment_trace_record'') and column_name = upper(''C_ISWARNING'') and nullable = ''N''') then
			execute immediate 'alter table tafter_investment_trace_record modify C_ISWARNING null';
	  end if;  
	end if;
end if;

--20180906panjq24368(投后跟踪新增字段)--end-

--20180907luheng24337(结息表添加 结息类型字段 用于区分是实时结息还是固定结息)--begin-
	if fc_IsTableExists('TINTEREST_SETTLEMENT') and not fc_IsColExists('TINTEREST_SETTLEMENT','C_TYPE') then
       execute immediate 'alter table TINTEREST_SETTLEMENT add C_TYPE varchar2(10)';
	end if;
--20180907luheng24337(结息表添加 结息类型字段 用于区分是实时结息还是固定结息)--end-	

--20180910chenhy18048(付款业务表新加三个字段和序列) --start--
if not fc_IsSeqExists('seq_payment_Number_No') then
	execute immediate 'create sequence seq_payment_Number_No
		minvalue 1
		maxvalue 999999999
		start with 1
		increment by 1
		cache 20';
end if;

if not fc_IsColExists('TREPAY_INFO','C_PAYMENT_NUMBER_NO') then
    execute immediate 'alter table TREPAY_INFO add C_PAYMENT_NUMBER_NO VARCHAR2(100)';
end if;

if not fc_IsColExists('TREPAY_INFO','C_PAYMENT_NUMBER_NAME') then
    execute immediate 'alter table TREPAY_INFO add C_PAYMENT_NUMBER_NAME VARCHAR2(100)';
end if;

if not fc_IsColExists('TREPAY_INFO','C_FUND_CARRY_OUT') then
    execute immediate 'alter table TREPAY_INFO add C_FUND_CARRY_OUT VARCHAR2(1)';
end if;
--20180910chenhy18048(付款业务表新加三个字段和序列) --end--
--20180909zhuocc21770中介机构新增字段 --start--
if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_qualificationtype') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY  add c_qualificationtype varchar2(4)';
end if;

if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_responsibleperson') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY  add c_responsibleperson varchar2(255)';
end if;

if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_flowstatus') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY  add c_flowstatus varchar2(2)';
end if;

if not fc_IsColExists('TALTERNATIVE_LIBRARY','c_standardapply') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY  add c_standardapply varchar2(2)';
end if;
--20180909zhuocc21770中介机构新增字段 --end--


--20180909zhuocc21770(新增中介机构入库审批表和中介机构入库审批明细表)-- start --
if not fc_IsTableExists('TINTERMEDIARY_ORGAN_APPROVE') then
    execute immediate '
		create table TINTERMEDIARY_ORGAN_APPROVE
			(
			    l_id                 NUMBER not null,
  				d_lib_date           DATE,
          c_process_instanceid VARCHAR2(100),
					  c_flowstatus         VARCHAR2(2),
					  c_remark             VARCHAR2(3000),
					  c_creator_id         VARCHAR2(100),
					  c_creator            VARCHAR2(100),
					  d_created_time       DATE,
					  c_last_updator_id    VARCHAR2(100),
					  c_last_updator       VARCHAR2(100),
					  d_last_updated_time  DATE
			)';
end if;
--主键
if fc_IsTableExists('TINTERMEDIARY_ORGAN_APPROVE') and not fc_Constraints_Exists('TINTERMEDIARY_ORGAN_APPROVE','PK_INTERMEDIARY_ORGAN_ID','P','0') then
    execute immediate '
	  alter table TINTERMEDIARY_ORGAN_APPROVE
      add constraint PK_INTERMEDIARY_ORGAN_ID primary key (L_ID)
		  using index ';
end if;
--新建序列
if not fc_IsSeqExists('SEQ_INTERMEDIARY_APPROVE_ID') then
	execute immediate 'create sequence SEQ_INTERMEDIARY_APPROVE_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

if not fc_IsTableExists('TINTERMEDIARY_APPROVE_DETAIL') then
    execute immediate '
		create table TINTERMEDIARY_APPROVE_DETAIL
			(
			    l_id                NUMBER not null,
				  l_approveid         NUMBER not null,
				  l_libid             NUMBER not null,
				  c_creator_id        VARCHAR2(100),
				  c_creator           VARCHAR2(100),
				  d_created_time      DATE,
				  c_last_updator_id   VARCHAR2(100),
				  c_last_updator      VARCHAR2(100),
				  d_last_updated_time DATE
			)';
end if;
--主键
if fc_IsTableExists('TINTERMEDIARY_APPROVE_DETAIL') and not fc_Constraints_Exists('TINTERMEDIARY_APPROVE_DETAIL','PK_INTERMEDIARY_DETAIL_ID','P','0') then
    execute immediate '
	  alter table TINTERMEDIARY_APPROVE_DETAIL
      add constraint PK_INTERMEDIARY_DETAIL_ID primary key (L_ID)
		  using index ';
end if;
--新建序列
if not fc_IsSeqExists('SEQ_INTERMEDIARY_DETAIL_ID') then
	execute immediate 'create sequence SEQ_INTERMEDIARY_DETAIL_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--20180909zhuocc21770(新增中介机构入库审批表和中介机构入库审批明细表)--end --
--20180911zhuocc21770(新增投资项目中介机构选聘表)--start --‘
if not fc_IsTableExists('TAGENCY_APPLY_INVESTPROJECT') then
    execute immediate '
		create table TAGENCY_APPLY_INVESTPROJECT
			(
			    l_id               NUMBER not null,
				  c_orgtype          VARCHAR2(32),
				  c_standardapply    VARCHAR2(2),
				  c_specialapply     VARCHAR2(2),
				  c_applyedagency    VARCHAR2(2000),
				  c_notapplyedagency VARCHAR2(2000),
				  c_projectcode      VARCHAR2(32),
				  c_applyflowtype    VARCHAR2(2),
				  c_rivaltype        VARCHAR2(2)
			)';
end if;
--主键
if fc_IsTableExists('TAGENCY_APPLY_INVESTPROJECT') and not fc_Constraints_Exists('TAGENCY_APPLY_INVESTPROJECT','PK_INVESTAGENCY_ID','P','0') then
    execute immediate '
	  alter table TAGENCY_APPLY_INVESTPROJECT
      add constraint PK_INVESTAGENCY_ID primary key (L_ID)
		  using index ';
end if;
--新建序列
if not fc_IsSeqExists('SEQ_INVEST_AGENCYAPPLY_ID') then
	execute immediate 'create sequence SEQ_INVEST_AGENCYAPPLY_ID
      minvalue 1
      maxvalue 999999999
      start with 1000
      increment by 1
      cache 20';
end if;
--20180911zhuocc21770(新增投资项目中介机构选聘表)--end --
--20180911zhuocc21770(中介机构选聘表新增到期日期)--start--
if not fc_IsColExists('TAGENCY_APPLY', 'd_applyduedate') then
  execute immediate 'alter table TAGENCY_APPLY add d_applyduedate DATE';
end if;
--20180911zhuocc21770(中介机构选聘表新增到期日期)--end--
--20180911zhuocc21770(中介机构表新增到期日期、选聘日期)--start--
if not fc_IsColExists('TALTERNATIVE_LIBRARY','d_applydate') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY add d_applydate DATE';
end if;
if not fc_IsColExists('TALTERNATIVE_LIBRARY','d_applyduedate') then
	execute immediate 'alter table TALTERNATIVE_LIBRARY add d_applyduedate DATE';
end if;
--20180911zhuocc21770(中介机构表新增到期日期、选聘日期)--end--
--20180912yuxd25447(新增中介机构导入中间表)--start--
if not fc_IsTableExists('T_INT_AGENCY_INFO') then
    execute immediate '
	  create table T_INT_AGENCY_INFO(
	  c_BATCH_NO             number(20) ,
      C_INTSTATUS            varchar2(2),
      C_ERRMSG               varchar2(3000),      
      C_SOURCE               varchar2(20) ,  
      c_customercode         varchar2(32),
      c_customerbizcode      varchar2(32),
      c_customername         varchar2(300),
      c_customerproperty     varchar2(1),
      c_area                 varchar2(20),
      c_areano               varchar2(10),
      c_enablesocialcredit   varchar2(2),
      c_certificatetype      varchar2(5),
      c_certificatecode      varchar2(255),
      c_organizationcode     varchar2(32),
      c_belongindustry       varchar2(32),
      d_setupdate            date,    
      c_representative       varchar2(50),
      f_registemoney         number(19,6),
      c_businesscope         varchar2(4000),
      c_address              varchar2(512),
      c_relationcode         varchar2(32),
      c_isvalid              varchar2(1),
      c_customerrole         varchar2(16),
	  c_rivalid              varchar2(32),
      c_libid                number,
      c_orgtype              varchar2(1),
      d_libdate              date,
      c_memo                 varchar2(3000)
	  )';
end if;
if not fc_IsColExists('T_INT_AGENCY_INFO','c_rivalid') then 
  execute immediate 'alter table T_INT_AGENCY_INFO add c_rivalid varchar2(32)';
end if;
--20180912yuxd25447(新增中介机构导入中间表)--end--


--20180911liuan23902 华润个性化 (回款信息表中增加付款公司)Start--
if not fc_IsColExists('trepay_info','C_PAYMENT_COMPANY') then
    execute immediate 'alter table trepay_info add C_PAYMENT_COMPANY VARCHAR2(16)';
end if;
--20180911liuan23902 华润个性化 (回款信息表中增加付款公司)End--

--20180912wansy24151(业务标识与文档类型关联配置表) --start--
if not fc_IsTableExists('TPROJECT_TEXTTYPE_BUSIFLAG') then
execute immediate '
-- Create table
create table TPROJECT_TEXTTYPE_BUSIFLAG
(
	l_id 		NUMBER(10) 		not null,
	l_typeid	NUMBER(10),
	c_busiflag	VARCHAR2(20),
	l_order		NUMBER(10)
)';
end if;

if fc_IsTableExists('TPROJECT_TEXTTYPE_BUSIFLAG') and not fc_Constraints_Exists('TPROJECT_TEXTTYPE_BUSIFLAG', 'PK_TPROJECT_TEXTTYPE_BUSIFLAG', 'P', '0') then
execute immediate '
	alter table TPROJECT_TEXTTYPE_BUSIFLAG
	add constraint PK_TPROJECT_TEXTTYPE_BUSIFLAG primary key (l_id)
	using index ';
end if;
--20180912wansy24151(业务标识与文档类型关联配置表) ---end--

--20180912wansy24151(到账确认表增加业务是否已结清 和 具体情况字段) --start--
if not fc_IsColExists('TREPAY_CONFIRM','c_debt_settlement') then
	execute immediate 'alter table TREPAY_CONFIRM  add c_debt_settlement varchar2(2)';
end if;

if not fc_IsColExists('TREPAY_CONFIRM','c_specific_remark') then
	execute immediate 'alter table TREPAY_CONFIRM  add c_specific_remark varchar2(4000)';
end if;
--20180912wansy24151(到账确认表增加业务是否已结清 和 具体情况字段) ---end--


--20180911chenhy18048(资金流水表新加流水标识字段) --start--
if not fc_IsColExists('TINVEST_FUNDVARY','c_vary_type') then
    execute immediate 'alter table TINVEST_FUNDVARY add c_vary_type varchar2(1)';
end if;
--20180911chenhy18048(资金流水表新加流水标识字段) --end--

--20180912luheng24337(新增抵质押导入中间表字段)--begin --
if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNUNIT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNUNIT VARCHAR2(15)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_PAWNQUANTITY') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_PAWNQUANTITY NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_CYKIND') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_CYKIND VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_ADDRDETAIL') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_ADDRDETAIL VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_REMARK') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_REMARK VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_ESCROWSTATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_ESCROWSTATUS VARCHAR2(2)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_VALUATIONAMOUNT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_VALUATIONAMOUNT NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_SOURCE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_SOURCE VARCHAR2(2)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PLACE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PLACE VARCHAR2(255)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_TYPE VARCHAR2(1)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'L_SCHEMEID') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add L_SCHEMEID NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_ORIGINALCREDENTIALSNO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_ORIGINALCREDENTIALSNO VARCHAR2(1024)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_RECOVERABLEBALANCE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_RECOVERABLEBALANCE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNDETAIL') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNDETAIL VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_DISPOSALMONEY') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_DISPOSALMONEY NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_LASTBALANCE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_LASTBALANCE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_LASTTIMELOSS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_LASTTIMELOSS NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_DEDUCTIONTEN') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_DEDUCTIONTEN NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_CURRENTBALANCE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_CURRENTBALANCE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_BALANCECOST') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_BALANCECOST NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_DISPOSALYEARS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_DISPOSALYEARS VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNNUM') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNNUM VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_HOUSEARE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_HOUSEARE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_LASTUPDATEUSER') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_LASTUPDATEUSER VARCHAR2(20)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_ENTERUSER') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_ENTERUSER VARCHAR2(20)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_BUYPRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_BUYPRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_QUOTEPRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_QUOTEPRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_CASHRATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_CASHRATE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_CASHPRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_CASHPRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_MARKETPRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_MARKETPRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_PAWNAREA') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_PAWNAREA NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNSTATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNSTATUS VARCHAR2(2)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNAMOUNT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNAMOUNT VARCHAR2(50)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_OTHERCREDENTIALSNO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_OTHERCREDENTIALSNO VARCHAR2(1024)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNTYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNTYPE VARCHAR2(20)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_REGIONCODE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_REGIONCODE VARCHAR2(10)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_CITYNO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_CITYNO VARCHAR2(10)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PROVINCECODE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PROVINCECODE VARCHAR2(10)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_MORTGAGECONTRACTCODE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_MORTGAGECONTRACTCODE VARCHAR2(32)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNNAME') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNNAME VARCHAR2(100)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNCODE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNCODE VARCHAR2(32)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_BATCH_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_BATCH_NO VARCHAR2(20)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTOR_DECORATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTOR_DECORATE VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTOR_DIRECTION') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTOR_DIRECTION VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_FACTOR_FLOORNUM') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_FACTOR_FLOORNUM NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_FACTOR_RENT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_FACTOR_RENT NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTOR_USESTATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTOR_USESTATUS VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_UPTOWN_NAME') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_UPTOWN_NAME VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_LAND_NATURE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_LAND_NATURE VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_AFFOREST') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_AFFOREST VARCHAR2(32)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_SCHOOL_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_SCHOOL_STATUS VARCHAR2(32)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_GOODS_HEAP') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_GOODS_HEAP VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_WAREHOUSE_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_WAREHOUSE_NO VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_RECEIPT_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_RECEIPT_NO VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_SAFEKEEP_DEPT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_SAFEKEEP_DEPT VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_REGULATOR') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_REGULATOR VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_WAREHOUSE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_WAREHOUSE VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_IMPAWN_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_IMPAWN_NO VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_REG_DEPT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_REG_DEPT VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_MARKET_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_MARKET_STATUS VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_CONSERVE_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_CONSERVE_STATUS VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_HEALTH_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_HEALTH_STATUS VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_TOTAL_PRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_TOTAL_PRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_BUY_PRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_BUY_PRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_STORAGE_PLACE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_STORAGE_PLACE VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_REG_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_REG_NO VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_NEW_RATIO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_NEW_RATIO VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PLATE_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PLATE_NO VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PLATE_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PLATE_TYPE VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWN_SPEC') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWN_SPEC VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWN_BRAND') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWN_BRAND VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWN_OWNER') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWN_OWNER VARCHAR2(64)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_FLOOR_PRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_FLOOR_PRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_LAND_BOUNDARY') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_LAND_BOUNDARY VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_DECORATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_DECORATE VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_DIRECTION') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_DIRECTION VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_FLOOR_NUM') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_FLOOR_NUM NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_MATERIAL_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_MATERIAL_TYPE VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTORY_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTORY_TYPE VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTORY_AREA') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTORY_AREA VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_CLEAN_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_CLEAN_STATUS VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTORY_NEAR') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTORY_NEAR VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_FACTORY_USEAGE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_FACTORY_USEAGE VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_BUILD_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_BUILD_TYPE VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_UPTOWN_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_UPTOWN_TYPE VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_UPTOWN_AREA') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_UPTOWN_AREA VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_NEAR_FACILITY') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_NEAR_FACILITY VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_NEAR_ROAD_TYPE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_NEAR_ROAD_TYPE VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWN_NEAR') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWN_NEAR VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_TRAFFIC_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_TRAFFIC_STATUS VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_RENT') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_RENT NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_USE_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_USE_STATUS VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_NEAR_STATUS') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_NEAR_STATUS VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_FLOOR_NO') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_FLOOR_NO NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_BUILD_AREA') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_BUILD_AREA NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_HOUSE_USEAGE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_HOUSE_USEAGE VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_LAND_USEAGE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_LAND_USEAGE VARCHAR2(500)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_INVESTOR') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_INVESTOR VARCHAR2(32)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_TEMPCODE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_TEMPCODE VARCHAR2(32)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PAWNTYPEEX') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_PAWNTYPEEX VARCHAR2(4)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_RECPCASHRATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_RECPCASHRATE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_RECPCASHPRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_RECPCASHPRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'F_RECPMARKETPRICE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add F_RECPMARKETPRICE NUMBER(22)';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'D_PAWNREGDATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add D_PAWNREGDATE DATE';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'D_LASTUPDATETIME') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add D_LASTUPDATETIME DATE';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'D_ENTERTIME') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add D_ENTERTIME DATE';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'D_COMPLETED_DATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add D_COMPLETED_DATE DATE';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and
     not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'D_INVEST_DATE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO add D_INVEST_DATE DATE';
  end if;
  if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_PROVINCECODE') then
    execute immediate 'alter table T_INT_ASSET_PAWN_INFO modify C_PROVINCECODE VARCHAR2(10)';
  end if;
--20180912luheng24337(新增抵质押导入中间表字段)--end --

--20180912luheng24337(新增抵质押物表导入批次号字段)--begin --
 if fc_IsTableExists('TASSET_PAWN_INFO') and
     not fc_IsColExists('TASSET_PAWN_INFO', 'c_batch_no') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_batch_no VARCHAR2(32)';
  end if;
--20180912luheng24337(新增抵质押物表导入批次号字段)--end --
--20180913panjq24368(投后提醒表字段C_PROJECTNAME扩展)--start --
 if fc_IsColExists('TAFTER_INVESTMENT_NOTICE','C_PROJECTNAME') then
        execute immediate 'alter table TAFTER_INVESTMENT_NOTICE  modify C_PROJECTNAME varchar2(255)';
   end if;
--20180913panjq24368(投后提醒表字段C_PROJECTNAME扩展)--end --

--20180913wansy24151(付款表新增审批单编号) --start
if not fc_IsColExists('TREPAY_INFO','c_approve_no') then
	 execute immediate 'alter table TREPAY_INFO add c_approve_no varchar2(50)';
end if;
--20180913wansy24151(付款表新增审批单编号) --end

--20180913liuan23902(付款账户表中设置银行账户id和付款金额可为空)--start--
if fc_IsColExists('TREPAY_ACCOUNT','f_balance') then
    if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_ACCOUNT'') and column_name = upper(''f_balance'') and nullable = ''N''') then
        execute immediate 'alter table TREPAY_ACCOUNT MODIFY f_balance NULL';
    end if;
end if;

if fc_IsColExists('TREPAY_ACCOUNT','L_FUNDACID') then
    if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TREPAY_ACCOUNT'') and column_name = upper(''L_FUNDACID'') and nullable = ''N''') then
        execute immediate 'alter table TREPAY_ACCOUNT MODIFY L_FUNDACID NULL';
    end if;
end if;
--20180913liuan23902(付款账户表中设置银行账户id和付款金额可为空)--end--
--20180914panjq24368(投资标的信息表字段F_STOCKNUMBER扩展)--start --
 if fc_IsColExists('TPROJECT_INVESTTARGET','F_STOCKNUMBER') then
        execute immediate 'alter table TPROJECT_INVESTTARGET  modify F_STOCKNUMBER NUMBER(19,6)';
   end if;
--20180914panjq24368(投资标的信息表字段F_STOCKNUMBER扩展)--end --
--20180914panjq24368(投后跟踪-重点跟踪借款人信息表字段C_TRACEINFO扩展)--Start --
  if fc_IsColExists('TAFTER_INVESTMENT_RECORD_VIP','C_TRACEINFO') then
        execute immediate 'alter table TAFTER_INVESTMENT_RECORD_VIP modify C_TRACEINFO VARCHAR2(4000)';
   end if;
    if fc_IsColExists('TAFTER_INVESTMENT_RECORD_VIP','C_ACTIONPLAN') then
        execute immediate 'alter table TAFTER_INVESTMENT_RECORD_VIP modify C_ACTIONPLAN VARCHAR2(4000)';
   end if;
--20180914panjq24368(投后跟踪-重点跟踪借款人信息表字段C_TRACEINFO扩展)--end --
--20180917caoyi20323(广州风控系统客户编号同步表) --Start --
if not fc_IsTableExists('TTRANSFER_CUSTOMER_ID') then
execute immediate '
create table TTRANSFER_CUSTOMER_ID
(
  c_customer_id VARCHAR2(100),
  d_create_date DATE,
  c_data_status VARCHAR2(2) default 0
)';
end if;
--20180917caoyi20323(广州风控系统客户编号同步表) --end --

--20180920chenhy18048(到账确认明细表新加补冲销挂账金额字段) --start--
if not fc_IsColExists('TREPAY_CONFIRM_DETAIL','F_WRITE_OFF_DEBTS') then
    execute immediate 'alter table TREPAY_CONFIRM_DETAIL add F_WRITE_OFF_DEBTS NUMBER(19,6)';
end if;
--20180920chenhy18048(到账确认明细表新加补冲销挂账金额字段) --end--

--20180921chenhy18048(合同表增加优先级起息日字段) --start--
if not fc_IsColExists('TINVEST_CONTRACT','D_PRIORITY_INTEREST_DAY') then
    execute immediate 'alter table TINVEST_CONTRACT add D_PRIORITY_INTEREST_DAY date';
end if;
--20180921chenhy18048(合同表增加优先级起息日字段) --end--

--20180921zhuocc21770(新增户信息确认审批表和户信息确认审批明细表)-- start --
if not fc_IsTableExists('TLOANCONFIRM_APPROVE') then
    execute immediate '
		create table TLOANCONFIRM_APPROVE
			(
			    l_id                 NUMBER not null,
          c_process_instanceid VARCHAR2(100),
					  c_flowstatus         VARCHAR2(2),
					  c_creator_id         VARCHAR2(100),
					  c_creator            VARCHAR2(100),
					  d_created_time       DATE,
					  c_last_updator_id    VARCHAR2(100),
					  c_last_updator       VARCHAR2(100),
					  d_last_updated_time  DATE
			)';
end if;
--主键
if fc_IsTableExists('TLOANCONFIRM_APPROVE') and not fc_Constraints_Exists('TLOANCONFIRM_APPROVE','PK_LOANCONFIRM_ID','P','0') then
    execute immediate '
	  alter table TLOANCONFIRM_APPROVE
      add constraint PK_LOANCONFIRM_ID primary key (L_ID)
		  using index ';
end if;
--新建序列
if not fc_IsSeqExists('SEQ_LOANCONFIRM_ID') then
	execute immediate 'create sequence SEQ_LOANCONFIRM_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

if not fc_IsTableExists('TLOANCONFIRM_APPROVE_DETAIL') then
    execute immediate '
		create table TLOANCONFIRM_APPROVE_DETAIL
			(
			    l_id                NUMBER not null,
				  l_approveid         NUMBER not null,
				  c_loanaccountcode   VARCHAR2(32) not null,
				  c_creator_id        VARCHAR2(100),
				  c_creator           VARCHAR2(100),
				  d_created_time      DATE,
				  c_last_updator_id   VARCHAR2(100),
				  c_last_updator      VARCHAR2(100),
				  d_last_updated_time DATE
			)';
end if;
--主键
if fc_IsTableExists('TLOANCONFIRM_APPROVE_DETAIL') and not fc_Constraints_Exists('TLOANCONFIRM_APPROVE_DETAIL','PK_LOANCONFIRM_DETAIL_ID','P','0') then
    execute immediate '
	  alter table TLOANCONFIRM_APPROVE_DETAIL
      add constraint PK_LOANCONFIRM_DETAIL_ID primary key (L_ID)
		  using index ';
end if;
--新建序列
if not fc_IsSeqExists('SEQ_LOANCONFIRM_DETAIL_ID') then
	execute immediate 'create sequence SEQ_LOANCONFIRM_DETAIL_ID
		minvalue 1
		maxvalue 999999999
		start with 1000
		increment by 1
		cache 20';
end if;

--20180921zhuocc21770(新增户信息确认审批表和户信息确认审批明细表)--end --

--20180925liuan23902(报销人账户表中添加字段)--start--
--状态：0-待完善，1-正常
if not fc_IsColExists('TUSER_ACCOUNT_INFO','C_STATUS') then
    execute immediate 'alter table TUSER_ACCOUNT_INFO add C_STATUS VARCHAR2(1)';
end if;
--创建人ID
if not fc_IsColExists('TUSER_ACCOUNT_INFO','C_CREATEUSERID') then
    execute immediate 'alter table TUSER_ACCOUNT_INFO add C_CREATEUSERID VARCHAR2(32)';
end if;
--创建时间
if not fc_IsColExists('TUSER_ACCOUNT_INFO','D_CREATEDATE') then
    execute immediate 'alter table TUSER_ACCOUNT_INFO add D_CREATEDATE DATE';
end if;
--最后修改时间
if not fc_IsColExists('TUSER_ACCOUNT_INFO','D_LASTMODIFYDATE') then
    execute immediate 'alter table TUSER_ACCOUNT_INFO add D_LASTMODIFYDATE DATE';
end if;
--用户来源：0-内部，1-外部
if not fc_IsColExists('TUSER_ACCOUNT_INFO','C_USERSOURCE') then
    execute immediate 'alter table TUSER_ACCOUNT_INFO add C_USERSOURCE VARCHAR2(1)';
end if;
--用户名
if not fc_IsColExists('TUSER_ACCOUNT_INFO','C_USERNAME') then
    execute immediate 'alter table TUSER_ACCOUNT_INFO add C_USERNAME VARCHAR2(100)';
end if;
--20180925liuan23902(报销人账户表中添加字段)--end--

-- 20180925luheng24337(移动营销公告抵质押物添加抵质押物code字段) beign -- 
if fc_IsTableExists('tnotice_customer_pawn') and not fc_IsColExists('tnotice_customer_pawn','C_PAWNCODE') then
    execute immediate 'ALTER TABLE tnotice_customer_pawn ADD C_PAWNCODE varchar(32)';
end if;
-- 20180925luheng24337(移动营销公告抵质押物添加抵质押物code字段) end -- 

--20180925caoyi20323(浙商日常费用报销)--strat--
if not fc_IsColExists('TREIMBURSE_DETAIL','c_bill_type') then
    execute immediate 'alter table TREIMBURSE_DETAIL add c_bill_type VARCHAR2(50)';
end if;
if not fc_IsColExists('TREIMBURSE_DETAIL','l_bill_quantity') then
    execute immediate 'alter table TREIMBURSE_DETAIL add l_bill_quantity NUMBER(5)';
end if;
if not fc_IsColExists('TREIMBURSE_DETAIL','c_depcode') then
    execute immediate 'alter table TREIMBURSE_DETAIL add c_depcode VARCHAR2(32)';
end if;
if not fc_IsColExists('TREIMBURSE_DETAIL','c_source') then
    execute immediate 'alter table TREIMBURSE_DETAIL add c_source VARCHAR2(5) default 0';
end if;
if not fc_IsTableExists('TREIMBURSE_TAXDETAIL') then
    execute immediate '
		create table TREIMBURSE_TAXDETAIL
(
  l_id         NUMBER not null,
  l_ijourid    NUMBER,
  c_rate_type  VARCHAR2(5),
  f_other_rate NUMBER(19,6),
  f_balance    NUMBER(19,6),
  c_memo       VARCHAR2(600)
)';
end if;
if fc_IsTableExists('TREIMBURSE_TAXDETAIL') and not fc_Constraints_Exists('TREIMBURSE_TAXDETAIL','PK_TREIMBURSE_TAXDETAIL','P','0') then
    execute immediate '
	  alter table TREIMBURSE_TAXDETAIL
		add constraint PK_TREIMBURSE_TAXDETAIL primary key (L_ID)
		using index ';
end if;
if not fc_IsSeqExists('SEQ_REIMBURSE_TAXDETAIL_ID') then
	execute immediate 'create sequence SEQ_REIMBURSE_TAXDETAIL_ID
minvalue 1
maxvalue 999999
start with 1
increment by 1
cache 20';
end if;
if fc_IsColExists('TREPAY_INFO','c_paysource') then
    execute immediate 'alter table TREPAY_INFO modify c_paysource VARCHAR2(5)';
end if;
--20180925caoyi20323(浙商日常费用报销)--end--

--[201807110257]20180921shiph22854(工作日志月视图增加时效预警(包括：诉讼时效提醒、执行时效提醒、保全时效提醒)和还款计划)--start--
--日历配置表新增字段用于标识是 1-工作日志、2-时效预警、3-还款计划
if fc_IsTableExists('tsysinfo_bizcalendar_config') and not fc_IsColExists('tsysinfo_bizcalendar_config','c_type') then
  execute immediate 'alter table tsysinfo_bizcalendar_config add c_type VARCHAR2(2)';
end if;
--[201807110257]20180921shiph22854(工作日志月视图增加时效预警(包括：诉讼时效提醒、执行时效提醒、保全时效提醒)和还款计划)--end--

--20180926chuyy25739(新增业务分类配置表)--start--
if not fc_IsTableExists('TPROJECT_BUSINESSTYPE_CONFIG') then
 execute immediate 
'create table TPROJECT_BUSINESSTYPE_CONFIG
(
  c_businesstype         VARCHAR2(10) not null,
  c_businessname         VARCHAR2(50),
  c_projectnature        VARCHAR2(3),
  c_busiclassification   VARCHAR2(100),
  c_default_contracttype VARCHAR2(2)
)
';
end if;
if fc_IsTableExists('TPROJECT_BUSINESSTYPE_CONFIG') and not fc_IsIndexExists('TPROJECT_BUSINESSTYPE_CONFIG','PK_BUSINESSTYPE_CONFIG')then
    execute immediate 'alter table TPROJECT_BUSINESSTYPE_CONFIG
  add constraint PK_BUSINESSTYPE_CONFIG primary key (C_BUSINESSTYPE)';
end if;
if fc_IsTableExists('tproject_info_amc') and not fc_IsColExists('tproject_info_amc','c_businesstype') then
    execute immediate 'alter table tproject_info_amc add ( c_businesstype varchar2(255) null)';
end if;
--20180926chuyy25739(新增业务分类配置表)--end--
--20180926caoyi20323(浙商差旅费用报销)--strat--
if not fc_IsTableExists('TREIMBURSE_DETAIL_ZS') then
    execute immediate '
create table TREIMBURSE_DETAIL_ZS
(
  l_id            NUMBER not null,
  l_ijourid       NUMBER,
  d_startdate     DATE,
  d_enddate       DATE,
  l_lastdate      NUMBER,
  c_place         VARCHAR2(100),
  f_balance       NUMBER(25,8),
  c_memo          VARCHAR2(300),
  c_bill_type     VARCHAR2(50),
  l_bill_quantity NUMBER(5),
  c_depcode       VARCHAR2(32),
  l_people_number NUMBER(5),
  c_source        VARCHAR2(5) default 0,
  f_air_fare      NUMBER(19,6),
  f_car_fare      NUMBER(19,6),
  f_toll_fare     NUMBER(19,6),
  f_fuel_fare     NUMBER(19,6),
  f_park_fare     NUMBER(19,6),
  f_traffic_fare  NUMBER(19,6),
  f_hotel_fare    NUMBER(19,6),
  f_other_fare    NUMBER(19,6)
)';
end if;
if fc_IsTableExists('TREIMBURSE_DETAIL_ZS') and not fc_Constraints_Exists('TREIMBURSE_DETAIL_ZS','PK_REIMBURSE_DETAIL_ZS','P','0') then
    execute immediate '
	  alter table TREIMBURSE_DETAIL_ZS
		add constraint PK_REIMBURSE_DETAIL_ZS primary key (L_ID)
		using index ';
end if;
if fc_IsColExists('TREIMBURSE_DETAIL_ZS','c_bill_type') then
    execute immediate 'alter table TREIMBURSE_DETAIL_ZS modify c_bill_type VARCHAR2(50)';
end if;
--20180926caoyi20323(浙商差旅费用报销)--end--
--201809305zhangchao(大包拆小包户编号记录存储表) --start--
if not fc_IsTableExists('TLOAN_CODE_C') then
  execute immediate 'create table TLOAN_CODE_C
(
  ID      VARCHAR2(32),
  C_CODE      VARCHAR2(10)
)';
end if;
if not fc_IsSeqExists('SEQ_LOANDBCODE_C') then
  execute immediate 'create sequence SEQ_LOANDBCODE_C
    minvalue 1
    maxvalue 999999999
    start with 1
    increment by 1
    cache 20';
end if;
--20180930zhangchao(大包拆小包户编号记录存储表) --end--
--20180930yuxd25447(修改律师库种类字段长度)--start--
if fc_IsColExists('TALTERNATIVE_LIBRARY','c_legalcerkind') then
    execute immediate 'alter table TALTERNATIVE_LIBRARY modify c_legalcerkind varchar2(255)';
end if;
--20180930yuxd25447(修改律师库种类字段长度)--end--
--20181008liuan23902 (修改付款信息表中借款人ID长度)--start--
if fc_IsColExists('trepay_info','c_loanaccountcode') then
    execute immediate 'alter table trepay_info modify c_loanaccountcode VARCHAR2(4000)';
end if;
--20181008liuan23902 (修改付款信息表中借款人ID长度)--end--

--20181008wansy24151(到账确认表增加审批单编号) --start
if not fc_IsColExists('TREPAY_CONFIRM','c_approve_no') then
	 execute immediate 'alter table TREPAY_CONFIRM add c_approve_no varchar2(50)';
end if;
--20181008wansy24151(到账确认表增加审批单编号) --end

--20181011zhuocc21770(户信息确认明细表新增确认标识) --start
if not fc_IsColExists('TLOANCONFIRM_APPROVE_DETAIL','c_confirmflag') then
    execute immediate 'alter table TLOANCONFIRM_APPROVE_DETAIL add c_confirmflag varchar2(2)';
end if;
--20181011zhuocc21770(户信息确认明细表新增确认标识) --start

--20181012zhoulh26259(拟收购股权添加资产出售方) --start
if not fc_IsColExists('TPROJECT_INVESTTARGET','c_assetsellername') then

	 execute immediate 'alter table TPROJECT_INVESTTARGET add c_assetsellername varchar2(48)';
end if;
--20181012zhoulh26259(拟收购股权添加资产出售方) --end

--20181012zhoulh26259(拟收购股权添加标志) --start
if not fc_IsColExists('TPROJECT_INVESTTARGET','f_type') then

	 execute immediate 'alter table TPROJECT_INVESTTARGET add f_type varchar2(1)';
end if;
--20181012zhoulh26259(拟收购股权添加标志) --end

--20181015zhuocc21770(竞价结果维护表新增字段“进行二/三拍且价格变动在15%以内”) --start
if not fc_IsColExists('tbidding_result_info','c_priceltfifteenpercent') then
    execute immediate 'alter table tbidding_result_info add c_priceltfifteenpercent varchar2(2)';
end if;
--20181015zhuocc21770(竞价结果维护表新增字段“进行二/三拍且价格变动在15%以内”) --end

--20181016chenhy18048(保证金转收入改造) --start
if fc_IsColExists('TREPAY_LOAN_ALLOCATE','PROCESS_INSTANCEID') then
    execute immediate 'alter table TREPAY_LOAN_ALLOCATE modify PROCESS_INSTANCEID VARCHAR2(100)';
end if;

if not fc_IsTableExists('TDEPOSIT_TURN_INCOME_INFO') then
 execute immediate 
'create table TDEPOSIT_TURN_INCOME_INFO
(
  L_ID               NUMBER not null,
  PROCESS_INSTANCEID VARCHAR2(100),
  C_PROJECTCODE      VARCHAR2(32),
  C_TYPE             CHAR(1),
  F_DEPOSITPRINCIPAL NUMBER(19,6),
  F_PRE_BALANCE      NUMBER(19,6),
  C_REMARK           VARCHAR2(3000),
  C_CHECKFLAG        VARCHAR2(2),
  C_DISTRIBUTE       VARCHAR2(5),
  D_TURN_DATE        DATE
)
';
end if;

if fc_IsTableExists('TDEPOSIT_TURN_INCOME_INFO') and not fc_IsIndexExists('TDEPOSIT_TURN_INCOME_INFO','PK_DEPOSIT_TURN_INCOME_INFO')then
    execute immediate 'alter table TDEPOSIT_TURN_INCOME_INFO
  add constraint PK_DEPOSIT_TURN_INCOME_INFO primary key (L_ID)';
end if;

if not fc_IsSeqExists('SEQ_TURN_INCOME_INFO_ID') then
	execute immediate 'create sequence SEQ_TURN_INCOME_INFO_ID
		minvalue 1
		maxvalue 999999999
		start with 10000
		increment by 1
		cache 20';
end if;
--20181016chenhy18048(保证金转收入改造) --end
--20181017panrm26330(接口请求验证配置表)--start--
if not fc_IsTableExists('THTTP_AUTH_CONFIG') then
execute immediate 'create table THTTP_AUTH_CONFIG
(
  l_id         VARCHAR2(11) not null,
  c_accesskey     VARCHAR2(30),
  c_secretkey     VARCHAR2(30),
  c_systemname    VARCHAR2(100),
  c_isable        VARCHAR2(10),
  c_interfacecode VARCHAR2(50)
)';
execute immediate ' 
	alter table thttp_auth_config
    	add constraint PK_thttp_auth_config_id primary key (L_ID)';

end if;
if not fc_IsSeqExists('SEQ_THTTP_AUTH_CONFIG_ID') then
    execute immediate 'create sequence SEQ_THTTP_AUTH_CONFIG_ID
			minvalue 1
			maxvalue 999999
			start with 1
			increment by 1
			cache 20';
end if;
--20181017panrm26330 (接口请求验证配置表)--end--

--20181017panrm26330(修改接口请求验证配置表秘钥长度)--start--
if fc_IsColExists('THTTP_AUTH_CONFIG','c_accesskey') then
    execute immediate 'alter table THTTP_AUTH_CONFIG modify c_accesskey varchar2(200)';
end if;
if fc_IsColExists('THTTP_AUTH_CONFIG','c_secretkey') then
    execute immediate 'alter table THTTP_AUTH_CONFIG modify c_secretkey varchar2(200)';
end if;
--20181018panrm26330(修改接口请求验证配置表秘钥长度)--end--
--20181019zhangchao(tsysinfo_seq表新增字段) --start--
if not fc_IsColExists('tsysinfo_seq','c_param') then
    execute immediate 'alter table tsysinfo_seq add c_param VARCHAR2(32)';
end if;
--20181019zhangchao(tsysinfo_seq表新增字段) --end--

--20181019luheng24337(抵质押物合并投资下的抵质押新增字段)--begin--
if not fc_IsColExists('TASSET_PAWN_INFO','c_borrower') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_borrower varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_borrowdept') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_borrowdept varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_collateralstatus') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_collateralstatus varchar2(10)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_landcollateralid') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_landcollateralid varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','process_instanceid') then
    execute immediate 'alter table TASSET_PAWN_INFO add process_instanceid varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_confirmstatus') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_confirmstatus varchar2(2)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_rejecttype') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_rejecttype varchar2(2)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_guatway') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_guatway varchar2(1)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_warning_line') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_warning_line number(19, 4)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_closing_line') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_closing_line number(19, 4)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_riskcontrol') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_riskcontrol varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_fundcode') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_fundcode varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_guarantor') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_guarantor varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_exchangetype') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_exchangetype varchar2(10)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_stockcode') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_stockcode varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_unlockdate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_unlockdate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_enterprisename') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_enterprisename varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_storagemode') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_storagemode varchar2(10)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_innerid') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_innerid varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_rate') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_rate number(10, 6)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_startdate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_startdate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_beginamount') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_beginamount number(19, 4)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_dealdate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_dealdate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_lendamount') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_lendamount number(19, 4)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_isinsuranced') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_isinsuranced varchar2(10)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_insuranceenddate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_insuranceenddate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_insurancecompany') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_insurancecompany varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_insuranceno') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_insuranceno varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_insurancebalance') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_insurancebalance number(19, 2)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_insurancesituation') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_insurancesituation varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_currentamount') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_currentamount number(19, 4)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_initamount') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_initamount number(19, 4)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_initvalue') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_initvalue number(19, 2)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_shareamount') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_shareamount number(12, 0)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_sharebalance') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_sharebalance number(19, 2)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_rightsequence') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_rightsequence varchar2(10)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_evaluatedate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_evaluatedate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_evaluateorg') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_evaluateorg varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_estexplain') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_estexplain varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_collateralid') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_collateralid varchar2(60)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_registrationauthority') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_registrationauthority varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_collateralcode') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_collateralcode varchar2(255)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_registrationdate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_registrationdate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_voucherenddate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_voucherenddate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','l_serialno') then
    execute immediate 'alter table TASSET_PAWN_INFO add l_serialno number(10)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_confirm_user') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_confirm_user varchar2(40)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_confirm_time') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_confirm_time date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_projectcode') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_projectcode varchar2(32)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','f_collateralamount') then
    execute immediate 'alter table TASSET_PAWN_INFO add f_collateralamount number(19, 6)';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_intendedreturndate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_intendedreturndate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','d_returndate') then
    execute immediate 'alter table TASSET_PAWN_INFO add d_returndate date';
end if;
if not fc_IsColExists('TASSET_PAWN_INFO','c_kind') then
    execute immediate 'alter table TASSET_PAWN_INFO add c_kind varchar2(32)';
end if;
--20181019luheng24337(抵质押物合并投资下的抵质押新增字段)--end--
--20181019yuxd25447(律所选聘选聘理由字段长度扩充)--start--
if fc_IsColExists('toffice_apply','C_SELECTTYPEREASON') then
    execute immediate 'alter table toffice_apply modify C_SELECTTYPEREASON varchar2(1000)';
end if;
--20181019yuxd25447(律所选聘选聘理由字段长度扩充)--end--

--20181019zhoulh26259(新增用印信息表) --start--
if not fc_IsTableExists('TINVEST_CONTRACT_PRINTEDINFO') then
execute immediate '
  create table TINVEST_CONTRACT_PRINTEDINFO
  (
    L_PRINTEDID   NUMBER not null,
    C_CONTRACTID  VARCHAR2(48),
    C_CONTRACTNO    VARCHAR2(255) not null,
    C_CONTRACTNAME    VARCHAR2(382) not null,
    C_STAMPOFCOMPANY  VARCHAR2(32),
    C_STAMPTYPE VARCHAR2(32),
    F_PRINTEDNUMBER   NUMBER(10)
  )';
  
end if;

if fc_IsTableExists('TINVEST_CONTRACT_PRINTEDINFO') and not fc_Constraints_Exists('TINVEST_CONTRACT_PRINTEDINFO','PK_CONTRACT_PRINTEDINFO','P','0') then
    execute immediate '
    alter table TINVEST_CONTRACT_PRINTEDINFO
    add constraint PK_CONTRACT_PRINTEDINFO primary key (L_PRINTEDID)
    using index ';
  end if;

if not fc_IsSeqExists('SEQ_CONTRACT_PRINTEDINFO_ID') then
  execute immediate '
      create sequence SEQ_CONTRACT_PRINTEDINFO_ID
      minvalue 1
      maxvalue 999999999
      start with 1000
      increment by 1
      cache 20';
end if;
--20181019zhoulh26259(新增用印信息表) --end--

--20181022wansy24151(资金计划信息主表) --start--
if not fc_IsTableExists('TCAPITAL_INFO') then
execute immediate '
create table TCAPITAL_INFO
(
  l_id       NUMBER(10)   not null,
  c_batch_no       VARCHAR2(32),
  d_begin_date     DATE     not null,
  d_end_date     DATE     not null,
  c_creator_id   VARCHAR2(48),
  c_creator    VARCHAR2(48),
  d_created_time   DATE,
  c_last_updator_id  VARCHAR2(48),
  c_last_updator     VARCHAR2(48),
  d_last_updated_time   DATE
)';
end if;

--20181022wansy24151(资金计划主表主键)
if fc_IsTableExists('TCAPITAL_INFO') and not fc_Constraints_Exists('TCAPITAL_INFO', 'PK_TCAPITAL_INFO', 'P', '0') then
execute immediate '
  alter table TCAPITAL_INFO
  add constraint PK_TCAPITAL_INFO primary key (l_id)
  using index ';
end if;

--20181022wansy24151(新建序列，用于资金计划主表的主键)
if not fc_IsSeqExists('SEQ_CAPITAL_INFO_ID') then
execute immediate '
  create sequence SEQ_CAPITAL_INFO_ID
  minvalue 1
  maxvalue 999999999
  start with 1
  increment by 1
  cache 20';
end if;
--20181022wansy24151(资金计划信息主表) --end--

--20181022wansy24151(资金计划表) --start--
if not fc_IsTableExists('TCAPITAL_PLAN') then
execute immediate '
create table TCAPITAL_PLAN
(
  l_id       NUMBER(10)   not null,
  l_info_id    NUMBER(10)   not null,
  c_serial_number  VARCHAR2(10),
  c_projectname  VARCHAR2(500),
  c_capital_plan   VARCHAR2(100),
  c_remark     VARCHAR2(3000),
  d_begin_date     DATE,
  d_end_date     DATE,
  c_creator_id   VARCHAR2(48),
  c_creator    VARCHAR2(48),
  d_created_time   DATE,
  c_last_updator_id  VARCHAR2(48),
  c_last_updator     VARCHAR2(48),
  d_last_updated_time   DATE
)';
end if;

--20181022wansy24151(资金计划主键)
if fc_IsTableExists('TCAPITAL_PLAN') and not fc_Constraints_Exists('TCAPITAL_PLAN', 'PK_TCAPITAL_PLAN', 'P', '0') then
execute immediate '
  alter table TCAPITAL_PLAN
  add constraint PK_TCAPITAL_PLAN primary key (l_id)
  using index ';
end if;

--20181022wansy24151(新建序列，用于资金计划的主键)
if not fc_IsSeqExists('SEQ_CAPITAL_PLAN_ID') then
execute immediate '
  create sequence SEQ_CAPITAL_PLAN_ID
  minvalue 1
  maxvalue 999999999
  start with 1
  increment by 1
  cache 20';
end if;
--20181022wansy24151(资金计划) --end--

--20181022wansy24151(资金计划导入中间表) --start--
if not fc_IsTableExists('T_INT_CAPITAL_PLAN') then
execute immediate '
create table T_INT_CAPITAL_PLAN
( 
  c_rownum     VARCHAR2(32),
  c_serial_number  VARCHAR2(10),
  c_projectname  VARCHAR2(500),
  c_capital_plan   VARCHAR2(100),
  c_remark     VARCHAR2(3000),
  c_intstatus      VARCHAR2(2),
  c_errmsg         VARCHAR2(3000),
  c_batch_no       VARCHAR2(32),
  c_source         VARCHAR2(20)
)';
end if;
--20181022wansy24151(资金计划导入中间) --end--


--20181022wansy24151(银行授用信情况及工作计划表) --start--
if not fc_IsTableExists('TCAPITAL_BANK_CREDIT') then
execute immediate '
create table TCAPITAL_BANK_CREDIT
(
  l_id       NUMBER(10)   not null,
  l_info_id    NUMBER(10)   not null,
  c_bank_name    VARCHAR2(100),
  c_serial_number  VARCHAR2(10),
  c_credit_way   VARCHAR2(50),
  f_credit_line  NUMBER(19,6),
  f_credit_used     NUMBER(19,6),
  f_credit_surplus  NUMBER(19,6),
  c_credit_breeds   VARCHAR2(500),
  f_latest_interest  NUMBER(19,6),
  c_work_progress    VARCHAR2(2000),
  c_next_plan    VARCHAR2(2000),
  d_begin_date     DATE,
  d_end_date     DATE,
  c_creator_id   VARCHAR2(48),
  c_creator    VARCHAR2(48),
  d_created_time   DATE,
  c_last_updator_id  VARCHAR2(48),
  c_last_updator     VARCHAR2(48),
  d_last_updated_time   DATE
)';
end if;

--20181022wansy24151(银行授用信情况及工作计划主键)
if fc_IsTableExists('TCAPITAL_BANK_CREDIT') and not fc_Constraints_Exists('TCAPITAL_BANK_CREDIT', 'PK_TCAPITAL_BANK_CREDIT', 'P', '0') then
execute immediate '
  alter table TCAPITAL_BANK_CREDIT
  add constraint PK_TCAPITAL_BANK_CREDIT primary key (l_id)
  using index ';
end if;

--20181022wansy24151(新建序列，银行授用信情况及工作计划的主键)
if not fc_IsSeqExists('SEQ_CAPITAL_BANK_CREDIT_ID') then
execute immediate '
  create sequence SEQ_CAPITAL_BANK_CREDIT_ID
  minvalue 1
  maxvalue 999999999
  start with 1
  increment by 1
  cache 20';
end if;
--20181022wansy24151(银行授用信情况及工作计划表) --end--


--20181022wansy24151(银行授用信情况及工作计划表 导入中间表) --start--
if not fc_IsTableExists('T_INT_CAPITAL_BANK_CREDIT') then
execute immediate '
create table T_INT_CAPITAL_BANK_CREDIT
(
  c_rownum     VARCHAR2(32),  
  c_serial_number  VARCHAR2(10),
  c_bank_name  VARCHAR2(100),
  c_credit_way   VARCHAR2(50),
  f_credit_line  NUMBER(25,6),
  f_credit_used     NUMBER(25,6),
  f_credit_surplus  NUMBER(25,6),
  c_credit_breeds   VARCHAR2(500),
  f_latest_interest NUMBER(19,6),
  c_work_progress    VARCHAR2(2000),
  c_next_plan    VARCHAR2(2000),
  c_intstatus      VARCHAR2(2),
  c_errmsg         VARCHAR2(3000),
  c_batch_no      VARCHAR2(32),
  c_source         VARCHAR2(20)
)';
end if;
--20181022wansy24151(银行授用信情况及工作计划表 导入中间表) --end--

--20181022wansy24151(资金运用情况表) --start--
if not fc_IsTableExists('TCAPITAL_FUNDS_USE') then
execute immediate '
create table TCAPITAL_FUNDS_USE
(
  l_id       NUMBER(10)   not null,
  l_info_id    NUMBER(10)   not null,
  c_serial_number  VARCHAR2(10),
  c_flag  VARCHAR2(10) not null,
  c_depcode_name   VARCHAR2(50),
  c_institution  VARCHAR2(100),
  c_name           VARCHAR2(255),
  c_project_typename   VARCHAR2(32),
  f_amount  NUMBER(19,6),
  f_expected_rate   NUMBER(19,6),
  c_break_even    VARCHAR2(50),
  l_term       NUMBER(10),
  d_purchase_date   DATE,
  d_interest_date   DATE,
  d_due_date       DATE,
  d_arrival_date   DATE,
  f_income_received  NUMBER(19,6),
  f_income_principal  NUMBER(19,6),
  c_remark         VARCHAR2(2000),
  d_begin_date     DATE,
  d_end_date     DATE,
  c_creator_id   VARCHAR2(48),
  c_creator    VARCHAR2(48),
  d_created_time   DATE,
  c_last_updator_id  VARCHAR2(48),
  c_last_updator     VARCHAR2(48),
  d_last_updated_time   DATE
)';
end if;

--20181022wansy24151(资金运用情况主键)
if fc_IsTableExists('TCAPITAL_FUNDS_USE') and not fc_Constraints_Exists('TCAPITAL_FUNDS_USE', 'PK_TCAPITAL_FUNDS_USE', 'P', '0') then
execute immediate '
  alter table TCAPITAL_FUNDS_USE
  add constraint PK_TCAPITAL_FUNDS_USE primary key (l_id)
  using index ';
end if;

--20181022wansy24151(新建序列，资金运用情况的主键)
if not fc_IsSeqExists('SEQ_CAPITAL_FUNDS_USE_ID') then
execute immediate '
  create sequence SEQ_CAPITAL_FUNDS_USE_ID
  minvalue 1
  maxvalue 999999999
  start with 1
  increment by 1
  cache 20';
end if;
--20181022wansy24151(资金运用情况表) --end--

--20181022wansy24151(资金运用情况表导入中间表) --start--
if not fc_IsTableExists('T_INT_CAPITAL_FUNDS_USE') then
execute immediate '
create table T_INT_CAPITAL_FUNDS_USE
(
  c_rownum     VARCHAR2(32),  
  c_flag     VARCHAR2(10),  
  c_serial_number  VARCHAR2(10),
  c_depcode_name   VARCHAR2(50),
  c_institution  VARCHAR2(100),
  c_name           VARCHAR2(255),
  c_project_typename   VARCHAR2(32),
  f_amount  NUMBER(19,6),
  f_expected_rate   NUMBER(19,6),
  c_break_even    VARCHAR2(50),
  l_term       NUMBER(10),
  d_purchase_date   DATE,
  d_interest_date  DATE,
  d_due_date       DATE,
  d_arrival_date   DATE,
  f_income_received  NUMBER(19,6),
  f_income_principal NUMBER(19,6),
  c_remark         VARCHAR2(2000),
  c_intstatus      VARCHAR2(2),
  c_errmsg         VARCHAR2(3000),
  c_batch_no      VARCHAR2(32),
  c_source         VARCHAR2(20)
)';
end if;
--20181022wansy24151(资金运用情况表导入中间表) --end--

--20181022wansy24151(银行账户余额汇总表) --start--
if not fc_IsTableExists('TCAPITAL_ACCOUNT_BALANCE') then
execute immediate '
create table TCAPITAL_ACCOUNT_BALANCE
(
  l_id       NUMBER(10)   not null,
  c_batch_no       VARCHAR2(32),
  c_serial_number  VARCHAR2(10),
  c_account_bank   VARCHAR2(100),
  c_account   VARCHAR2(50),
  f_deposit_rate  NUMBER(19,6),
  f_account_balance NUMBER(19,6),
  c_transfer_fee   VARCHAR2(2000),
  c_remark         VARCHAR2(2000),
  d_begin_date     DATE,
  d_end_date     DATE,
  c_creator_id   VARCHAR2(48),
  c_creator    VARCHAR2(48),
  d_created_time   DATE,
  c_last_updator_id  VARCHAR2(48),
  c_last_updator     VARCHAR2(48),
  d_last_updated_time   DATE
)';
end if;

--20181022wansy24151(银行账户余额汇总主键)
if fc_IsTableExists('TCAPITAL_ACCOUNT_BALANCE') and not fc_Constraints_Exists('TCAPITAL_ACCOUNT_BALANCE', 'PK_TCAPITAL_ACCOUNT_BALANCE', 'P', '0') then
execute immediate '
  alter table TCAPITAL_ACCOUNT_BALANCE
  add constraint PK_TCAPITAL_ACCOUNT_BALANCE primary key (l_id)
  using index ';
end if;

--20181022wansy24151(新建序列，银行账户余额汇总主键)
if not fc_IsSeqExists('SEQ_CAPITAL_ACCOUNT_BALANCE_ID') then
execute immediate '
  create sequence SEQ_CAPITAL_ACCOUNT_BALANCE_ID
  minvalue 1
  maxvalue 999999999
  start with 1
  increment by 1
  cache 20';
end if;
--20181022wansy24151(银行账户余额汇总表) --end--

--20181022wansy24151(银行账户余额汇总 导入中间表) --start--
if not fc_IsTableExists('T_INT_CAPITAL_ACCOUNT_BALANCE') then
execute immediate '
create table T_INT_CAPITAL_ACCOUNT_BALANCE
(
  c_rownum     VARCHAR2(32),
  c_serial_number  VARCHAR2(10),
  c_account_bank   VARCHAR2(100),
  c_account   VARCHAR2(50),
  f_deposit_rate  NUMBER(19,6),
  f_account_balance NUMBER(19,6),
  c_transfer_fee   VARCHAR2(2000),
  c_remark         VARCHAR2(2000),
  c_intstatus      VARCHAR2(2),
  c_errmsg         VARCHAR2(3000),
  c_batch_no       VARCHAR2(32),
  c_source         VARCHAR2(20)
)';
end if;
--20181022wansy24151(银行账户余额汇总 导入中间表) --end--

--20181022luheng(抵质押物trace表) --begin--
if not fc_IsTableExists('TASSET_PAWN_FACTOR_TRACE') then
execute immediate 'create table TASSET_PAWN_FACTOR_TRACE
(
  l_serialno     NUMBER not null,
  c_factorcode   VARCHAR2(50) not null,
  c_initvalue    VARCHAR2(3000),
  c_modifyvalue  VARCHAR2(3000),
  c_modifyuser   VARCHAR2(20),
  d_modifytime   DATE,
  c_reviewuser   VARCHAR2(20),
  d_reviewtime   DATE,
  c_hasreview    VARCHAR2(1),
  c_haseffect    VARCHAR2(1),
  c_maintablekey VARCHAR2(50),
  c_tempcode     VARCHAR2(20)
)';
execute immediate ' 
  alter table TASSET_PAWN_FACTOR_TRACE
  add constraint PK_TASSET_PAWN_TRACE_ID primary key (L_SERIALNO, C_FACTORCODE)';
end if;

if not fc_IsSeqExists('SEQ_TASSET_PAWN_FACTOR_TRACE') then
    execute immediate 'create sequence SEQ_TASSET_PAWN_FACTOR_TRACE
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181022luheng(抵质押物trace表) --end--

--20181023chenhy18048(保证金转收入业务表增加创建时间、创建人等字段) --start--
if not fc_IsColExists('TDEPOSIT_TURN_INCOME_INFO','c_createuser') then
    execute immediate 'alter table TDEPOSIT_TURN_INCOME_INFO add c_createuser VARCHAR2(32)';
end if;
if not fc_IsColExists('TDEPOSIT_TURN_INCOME_INFO','c_updateuser') then
    execute immediate 'alter table TDEPOSIT_TURN_INCOME_INFO add c_updateuser VARCHAR2(32)';
end if;
if not fc_IsColExists('TDEPOSIT_TURN_INCOME_INFO','d_createtime') then
    execute immediate 'alter table TDEPOSIT_TURN_INCOME_INFO add d_createtime date';
end if;
if not fc_IsColExists('TDEPOSIT_TURN_INCOME_INFO','d_updatetime') then
    execute immediate 'alter table TDEPOSIT_TURN_INCOME_INFO add d_updatetime date';
end if;
--20181023chenhy18048(保证金转收入业务表增加创建时间、创建人等字段) --end--

--20181023路恒24337(资产包导入抵押人 、保证人临时表) --begin--
if not fc_IsTableExists('T_INT_MORTGAGOR_INFO') then
    execute immediate 'create table T_INT_MORTGAGOR_INFO
	(
	  c_rownum             VARCHAR2(32),
	  c_customername       VARCHAR2(32),
	  c_customertype       VARCHAR2(10),
	  c_certificatetype    VARCHAR2(10),
	  c_enablesocialcredit VARCHAR2(10),
	  c_certificatecode    VARCHAR2(255),
	  c_intstatus          VARCHAR2(2),
	  c_errmsg             VARCHAR2(3000),
	  c_batch_no           NUMBER(20),
	  C_SOURCE 			   VARCHAR2(20)
	)';
end if;
if not fc_IsTableExists('T_INT_GUARANTEER_INFO') then
    execute immediate 'create table T_INT_GUARANTEER_INFO
(
  c_rownum             VARCHAR2(32),
  c_customername       VARCHAR2(32),
  c_customertype       VARCHAR2(10),
  c_certificatetype    VARCHAR2(10),
  c_enablesocialcredit VARCHAR2(10),
  c_certificatecode    VARCHAR2(255),
  c_intstatus          VARCHAR2(2),
  c_errmsg             VARCHAR2(3000),
  c_batch_no           NUMBER(20),
  C_SOURCE 			   VARCHAR2(20)
)';
end if;
--20181023路恒24337(资产包导入抵押人 、保证人临时表) --end--


--20181022luheng(保证合同trace表) --begin--
if not fc_IsTableExists('TASSET_GUARANTEE_FACTOR_TRACE') then
execute immediate 'create table TASSET_GUARANTEE_FACTOR_TRACE
(
  l_serialno     NUMBER not null,
  c_factorcode   VARCHAR2(50) not null,
  c_initvalue    VARCHAR2(3000),
  c_modifyvalue  VARCHAR2(3000),
  c_modifyuser   VARCHAR2(20),
  d_modifytime   DATE,
  c_reviewuser   VARCHAR2(20),
  d_reviewtime   DATE,
  c_hasreview    VARCHAR2(1),
  c_haseffect    VARCHAR2(1),
  c_maintablekey VARCHAR2(50),
  c_tempcode     VARCHAR2(20)
)';
execute immediate ' 
  alter table TASSET_GUARANTEE_FACTOR_TRACE
  add constraint PK_TASSET_GUARANTEE_TRACE_ID primary key (L_SERIALNO, C_FACTORCODE)';
end if;

if not fc_IsSeqExists('SEQ_GUARANTEE_FACTOR_TRACE') then
    execute immediate 'create sequence SEQ_GUARANTEE_FACTOR_TRACE
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181022luheng(保证合同trace表) --end--

if fc_isdataexists('select count(1) from user_tab_columns where table_name = upper(''T_INT_ASSET_LOANACCOUNT_INFO'') and column_name = upper(''C_PROVINCECODE'') and DATA_TYPE =''VARCHAR2'' and data_length < 10') then
	execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO modify C_PROVINCECODE varchar2(10)';
end if;

--20181024luheng(保证合同合并,投资保证合同新增字段) --begin--
if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_projectcode') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_projectcode varchar2(32)';
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_rlat_contract') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_rlat_contract varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','d_sign_date') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add d_sign_date date'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_guarantee_form') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_guarantee_form varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_guarantor_type') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_guarantor_type varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_related') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_related varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_remark') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_remark varchar2(1024)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_kind') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_kind varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_confirmstatus') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_confirmstatus varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','l_serialno') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add l_serialno number(10)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_collateralstatus') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_collateralstatus varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','c_tempcode') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add c_tempcode varchar2(32)'; 
end if;

if fc_IsTableExists('TASSET_GUARANTEECONTRACT') and not fc_IsColExists('TASSET_GUARANTEECONTRACT','C_REJECTTYPE') then
	execute immediate 'alter table TASSET_GUARANTEECONTRACT add C_REJECTTYPE varchar2(10)';  
end if;
--20181024luheng(保证合同合并,投资保证合同新增字段) --end--

--20181024wansy24151付款表 增加付款类型类别--start--
if not fc_IsColExists('trepay_info','c_pay_category') then
    execute immediate 'alter table trepay_info add c_pay_category VARCHAR2(10)';
end if;
--20181024wansy24151付款表增加付款类型类别--end--

--20181024wansy24151(付款类型配置表) --start--
if not fc_IsTableExists('trepay_info_config') then
execute immediate '
create table trepay_info_config
(
  l_id       NUMBER(10)   not null,
  c_project_nature  VARCHAR2(100),
  c_pay_category  VARCHAR2(10),
  c_pay_type   VARCHAR2(10)
)';
end if;
--20181024wansy24151(付款类型配置表) --end--

--20181023taolj20522(资金系统对接新增外部系统推送id字段) --start
if fc_IsTableExists('TREPAY_ACCOUNT') and not fc_IsColExists('TREPAY_ACCOUNT','c_out_id') then
	  execute immediate 'alter table TREPAY_ACCOUNT add c_out_id varchar2(100)';
end if;
--20181023taolj20522(资金系统对接新增外部系统推送id字段) --end

--20181025luheng24337(调整借款人省、市字段长度) --begin
if fc_isdataexists('select count(1) from user_tab_columns where table_name = upper(''TASSET_LOANACCOUNT_INFO'') and column_name = upper(''C_PROVINCECODE'') and DATA_TYPE =''VARCHAR2'' and data_length < 10') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO modify C_PROVINCECODE varchar2(10)';
end if;
if fc_isdataexists('select count(1) from user_tab_columns where table_name = upper(''TASSET_LOANACCOUNT_INFO'') and column_name = upper(''C_CITYNO'') and DATA_TYPE =''VARCHAR2'' and data_length < 10') then
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO modify C_CITYNO varchar2(10)';
end if;
--20181025luheng24337(调整借款人省、市字段长度) --end
--20181029yuxd25447(干系人导入，修改按钮绑定事件)--start
if fc_isdataexists('select count(1) from tproject_temp_config_button t where t.c_modelcode=''customerManager'' and t.c_buttoncode=''excelImport''') then
  update tproject_temp_config_button t set t.c_clickbound='amcExcelImport' ,t.c_buttoncode='amcExcelImport' where t.c_modelcode='customerManager' and t.c_buttoncode='excelImport';
end if;
--20181029yuxd25447(干系人导入，修改按钮绑定事件)--end
--20181029yuxd25447(干系人导入，中间表)--start
if not fc_IsTableExists('T_INT_CUSTOMER_INFO') then
execute immediate '
create table T_INT_CUSTOMER_INFO
(
  c_BATCH_NO                number(20) ,
  C_INTSTATUS               varchar2(2),
  C_ERRMSG                  varchar2(3000),      
  C_SOURCE                  varchar2(20) , 
  c_customerrole        VARCHAR2(16),
  c_customercode                VARCHAR2(32),
  c_customerbizcode             VARCHAR2(64),
  c_customername                VARCHAR2(500),
  c_customerproperty            VARCHAR2(1),
  c_orgproperty                 VARCHAR2(1),
  c_certificatetype             VARCHAR2(5),
  c_certificatecode             VARCHAR2(255),
  c_customerprovince            VARCHAR2(32),
  c_customercity                VARCHAR2(32),
  c_address                     VARCHAR2(512),
  c_postcode                    VARCHAR2(6),
  c_isvalid                     VARCHAR2(1) default 1,
  c_createuser                  VARCHAR2(32),
  d_createtime                  DATE,
  c_updateuser                  VARCHAR2(32),
  d_updatetime                  DATE,
  c_entscale                    VARCHAR2(5),
  l_serialno                    NUMBER(20),
  c_rejecttype                  VARCHAR2(2),
  c_memo                        VARCHAR2(3000),
  c_sixseq_contractcode         VARCHAR2(6),
  c_belongindustry              VARCHAR2(32),
  d_setupdate                   DATE,
  c_representative              VARCHAR2(50),
  f_registemoney                NUMBER(19,6),
  c_businesscope                VARCHAR2(4000),
  c_industrytype                VARCHAR2(8),
  c_companyproperty             VARCHAR2(3),
  c_organizationcode            VARCHAR2(32),
  c_legalperson                 VARCHAR2(200),
  c_partfinancingplatform       VARCHAR2(2),
  c_rivalindustrytype           VARCHAR2(2),
  c_isgroup                     VARCHAR2(2),
  c_isthirdpartyplatform        VARCHAR2(2),
  c_ogcompanyproperty           VARCHAR2(2),
  c_area                        VARCHAR2(20),
  c_status                      VARCHAR2(5),
  c_tempcode                    VARCHAR2(255),
  c_rejectcode                  VARCHAR2(20),
  c_simplecustomername          VARCHAR2(200),
  c_sex                         VARCHAR2(2),
  d_birthday                    DATE,
  c_institutionscode            VARCHAR2(32),
  c_loancode                    VARCHAR2(32),
  c_enterprisetype              VARCHAR2(2),
  c_industrypro                 VARCHAR2(2),
  c_industrydtl                 VARCHAR2(6),
  c_jobtype                     VARCHAR2(2),
  c_country                     VARCHAR2(3),
  c_nationality                 VARCHAR2(3),
  c_registrationtype            VARCHAR2(3),
  c_registrationlicense         VARCHAR2(32),
  f_registeredcapital           NUMBER(19,2),
  c_legzidtype                  VARCHAR2(2),
  c_legzidcode                  VARCHAR2(32),
  d_enterprisestartdate         DATE,
  d_licensestartdate            DATE,
  d_licenseenddate              DATE,
  c_registeredaddress           VARCHAR2(255),
  f_personalincome              NUMBER(19,2),
  f_familyincome                NUMBER(19,2),
  c_statetaxregistration        VARCHAR2(32),
  c_localtaxregistration        VARCHAR2(32),
  f_enterpriseasset             NUMBER(19,2),
  f_enterprisedebt              NUMBER(19,2),
  c_listedflag                  VARCHAR2(2),
  c_marketaddress               VARCHAR2(2),
  c_stock_code                  VARCHAR2(16),
  c_cooperatetype               VARCHAR2(2),
  c_relationtype                VARCHAR2(2),
  c_importandexportflag         VARCHAR2(2),
  c_snflag                      VARCHAR2(2),
  c_platformflag                VARCHAR2(2),
  c_platformtype                VARCHAR2(2),
  c_zfkgflag                    VARCHAR2(2),
  c_governmentlevel             VARCHAR2(5),
  c_governmentname              VARCHAR2(255),
  c_liveaddress                 VARCHAR2(254),
  c_component                   VARCHAR2(4),
  c_component_sub               VARCHAR2(6),
  c_customerregion              VARCHAR2(32),
  c_reviewuser                  VARCHAR2(32),
  d_reviewtime                  DATE,
  c_isgovernment                VARCHAR2(2),
  c_isshut                      VARCHAR2(2),
  c_licensenum                  VARCHAR2(255),
  c_certificatenum              VARCHAR2(255),
  c_period                      VARCHAR2(255),
  c_certificateperiod           VARCHAR2(32),
  c_businessaddress             VARCHAR2(255),
  c_businesspostcode            VARCHAR2(6),
  c_capitalsource               VARCHAR2(100),
  c_riskgrade                   VARCHAR2(2),
  c_organizationperiod          VARCHAR2(32),
  c_licenseperiod               VARCHAR2(32),
  c_otherbusinesscode           VARCHAR2(32),
  c_otherbusinessperiod         VARCHAR2(32),
  c_representativecontact       VARCHAR2(32),
  c_representativeperiod        VARCHAR2(32),
  c_belonggroup                 VARCHAR2(32),
  c_engname                     VARCHAR2(255),
  c_weburl                      VARCHAR2(255),
  c_extfield1                   VARCHAR2(255),
  c_extfield2                   VARCHAR2(255),
  c_extfield3                   VARCHAR2(255),
  c_extfield4                   VARCHAR2(255),
  c_extfield5                   VARCHAR2(255),
  c_extfield6                   VARCHAR2(255),
  c_extfield7                   VARCHAR2(255),
  c_extfield8                   VARCHAR2(255),
  c_extfield9                   VARCHAR2(255),
  c_extfield10                  VARCHAR2(255),
  c_smallclass                  VARCHAR2(2),
  c_ccy                         VARCHAR2(8),
  c_telephone                   VARCHAR2(32),
  c_extype                      VARCHAR2(2),
  c_enablesocialcredit          VARCHAR2(2),
  c_industrydetail              VARCHAR2(6),
  c_siteownership               VARCHAR2(100),
  c_budgetaryrevenue            VARCHAR2(100),
  c_counterpartyconditions      VARCHAR2(20),
  c_diligencestatus             VARCHAR2(10),
  c_registrationkind            VARCHAR2(3),
  c_feno                        VARCHAR2(32),
  c_emp_population              VARCHAR2(6),
  c_features                    VARCHAR2(32),
  c_faxnumber                   VARCHAR2(35),
  c_email                       VARCHAR2(40),
  c_operate_space               VARCHAR2(8),
  c_moneytype                   VARCHAR2(3),
  c_superiorcompany             VARCHAR2(80),
  c_superiorloancode            VARCHAR2(16),
  c_superiororganizationcode    VARCHAR2(10),
  c_finance_orgproperty         VARCHAR2(1),
  c_isrelated                   VARCHAR2(2),
  c_accpermitno                 VARCHAR2(32),
  c_enterprisetypedetail        VARCHAR2(3),
  c_accstatus                   VARCHAR2(3),
  c_orgstatus                   VARCHAR2(3),
  c_findeptel                   VARCHAR2(32),
  c_companytele                 VARCHAR2(16),
  c_bankaccountno               VARCHAR2(32),
  c_bankname                    VARCHAR2(64),
  c_bankaccountlicno            VARCHAR2(32),
  c_taxpayerno                  VARCHAR2(25),
  c_isgeneraltaxpayer           VARCHAR2(1),
  f_companyvaluation            VARCHAR2(32),
  c_marketstatus                VARCHAR2(32),
  c_companyphase                VARCHAR2(32),
  c_contact                     VARCHAR2(32),
  c_contactaddress              VARCHAR2(32),
  d_expiredate                  DATE,
  c_contactnum                  VARCHAR2(32),
  c_issubmitcredit              VARCHAR2(3),
  c_registrationcodekind        VARCHAR2(2),
  c_workcompany                 VARCHAR2(300),
  c_position                    VARCHAR2(300),
  c_is_hnte                     VARCHAR2(3),
  c_is_nste                     VARCHAR2(3),
  c_is_taxation_policy          VARCHAR2(3),
  c_fundmanager_pcode           VARCHAR2(32),
  c_estimatedvalue              VARCHAR2(16),
  d_claimtaxdate                DATE,
  d_auditreportdate             DATE,
  d_annualinspectiondate        DATE,
  c_mobilephone                 VARCHAR2(16),
  c_simplename                  VARCHAR2(255),
  c_nycustomertype              VARCHAR2(255),
  c_attribute                   VARCHAR2(255),
  c_creditlevel                 VARCHAR2(255),
  c_corecustomertype            VARCHAR2(255),
  c_regcusttype                 VARCHAR2(32),
  c_eastcusttype                VARCHAR2(32),
  c_stock_market                VARCHAR2(4),
  c_is_invested                 VARCHAR2(3),
  c_agencyflag                  VARCHAR2(3),
  c_manageorg                   VARCHAR2(32),
  c_custmanager                 VARCHAR2(32),
  c_tatradeacco                 VARCHAR2(32),
  c_identitytype                VARCHAR2(1),
  d_idvaliddatebeg              DATE,
  c_workunittype                VARCHAR2(32),
  c_orgtype                     VARCHAR2(2),
  d_lawidvaliddatebeg           DATE,
  d_lawidvaliddate              DATE,
  c_contype                     VARCHAR2(2),
  c_contno                      VARCHAR2(32),
  d_conidvaliddatebeg           DATE,
  d_conidvaliddate              DATE,
  c_conmobileno                 VARCHAR2(24),
  c_consex                      VARCHAR2(2),
  c_conrelative                 VARCHAR2(60),
  c_conmoaddress                VARCHAR2(255),
  c_convocation                 VARCHAR2(2),
  c_conphone1                   VARCHAR2(22),
  c_vocation                    VARCHAR2(2),
  c_vocationotherdesc           VARCHAR2(255),
  c_corptel                     VARCHAR2(22),
  c_corpname                    VARCHAR2(40),
  d_industryidvaliddatebeg      DATE,
  c_incomsource                 VARCHAR2(100),
  c_incomesourceotherdesc       VARCHAR2(255),
  c_regmoneytype                VARCHAR2(5),
  c_responpername               VARCHAR2(60),
  c_responperidtype             VARCHAR2(2),
  c_responperidno               VARCHAR2(60),
  d_responperidvalidatebeg      DATE,
  d_responperidvalidate         DATE,
  c_isproinvestor               VARCHAR2(2),
  c_phone2                      VARCHAR2(22),
  c_companytype                 VARCHAR2(2),
  c_nation                      VARCHAR2(2),
  c_custsource                  VARCHAR2(10),
  c_contrholderno               VARCHAR2(20),
  c_contrholdername             VARCHAR2(60),
  c_contrholderidtype           VARCHAR2(2),
  c_contrholderidno             VARCHAR2(60),
  d_contrholderidvalidatebeg    DATE,
  d_contrholderidvalidate       DATE,
  c_contrholderphone            VARCHAR2(22),
  c_cino                        VARCHAR2(20),
  c_main_cis                    VARCHAR2(20),
  c_customer_big_type           VARCHAR2(5),
  c_customer_type               VARCHAR2(5),
  c_country_code                VARCHAR2(5),
  c_register_place              VARCHAR2(600),
  d_establish_date              DATE,
  c_nature                      VARCHAR2(5),
  c_subjection                  VARCHAR2(5),
  c_qualification               VARCHAR2(5),
  l_employee_num                NUMBER(10),
  d_credit_date                 DATE,
  c_organ_type                  VARCHAR2(5),
  c_law_duty                    VARCHAR2(5),
  c_english_name                VARCHAR2(400),
  c_archive_status              VARCHAR2(5),
  c_exposure_flag               VARCHAR2(10),
  c_advance_kind                VARCHAR2(200),
  c_advance_reason              VARCHAR2(1200),
  c_color_flag                  VARCHAR2(5),
  c_risk_custom_flag            VARCHAR2(5),
  c_financial_report_flag       VARCHAR2(5),
  c_finace_impor_custom         VARCHAR2(5),
  c_flat_custom_flag            VARCHAR2(5),
  c_develop_borough_flag        VARCHAR2(5),
  c_taiwan_enterprise_flag      VARCHAR2(5),
  c_peel_off_custom_flag        VARCHAR2(5),
  c_yjh_risk_predict_flag       VARCHAR2(5),
  c_custom_industry_flag        VARCHAR2(5),
  c_green_credit_flag           VARCHAR2(5),
  c_land_agent_admittance_flag  VARCHAR2(5),
  c_cust_state_cisborder        VARCHAR2(6),
  c_road_belong_department      VARCHAR2(5),
  c_qualification_level         VARCHAR2(5),
  c_military                    VARCHAR2(5),
  c_superior_department_leval   VARCHAR2(5),
  c_govern_invest_cust_type     VARCHAR2(5),
  c_have_entrance_manage_right  VARCHAR2(2),
  c_marketing_class             VARCHAR2(5),
  c_supplychain_kernel_flag     VARCHAR2(5),
  c_supplychain_kernel_area     VARCHAR2(10),
  c_steel_trade                 VARCHAR2(5),
  d_supplychain_kernel_deadline DATE,
  c_small_market_flag           VARCHAR2(5),
  c_business_country            VARCHAR2(5),
  c_nation_economy_dpt          VARCHAR2(5),
  c_description                 VARCHAR2(2000),
  c_contrast_class              VARCHAR2(5),
  c_impor_shift_cust            VARCHAR2(5),
  c_govern_area                 VARCHAR2(500),
  c_belong_area                 VARCHAR2(500),
  c_create_area                 VARCHAR2(500),
  c_create_teller               VARCHAR2(500),
  c_last_person                 VARCHAR2(500),
  c_last_person_area            VARCHAR2(500),
  c_staff_code                  VARCHAR2(500),
  c_login_time                  VARCHAR2(14),
  c_logout_time                 VARCHAR2(14),
  c_hascontroller               VARCHAR2(2),
  c_actualcontroller            VARCHAR2(32),
  d_last_modify_time            DATE,
  d_login_time                  DATE,
  d_logout_time                 DATE,
  c_customer_status             VARCHAR2(10),
  c_nature2                     VARCHAR2(5),
  c_extproperty                 VARCHAR2(32),
  c_invoicetype                 VARCHAR2(2),
  olddataid                     VARCHAR2(255),
  c_economictype                VARCHAR2(100),
  c_membershipgroup             VARCHAR2(255),
  c_shortbank                   VARCHAR2(255),
  c_institutionalcreditcode     VARCHAR2(36),
  c_institutionnumber           VARCHAR2(10),
  c_financingparty              VARCHAR2(10),
  c_external_source             VARCHAR2(50)
)'
;
end if;
--20181029yuxd25447(干系人导入，中间表)--end
--20181031yuxd25447(诉讼信息新增要素)--start
if not fc_IsColExists('TLAWSUIT_INFO','f_lawyerfee') then  
    execute immediate 'alter table TLAWSUIT_INFO add f_lawyerfee number(19,6)';
end if;
if not fc_IsColExists('TLAWSUIT_INFO','c_hiringmethod') then  
    execute immediate 'alter table TLAWSUIT_INFO add c_hiringmethod varchar2(3)';
end if;
if not fc_IsColExists('TLAWSUIT_INFO','c_agentmode') then   
  execute immediate 'alter table TLAWSUIT_INFO add c_agentmode  varchar2(3)';
end if;
if not fc_IsColExists('TLAWSUIT_INFO','c_paymentsituation') then   
  execute immediate 'alter table TLAWSUIT_INFO add c_paymentsituation varchar2(3000)';
end if;
--20181031yuxd25447(诉讼信息新增要素)--end
--20181031caoyi20323(通用Excel导入中间表扩展c_source字段长度)--start
if fc_IsColExists('T_INT_AGENCY_INFO','c_source') then   
  execute immediate 'alter table T_INT_AGENCY_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT','c_source') then   
  execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_ASSET_GUARANTEECONTRACT','c_source') then   
  execute immediate 'alter table T_INT_ASSET_GUARANTEECONTRACT modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO','c_source') then   
  execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_ASSET_MORTGAGECONTRACT','c_source') then   
  execute immediate 'alter table T_INT_ASSET_MORTGAGECONTRACT modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_ASSET_PAWN_INFO','c_source') then   
  execute immediate 'alter table T_INT_ASSET_PAWN_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_BANKRUPTCY_INFO','c_source') then   
  execute immediate 'alter table T_INT_BANKRUPTCY_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE','c_source') then   
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT','c_source') then   
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_source') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_CAPITAL_PLAN','c_source') then   
  execute immediate 'alter table T_INT_CAPITAL_PLAN modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_CUSTOMER_INFO','c_source') then   
  execute immediate 'alter table T_INT_CUSTOMER_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('tproject_financial_history','c_source') then   
  execute immediate 'alter table tproject_financial_history modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_GUARANTEER_INFO','c_source') then   
  execute immediate 'alter table T_INT_GUARANTEER_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_INVEST_CONTRACT','c_source') then   
  execute immediate 'alter table T_INT_INVEST_CONTRACT modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_LAWSUIT_EXECUTION','c_source') then   
  execute immediate 'alter table T_INT_LAWSUIT_EXECUTION modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_LAWSUIT_INFO','c_source') then   
  execute immediate 'alter table T_INT_LAWSUIT_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_MORTGAGOR_INFO','c_source') then   
  execute immediate 'alter table T_INT_MORTGAGOR_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_PROJECT_INFO','c_source') then   
  execute immediate 'alter table T_INT_PROJECT_INFO modify c_source VARCHAR2(50)';
end if;
if fc_IsColExists('T_INT_SEIZED_INFO','c_source') then   
  execute immediate 'alter table T_INT_SEIZED_INFO modify c_source VARCHAR2(50)';
end if;
--20181031caoyi20323(通用Excel导入中间表扩展c_source字段长度)--end

--20181031panrm26330(GCMS信息交互客户维护申请信息表)--start--
if not fc_IsTableExists('tcustomer_info_maintain_apply') then
execute immediate 'create table tcustomer_info_maintain_apply
(
  l_id                        NUMBER(20) not null,
  c_cino                      VARCHAR2(50),
  c_customer_name             VARCHAR2(100),
  c_maintain_dep_id           VARCHAR2(30),
  c_maintain_dep_name         VARCHAR2(100),
  c_maintainer_id             VARCHAR2(20),
  c_maintainer_name           VARCHAR2(50),
  d_maintain_time             DATE,
  c_is_effective              VARCHAR2(1),
  c_data_status               VARCHAR2(1),
  c_view_status               VARCHAR2(1),
  c_file_no                   VARCHAR2(300),
  c_apply_status              VARCHAR2(1)
)';
end if;

if fc_IsTableExists('tcustomer_info_maintain_apply') and not fc_Constraints_Exists('tcustomer_info_maintain_apply','','P','0') then
execute immediate ' 
	alter table tcustomer_info_maintain_apply
    	add constraint PK_TCUSTOMER_APPLY_ID primary key (L_ID) using index ';
end if;

if not fc_IsSeqExists('SEQ_TCUSTOMER_INFO_APPLY_ID') then
    execute immediate 'create sequence SEQ_TCUSTOMER_INFO_APPLY_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181031panrm26330(GCMS信息交互客户维护申请信息表)--end--

--[M201810311199]20181031wcy(合同下新增是否涉及付款和是否涉及项目结清后债权转让要素)--start--
if fc_IsTableExists('tinvest_contract') and  not fc_IsColExists('tinvest_contract','c_isrelatepay') then
  execute immediate  'alter table tinvest_contract add c_isrelatepay VARCHAR2(2)';
end if;
if fc_IsTableExists('tinvest_contract') and  not fc_IsColExists('tinvest_contract','c_isrelatetransfercredit') then
  execute immediate  'alter table tinvest_contract add c_isrelatetransfercredit VARCHAR2(2)';
end if;
--[M201810311199]20181031wcy(合同下新增是否涉及付款和是否涉及项目结清后债权转让要素)--end--
--20181031panjq24368(借款人表新增是否承接中介机构字段和中介机构字段) --start
if fc_IsTableExists('TASSET_LOANACCOUNT_INFO') and not fc_IsColExists('TASSET_LOANACCOUNT_INFO','C_IS_CONTINUE_AGENCY') then
    execute immediate 'alter table TASSET_LOANACCOUNT_INFO add C_IS_CONTINUE_AGENCY varchar2(5)';
end if;
if fc_IsTableExists('TASSET_LOANACCOUNT_INFO') and not fc_IsColExists('TASSET_LOANACCOUNT_INFO','C_CONTINUE_AGENCY') then
    execute immediate 'alter table TASSET_LOANACCOUNT_INFO add C_CONTINUE_AGENCY varchar2(100)';
end if;
--20181031panjq24368(借款人表新增是否承接中介机构字段和中介机构字段) --end
--[M201811010836]20181101panjq24368(文件借阅信息表卷号可为空)--start--
if fc_IsColExists('TDOC_TRANSFER_INFO','C_REEL_NUMBER') then
   if fc_isdataexists('select count(1)  from user_tab_columns where table_name = upper(''TDOC_TRANSFER_INFO'') and column_name = upper(''C_REEL_NUMBER'') and nullable = ''N''') then
    execute immediate 'alter table TDOC_TRANSFER_INFO MODIFY    C_REEL_NUMBER NULL';
    end if;
end if;
--[M201811010836]20181101panjq24368(文件借阅信息表卷号可为空)--end--
--20181029yuanlh21739(新增用户-项目权限临时表，事务级别) --start
if not fc_IsTableExists('T_USER_PROJECT_RIGHT') then
execute immediate '
create global temporary table T_USER_PROJECT_RIGHT
(
  user_id       VARCHAR2(32),
  c_projectcode VARCHAR2(32)
)
on commit delete rows';
end if;

--保证合同表新增联合索引
if not fc_isdataexists('SELECT COUNT(1) FROM User_Indexes ui WHERE upper(ui.index_name)=''IDX_GCC_PROJECTCODE_KIND''') then
	execute immediate 'CREATE INDEX IDX_GCC_PROJECTCODE_KIND ON tasset_guaranteecontract(c_projectcode, c_kind)';
end if;
--20181029yuanlh21739(新增用户-项目权限临时表，事务级别) --start

--20181031yuanlh21739(新增临时数据临时表，用于关联查询用，事务级别) --end
if not fc_IsTableExists('T_TEMPORARY_TBL_TX') then
execute immediate '
create global temporary table t_temporary_tbl_tx
(
  c_type VARCHAR2(2) not null,
  c_code VARCHAR2(32) not null,
  c_code1 VARCHAR2(32),
  c_code2 VARCHAR2(32),
  c_code3 VARCHAR2(32)
)
on commit delete rows';
end if;
--20181031yuanlh21739(新增临时数据临时表，用于关联查询用，事务级别) --end
--20181102panjq24368(股权资产交割增加字段户调整金额字段) --start
if fc_IsTableExists('TASSET_TRANSFER_DETAIL') and not fc_IsColExists('TASSET_TRANSFER_DETAIL','F_ADJUSTMENTCOSTS_1') then
    execute immediate 'alter table TASSET_TRANSFER_DETAIL add F_ADJUSTMENTCOSTS_1 number(19,6)';
end if;
if fc_IsTableExists('TASSET_TRANSFER_DETAIL') and not fc_IsColExists('TASSET_TRANSFER_DETAIL','F_ADJUSTMENTCOSTS_2') then
    execute immediate 'alter table TASSET_TRANSFER_DETAIL add F_ADJUSTMENTCOSTS_2 number(19,6)';
end if;
if fc_IsTableExists('TASSET_TRANSFER_DETAIL') and not fc_IsColExists('TASSET_TRANSFER_DETAIL','F_ADJUSTMENTCOSTS_3') then
    execute immediate 'alter table TASSET_TRANSFER_DETAIL add F_ADJUSTMENTCOSTS_3 number(19,6)';
end if;
if fc_IsTableExists('TASSET_TRANSFER_DETAIL') and not fc_IsColExists('TASSET_TRANSFER_DETAIL','F_ADJUSTMENTCOSTS_4') then
    execute immediate 'alter table TASSET_TRANSFER_DETAIL add F_ADJUSTMENTCOSTS_4 number(19,6)';
end if;

--20181102panjq24368(股权资产交割增加字段户调整金额字段) --end

--20181105(设置担保合同合同序号可以为null)--start--
if not fc_IsColNULLABLE('TASSET_GUARANTEECONTRACT','C_GUARANTEECONTRACTNUM') then
	execute immediate 'ALTER TABLE TASSET_GUARANTEECONTRACT MODIFY C_GUARANTEECONTRACTNUM NULL';
end if;
--20181105(设置担保合同合同序号可以为null)--end--
--20181105chuyy25739(修改流水号长度为20)--start
if fc_IsColExists('T_INT_INVEST_CONTRACT','C_BATCH_NO') then   
  execute immediate 'alter table T_INT_INVEST_CONTRACT modify C_BATCH_NO NUMBER(20)';
end if;
if fc_IsColExists('t_int_project_info','C_BATCH_NO') then   
  execute immediate 'alter table t_int_project_info modify C_BATCH_NO NUMBER(20)';
end if;
--20181105chuyy25739(修改流水号长度为20)--end

--20181106wansy24151(预计还款计划 导入中间表) --start--
if not fc_IsTableExists('T_INT_PRE_REPAY_PLAN') then
execute immediate '
create table T_INT_PRE_REPAY_PLAN
(
  c_rownum     VARCHAR2(32),
  c_projectcode    VARCHAR2(50),
  d_repay_date	   DATE,
  c_currency      VARCHAR2(10),
  f_rate			NUMBER(19,6),
  d_launch_date    DATE,
  f_launch_money	NUMBER(19,6),
  f_orginal_principal NUMBER(19,6),
  f_orginal_interest  NUMBER(19,6),
  f_orginal_amount	NUMBER(19,6),
  f_local_principal NUMBER(19,6),
  f_local_interest  NUMBER(19,6),
  f_local_amount	NUMBER(19,6),
  c_intstatus      VARCHAR2(2),
  c_errmsg         VARCHAR2(3000),
  c_batch_no       VARCHAR2(32),
  c_source         VARCHAR2(32)
)';
end if;
--20181106wansy24151(预计还款计划 导入中间表) --end--

--20181107luheng24337(调整移动营销公告标题长度) --begin--
if fc_isdataexists('select count(1) from user_tab_columns where table_name = upper(''TNOTICE_INFO'') and column_name = upper(''C_TITLE'') and DATA_TYPE =''VARCHAR2'' and data_length < 500') then
	execute immediate 'alter table TNOTICE_INFO modify C_TITLE varchar2(500)';
end if;
--20181107luheng24337(调整移动营销公告标题长度) --end--

--20181107yuxd25447(执业律师表新增备注字段) --begin--
if not fc_IsColExists('TALTERNATIVE_LAWYER','c_memo') then
    execute immediate 'alter table TALTERNATIVE_LAWYER  add c_memo VARCHAR2(3000)';
end if;
--20181107yuxd25447(执业律师表新增备注字段) --end--

--20181108yuanlh21739(处置对象关系表增加联合索引) --begin
if fc_IsTableExists('TDISPOSAL_OBJECTINFO') and not fc_isdataexists('SELECT COUNT(1) FROM User_Indexes ui WHERE upper(ui.index_name)=''IDX_DOI_PO''') then
  execute immediate 'create index idx_doi_po on TDISPOSAL_OBJECTINFO (c_projectcode, c_objectcode)';
end if;
--20181108yuanlh21739(处置对象关系表增加联合索引) --end
--20181109zhangchao(户档案编号) --start--
if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','c_householdfilenumber') then
	--户档案编号
	execute immediate 'alter table TASSET_LOANACCOUNT_INFO add c_householdfilenumber VARCHAR2(30)';
end if;
--20181109zhangchao(户档案编号) --end--

--20181109dutao23901(厦门个性化,新增表用来统计历史收入成本总和,新增字段记录18年上半年历史销项税金利息收入) --start--
if not fc_IsTableExists('TXMZC_SUMMARY_HISTORY') then
    execute immediate 'create table TXMZC_SUMMARY_HISTORY
(
  c_year               VARCHAR2(20),
  c_type               VARCHAR2(2),
  f_income             NUMBER(19,6),
  f_occur_income       NUMBER(19,6),
  f_principal          NUMBER(19,6),
  f_tax                NUMBER(19,6)
)';
end if;
--厦门18年上半年历史利息收入
if not fc_IsColExists('TINVEST_FUNDVARY','f_history_income') then
    execute immediate 'alter table TINVEST_FUNDVARY add f_history_income NUMBER(19,6)';
end if;
--厦门18年上半年历史销项税金
if not fc_IsColExists('TINVEST_FUNDVARY','f_history_tax') then
    execute immediate 'alter table TINVEST_FUNDVARY add f_history_tax NUMBER(19,6)';
end if;
--20181109dutao23901(厦门个性化,新增表用来统计历史收入成本总和,新增字段记录18年上半年历史销项税金利息收入) --end--
--20181112yuxd25447(三会管理表新增议案数量、参会方式字段) --begin--

if not fc_IsColExists('TMEETING_INFO','c_participateMeetingMethod') then
    execute immediate 'alter table TMEETING_INFO  add c_participateMeetingMethod VARCHAR2(2)';
end if;
if not fc_IsColExists('TMEETING_INFO','l_motionamount') then
    execute immediate 'alter table TMEETING_INFO  add l_motionamount number(3)';
end if;
--20181112yuxd25447(三会管理表新增议案数量、参会方式字段) --end--
--20181113panjq24368董监事人才库管理-新增行内职务）  --start--
if not fc_IsColExists('TSUPERVISOR_INFO','C_DUTY2') then
    execute immediate 'alter table TSUPERVISOR_INFO add C_DUTY2 VARCHAR2(30)';
end if;
--20181113panjq24368董监事人才库管理-新增行内职务）  --end--


--20181113wansy24151 日常报销明细 增加字段本次分摊金额、本次报销预算额度、累计本年度已使用额度、年度额度预算--start--
if not fc_IsColExists('TREIMBURSE_DETAIL','f_apportion_amount') then
    execute immediate 'alter table TREIMBURSE_DETAIL add f_apportion_amount NUMBER(19,6)';
end if;

if not fc_IsColExists('TREIMBURSE_DETAIL','f_budget_quota') then
    execute immediate 'alter table TREIMBURSE_DETAIL add f_budget_quota NUMBER(19,6)';
end if;

if not fc_IsColExists('TREIMBURSE_DETAIL','f_used_quota') then
    execute immediate 'alter table TREIMBURSE_DETAIL add f_used_quota NUMBER(19,6)';
end if;

if not fc_IsColExists('TREIMBURSE_DETAIL','f_annual_budget') then
    execute immediate 'alter table TREIMBURSE_DETAIL add f_annual_budget NUMBER(19,6)';
end if;
--20181113wansy24151 日常报销明细 增加字段本次分摊金额、本次报销预算额度、累计本年度已使用额度、年度额度预算--end--


--20181113wansy24151 差旅费用报销明细 增加字段本次分摊金额、本次报销预算额度、累计本年度已使用额度、年度额度预算--start--
if not fc_IsColExists('TREIMBURSE_DETAIL_ZS','f_apportion_amount') then
    execute immediate 'alter table TREIMBURSE_DETAIL_ZS add f_apportion_amount NUMBER(19,6)';
end if;

if not fc_IsColExists('TREIMBURSE_DETAIL_ZS','f_budget_quota') then
    execute immediate 'alter table TREIMBURSE_DETAIL_ZS add f_budget_quota NUMBER(19,6)';
end if;

if not fc_IsColExists('TREIMBURSE_DETAIL_ZS','f_used_quota') then
    execute immediate 'alter table TREIMBURSE_DETAIL_ZS add f_used_quota NUMBER(19,6)';
end if;

if not fc_IsColExists('TREIMBURSE_DETAIL_ZS','f_annual_budget') then
    execute immediate 'alter table TREIMBURSE_DETAIL_ZS add f_annual_budget NUMBER(19,6)';
end if;
--20181113wansy24151 差旅费用报销明细 增加字段本次分摊金额、本次报销预算额度、累计本年度已使用额度、年度额度预算--end--
--20181114panjq24368(董监事委派-新增提名日期 拟任审批权限）  --start--
if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','C_DUTYAPPROVE') then
    execute immediate 'alter table TSUPERVISOR_APPOINTMENT add C_DUTYAPPROVE VARCHAR2(30)';
end if;
if not fc_IsColExists('TSUPERVISOR_APPOINTMENT','D_NOMINATEDATE') then
    execute immediate 'alter table TSUPERVISOR_APPOINTMENT add D_NOMINATEDATE DATE';
end if;
--20181114panjq24368(董监事委派-新增提名日期 拟任审批权限）  --end--
--20181114wancy14800(处置对象表增加字段最低处置授权价) --start
if not fc_IsColExists('tdisposal_objectinfo','f_mindealprice') then
     execute immediate 'alter table tdisposal_objectinfo add f_mindealprice NUMBER(19,6)';
end if;
--20181114wancy14800(处置对象表增加字段最低处置授权价) --end

--20181115yuxd25447(执业律师表修改表主键)--start--
if fc_isdataexists('select count(*) from user_constraints 
where table_name = ''TALTERNATIVE_LAWYER'' 
and constraint_type =''P'' and constraint_name = ''C_LIBIDCODE''') then
    execute immediate 'alter table talternative_lawyer drop constraint C_LIBIDCODE';
end if;
 --新增主键，索引
if not fc_isdataexists('select count(*) from user_constraints 
where table_name = ''TALTERNATIVE_LAWYER'' 
and constraint_type =''P'' and constraint_name in (''C_LIBIDCODE'',''PK_TALTERNATIVE_LAWYER'')') then
     execute immediate 'alter table talternative_lawyer
      add constraint PK_talternative_lawyer primary key (C_LIBID1) using index' ;
end if;
--C_LAWYERID 可以为空
if fc_IsColExists('talternative_lawyer','C_LAWYERID') then
   if fc_isdataexists('select count(*)  from user_tab_columns where table_name = upper(''talternative_lawyer'') and column_name = upper(''C_LAWYERID'') and nullable = ''N''') then
        execute immediate 'alter table talternative_lawyer MODIFY C_LAWYERID NULL';
    end if;
end if;
--C_RIVALID 可以为空
if fc_IsColExists('talternative_lawyer','C_RIVALID') then
   if fc_isdataexists('select count(*)  from user_tab_columns where table_name = upper(''talternative_lawyer'') and column_name = upper(''C_RIVALID'') and nullable = ''N''') then
		execute immediate 'alter table talternative_lawyer MODIFY C_RIVALID NULL';
	end if;
end if;
--删除原来的索引
if fc_isdataexists('select count(*) from user_ind_columns t where t.TABLE_NAME=''TALTERNATIVE_LAWYER'' and t.INDEX_NAME =''C_LIBIDCODE'' ') then 
      execute immediate 'drop index C_LIBIDCODE' ;
end if;
--20181115yuxd25447(执业律师表修改表主键)--start--



--20181115panrm26330(客户基本信息表)--start--
if not fc_IsTableExists('cid_custom_info') then
execute immediate 'create table cid_custom_info
(
  l_id                          NUMBER(20),
  c_cino	                VARCHAR2(20),
  c_customer_name	        VARCHAR2(400),
  c_cert_type	                VARCHAR2(5),
  c_cert_code	                VARCHAR2(105),
  c_country_code	        VARCHAR2(5),
  c_register_place	        VARCHAR2(120),
  c_establish_date	        VARCHAR2(8),
  c_trace_code	                VARCHAR2(5),
  c_scope_of_business	        VARCHAR2(300),
  c_nature	                VARCHAR2(5),
  c_qualification	        VARCHAR2(5),
  l_employee_num	        NUMBER(10),
  c_scale	                VARCHAR2(5),
  c_credit_date	                VARCHAR2(14),
  c_LIQUIDATION_IND	        VARCHAR2(5),
  c_listing_flag	        VARCHAR2(1),
  c_latent_risk_custom_flag	VARCHAR2(5),
  c_financial_report_flag	VARCHAR2(5),
  c_trade_finace_impor_custom	VARCHAR2(5),
  c_finance_flat_custom_flag 	VARCHAR2(5),
  c_develop_borough_custom_flag	VARCHAR2(5),
  c_yjh_risk_predict_flag	VARCHAR2(5),
  c_custom_industry_flag	VARCHAR2(5),
  c_green_credit_flag	        VARCHAR2(5),
  c_land_agent_admittance_flag	VARCHAR2(5),
  c_cust_state_cisborder	VARCHAR2(6),
  c_road_belong_department	VARCHAR2(5),
  c_qualification_level	        VARCHAR2(5),
  c_govern_invest_cust_type	VARCHAR2(5),
  c_customer_marketing_class	VARCHAR2(5),
  c_business_country	        VARCHAR2(5),
  c_description	                VARCHAR2(1200),
  c_contrast_class	        VARCHAR2(5),
  c_govern_area	                VARCHAR2(10),
  c_belong_area	                VARCHAR2(10),
  c_create_area	                VARCHAR2(10),
  c_create_teller	        VARCHAR2(9),
  c_last_person	                VARCHAR2(9),
  c_last_person_area	        VARCHAR2(10),
  c_last_modify_time	        VARCHAR2(14)
)';
end if;

if fc_IsTableExists('cid_custom_info') and not fc_Constraints_Exists('cid_custom_info','','P','0') then
execute immediate ' 
	alter table cid_custom_info
    	add constraint PK_cid_custom_info_id primary key (L_ID)';
end if;

if not fc_IsSeqExists('SEQ_GCMS_CUS_INFO') then
    execute immediate 'create sequence SEQ_GCMS_CUS_INFO
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户基本信息表)--end--

--20181115panrm26330(客户定制信息表)--start--
if not fc_IsTableExists('cid_custom_info_def') then
execute immediate 'create table cid_custom_info_def
(
  l_id           NUMBER(20) not null,
  c_cino         VARCHAR2(20),
  c_reserve26    VARCHAR2(200),
  c_reserve61    VARCHAR2(1200),
  c_reserve1     VARCHAR2(5),
  c_reserve203   VARCHAR2(5)
)';
end if;

if fc_IsTableExists('cid_custom_info_def') and not fc_Constraints_Exists('cid_custom_info_def','','P','0') then
execute immediate ' 
	alter table cid_custom_info_def
    	add constraint PK_cid_custom_def_id primary key (L_ID) using index ';
end if;

if not fc_IsSeqExists('SEQ_TCUSTOMER_DEF_INFO_ID') then
    execute immediate 'create sequence SEQ_TCUSTOMER_DEF_INFO_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户定制信息表)--end--


--20181115panrm26330(客户证件信息表)--start--
if not fc_IsTableExists('cid_cert_info') then
execute immediate 'create table cid_cert_info
(
  l_id             NUMBER(20) not null,
  c_cino           VARCHAR2(20),
  l_serial_number  NUMBER(5),
  c_cert_type      VARCHAR2(5),
  c_cert_code      VARCHAR2(200),
  c_cert_country   VARCHAR2(5),
  c_end_date       VARCHAR2(8),
  c_valid_flag     VARCHAR2(1)
)';
end if;
if fc_IsTableExists('cid_cert_info') and not fc_Constraints_Exists('cid_cert_info','','P','0') then
execute immediate '
	alter table cid_cert_info
    	add constraint PK_cid_cert_info_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_CERF_INFO_ID') then
    execute immediate 'create sequence SEQ_TCUS_CERF_INFO_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户证件信息表)--end--

--20181115panrm26330(客户联系地址信息表)--start--
if not fc_IsTableExists('cid_cust_contact') then
execute immediate 'create table cid_cust_contact
(
  l_id                NUMBER(20) not null,
  c_cino              VARCHAR2(20),
  l_serial_number     NUMBER(5),
  c_country           VARCHAR2(5),
  c_prin_cp_role      VARCHAR2(3),
  c_addr              VARCHAR2(300),
  c_valid_flag        VARCHAR2(1)
)';
execute immediate '
	alter table cid_cust_contact
    	add constraint PK_cid_cust_contact_id primary key (L_ID)';
end if;

if fc_IsTableExists('cid_cust_contact') and not fc_Constraints_Exists('cid_cust_contact','','P','0') then
execute immediate '
	alter table cid_cust_contact
    	add constraint PK_cid_cert_info_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_CONTACT_ID') then
    execute immediate 'create sequence SEQ_TCUS_CONTACT_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户联系地址信息表)--end--

--20181115panrm26330(客户资本金构成信息表)--start--
if not fc_IsTableExists('cid_cust_capital') then
execute immediate 'create table cid_cust_capital
(
  l_id                  NUMBER(11) not null,
  c_cino                VARCHAR2(20),
  l_serial_number       NUMBER(5),
  c_invest_custom_no    VARCHAR2(20),
  c_invest_custom_name  VARCHAR2(400),
  c_currtype            VARCHAR2(3),
  l_invest_amount       NUMBER(22,5),
  l_invest_ratio        NUMBER(5,2),
  c_valid_flag          VARCHAR2(1)
)';
end if;

if fc_IsTableExists('cid_cust_capital') and not fc_Constraints_Exists('cid_cust_capital','','P','0') then
execute immediate '
	alter table cid_cust_capital
    	add constraint PK_cust_capital_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_CAPITAL_ID') then
    execute immediate 'create sequence SEQ_TCUS_CAPITAL_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;

--20181115panrm26330(客户资本金构成信息表)--end--

--20181115panrm26330(客户注册资本信息表)--start--
if not fc_IsTableExists('cid_registered_capital') then
execute immediate 'create table cid_registered_capital
(
  l_id                      NUMBER(11) not null,
  c_cino                    VARCHAR2(20),
  l_serial_number           NUMBER(5),
  c_registered_capital_ccy  VARCHAR2(3),
  l_registered_capital      NUMBER(22,5),
  c_paicl_up_capital_ccy    VARCHAR2(3),
  l_paicl_up_capital        NUMBER(22,5),
  c_valid_flag              VARCHAR2(1)
)';

end if;

if fc_IsTableExists('cid_registered_capital') and not fc_Constraints_Exists('cid_registered_capital','','P','0') then
execute immediate '
	alter table cid_registered_capital
    	add constraint PK_registered_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_REGIST_ID') then
    execute immediate 'create sequence SEQ_TCUS_REGIST_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户注册资本信息表)--end--


--20181115panrm26330(客户对外投资信息表)--start--
if not fc_IsTableExists('cid_custom_invest') then
execute immediate 'create table cid_custom_invest
(
  l_id                NUMBER(11) not null,
  c_cino              VARCHAR2(20),
  l_serial_number     NUMBER(5),
  c_invest_firm_code  VARCHAR2(20),
  c_invest_firm_name  VARCHAR2(400),
  c_currtype          VARCHAR2(3),
  l_regist_capital    NUMBER(22,5),
  c_valid_flag        VARCHAR2(1)
)';
end if;
if fc_IsTableExists('cid_custom_invest') and not fc_Constraints_Exists('cid_custom_invest','','P','0') then
execute immediate '
	alter table cid_custom_invest
    	add constraint PK_cid_invest_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_INVEST_ID') then
    execute immediate 'create sequence SEQ_TCUS_INVEST_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户对外投资信息表)--end--


--20181115panrm26330(客户发行债券信息表)--start--
if not fc_IsTableExists('cid_custom_bond') then
execute immediate 'create table cid_custom_bond
(
  l_id                NUMBER(11) not null,
  c_cino              VARCHAR2(20),
  l_serial_number     NUMBER(5),
  c_bond_no           VARCHAR2(30),
  c_currtype          VARCHAR2(3),
  l_issuance_price    NUMBER(22,5),
  l_issuance_amount   NUMBER(22,5),
  c_valid_flag        VARCHAR2(1)
)';
end if;
if fc_IsTableExists('cid_custom_bond') and not fc_Constraints_Exists('cid_custom_bond','','P','0') then
execute immediate '
	alter table cid_custom_bond
    	add constraint PK_cus_bond_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_BOND_ID') then
    execute immediate 'create sequence SEQ_TCUS_BOND_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户发行债券信息表)--end--

--20181115panrm26330(客户股票信息表)--start--
if not fc_IsTableExists('cid_stock_info') then
execute immediate 'create table cid_stock_info
(
  l_id                  NUMBER(11) not null,
  c_cino                VARCHAR2(20),
  c_stock_code          VARCHAR2(30),
  c_stock_name          VARCHAR2(45),
  c_market_locus        VARCHAR2(5),
  c_stock_issue_date    VARCHAR2(8),
  c_stock_type          VARCHAR2(5),
  c_collect_fund_ccy    VARCHAR2(3),
  l_collect_fund        NUMBER(22,5),
  c_valid_flag          VARCHAR2(1)
)';
end if;
if fc_IsTableExists('cid_stock_info') and not fc_Constraints_Exists('cid_stock_info','','P','0') then
execute immediate '
	alter table cid_stock_info
    	add constraint PK_cid_stock_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_STOCK_ID') then
    execute immediate 'create sequence SEQ_TCUS_STOCK_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户股票信息表)--end--


--20181115panrm26330(客户历年信用等级信息表)--start--
if not fc_IsTableExists('crs_cuscred') then
execute immediate 'create table crs_cuscred
(
  l_id                NUMBER(11) not null,
  c_cino              VARCHAR2(20),
  c_pjyear            VARCHAR2(4),
  c_valid_term        VARCHAR2(8),
  c_cred_year_begin   VARCHAR2(5),
  c_cred_mainland     VARCHAR2(5),
  c_cred_source       VARCHAR2(10),
  c_oper_person       VARCHAR2(9),
  c_oper_person_area  VARCHAR2(10),
  c_inptime           VARCHAR2(14)
)';
end if;

if fc_IsTableExists('crs_cuscred') and not fc_Constraints_Exists('crs_cuscred','','P','0') then
execute immediate '
	alter table crs_cuscred
    	add constraint PK_crs_cuscred_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_CUSCRED_ID') then
    execute immediate 'create sequence SEQ_TCUS_CUSCRED_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户历年信用等级信息表)--end--

--20181115panrm26330(客户服务人员信息表)--start--
if not fc_IsTableExists('cid_staff_info') then
execute immediate 'create table cid_staff_info
(
  l_id                NUMBER(11) not null,
  c_cino              VARCHAR2(20),
  c_staff_code        VARCHAR2(9),
  c_valid_flag        VARCHAR2(1)
)';
end if;

if fc_IsTableExists('cid_staff_info') and not fc_Constraints_Exists('cid_staff_info','','P','0') then
execute immediate '
	alter table cid_staff_info
    	add constraint PK_staff_info_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_TCUS_STAFF_ID') then
    execute immediate 'create sequence SEQ_TCUS_STAFF_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(客户服务人员信息表)--end--


--20181115panrm26330(报表属性记录信息表)--start--
if not fc_IsTableExists('rep_prop') then
execute immediate 'create table rep_prop
(
  l_id                  NUMBER(11) not null,
  c_idu_flag            VARCHAR2(1),
  c_cino                VARCHAR2(20),
  c_repf_date           VARCHAR2(6),
  c_repf_consolidated   VARCHAR2(1),
  c_rule_code           VARCHAR2(5),
  c_repf_typ_code       VARCHAR2(5),
  C_currtype            VARCHAR2(3),
  c_amt_unit            VARCHAR2(2),
  c_begindate           VARCHAR2(8),
  c_is_audit            VARCHAR2(1),
  c_audit_person        VARCHAR2(100),
  c_is_reserve          VARCHAR2(2),
  c_repf_audit          VARCHAR2(1000),
  c_trace_code          VARCHAR2(5),
  c_enddate             VARCHAR2(8),
  c_audit_info          VARCHAR2(5),
  c_audit_agent         VARCHAR2(75),
  c_audit_stable        VARCHAR2(1),
  c_audit_aualified     VARCHAR2(1),
  c_audit_fixed_year    VARCHAR2(5),
  c_last_date           VARCHAR2(8),
  c_create_date         VARCHAR2(8),
  c_repf_source         VARCHAR2(2)
)';
end if;

if fc_IsTableExists('rep_prop') and not fc_Constraints_Exists('rep_prop','','P','0') then
execute immediate '
	alter table rep_prop
    	add constraint PK_rep_prop_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_REP_PROP_ID') then
    execute immediate 'create sequence SEQ_REP_PROP_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(报表属性记录信息表)--end--


--20181115panrm26330(GCMS客户文件字典信息信息表)--start--
if not fc_IsTableExists('sys_dict_data') then
execute immediate 'create table sys_dict_data
(
  l_id              NUMBER(11) not null,
  c_area_code       VARCHAR2(10),
  c_bean_code       VARCHAR2(50),
  c_lang_code       VARCHAR2(5),
  c_dict_code       VARCHAR2(50),
  c_dict_name       VARCHAR2(500),
  c_dict_desc       VARCHAR2(300),
  l_manual_flag     NUMBER(1),
  l_dict_order      NUMBER(5),
  c_using_area      VARCHAR2(2000),
  c_disable_flag    VARCHAR2(1)
)';
end if;
if fc_IsTableExists('sys_dict_data') and not fc_Constraints_Exists('sys_dict_data','','P','0') then
execute immediate '
	alter table sys_dict_data
    	add constraint PK_dict_data_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_DICT_DATA_ID') then
    execute immediate 'create sequence SEQ_DICT_DATA_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(GCMS客户文件字典信息信息表)--end--


--20181115panrm26330(报表要素参数信息表)--start--
if not fc_IsTableExists('rep_node') then
execute immediate 'create table rep_node
(
  l_id                NUMBER(11) not null,
  c_node_code         VARCHAR2(5),
  c_repf_cate_code    VARCHAR2(5),
  c_info              VARCHAR2(500),
  c_last_modify_date  VARCHAR2(14),
  c_last_person       VARCHAR2(9),
  c_last_person_area  VARCHAR2(10)
)';
end if;
if fc_IsTableExists('rep_node') and not fc_Constraints_Exists('rep_node','','P','0') then
execute immediate '
	alter table rep_node
    	add constraint PK_rep_node_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_REP_NODE_ID') then
    execute immediate 'create sequence SEQ_REP_NODE_ID
			minvalue 1000
			maxvalue 999999
			start with 10001
			increment by 1
			cache 20';
end if;
--20181115panrm26330(报表要素参数信息表)--end--


--20181115panrm26330(报表模板信息表)--start--
if not fc_IsTableExists('rep_template') then
execute immediate 'create table rep_template
(
  l_id                    NUMBER(11) not null,
  c_rep_template_code     VARCHAR2(8),
  c_node_code             VARCHAR2(5),
  l_node_order            NUMBER(5),
  c_table_column_data     VARCHAR2(40),
  c_table_column_name     VARCHAR2(40),
  c_input_flag            VARCHAR2(1),
  c_display_flag          VARCHAR2(1),
  c_display_format        VARCHAR2(3),
  c_defa_zero_flag        VARCHAR2(1),
  c_node_modflag          VARCHAR2(1)
)';
end if;
if fc_IsTableExists('rep_template') and not fc_Constraints_Exists('rep_template','','P','0') then
execute immediate '
  alter table rep_template
      add constraint PK_rep_template_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_template_ID') then
    execute immediate 'create sequence SEQ_rep_template_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181115panrm26330(报表模板信息表)--end--

--20181115panrm26330(报表模板信息记录表)--start--
if not fc_IsTableExists('rep_template_note') then
execute immediate 'create table rep_template_note
(
  l_id                    NUMBER(11) not null,
  c_rep_template_code     VARCHAR2(8),
  c_rule_code             VARCHAR2(5),
  c_repf_typ_code         VARCHAR2(5),
  c_repf_cate_code        VARCHAR2(5),
  c_comp_flag             VARCHAR2(1),
  c_version_no            VARCHAR2(500),
  c_version_time          VARCHAR2(14),
  c_last_person           VARCHAR2(9),
  c_last_person_area      VARCHAR2(10)
)';
end if;
if fc_IsTableExists('rep_template_note') and not fc_Constraints_Exists('rep_template_note','','P','0') then
execute immediate '
  alter table rep_template_note
      add constraint PK_rep_temp_note_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_temp_note_ID') then
    execute immediate 'create sequence SEQ_rep_temp_note_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181115panrm26330(报表模板信息记录表)--end--


--20181115panrm26330(报表种类信息表)--start--
if not fc_IsTableExists('rep_cate') then
execute immediate 'create table rep_cate
(
  l_id                    NUMBER(11) not null,
  c_rep_cate_code         VARCHAR2(5),
  c_dim_flag              VARCHAR2(2),
  c_table_name            VARCHAR2(50),
  c_info                  VARCHAR2(500),
  c_last_modify_date      VARCHAR2(14),
  c_last_person           VARCHAR2(9),
  c_last_person_area      VARCHAR2(10)
)';
end if;
if fc_IsTableExists('rep_cate') and not fc_Constraints_Exists('rep_cate','','P','0') then
execute immediate '
  alter table rep_cate
      add constraint PK_rep_cate_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_cate_ID') then
    execute immediate 'create sequence SEQ_rep_cate_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181115panrm26330(报表种类信息表)--end--

--20181116chenhy18048(财务关联表增加一个与资金流水关联的字段)--start--
if not fc_IsColExists('trepay_data_relation','L_IJOURID') then
    execute immediate 'alter table trepay_data_relation add L_IJOURID NUMBER(10)';
end if;
--20181116chenhy18048(财务关联表增加一个与资金流水关联的字段)--end--

--20181116wansy24151科目信息导入中间表 t_int_subject_info c_sourc字段长度扩展，增加"是否预算科目"字段--start--
if fc_IsColExists('t_int_subject_info','c_source') then
    execute immediate 'alter table t_int_subject_info modify c_source VARCHAR2(32)';
end if;

if fc_IsColExists('t_int_subject_info','c_batch_no') then
    execute immediate 'alter table t_int_subject_info modify c_batch_no NUMBER(20)';
end if;

if not fc_IsColExists('t_int_subject_info','c_isbudget') then
    execute immediate 'alter table t_int_subject_info add c_isbudget VARCHAR2(2)';
end if;

if fc_IsColExists('T_INT_PRE_REPAY_PLAN','c_source') then   
  execute immediate 'alter table T_INT_PRE_REPAY_PLAN modify c_source VARCHAR2(50)';
end if;
--20181116wansy24151科目信息导入中间表 t_int_subject_info c_source长度扩展，增加"是否预算科目"字段--end--

-- wansy24151 修改数据类型为 varchar2 --start--
if fc_IsColExists('TCAPITAL_PLAN','c_serial_number') then   
  execute immediate 'alter table TCAPITAL_PLAN modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('TCAPITAL_PLAN','c_capital_plan') then   
  execute immediate 'alter table TCAPITAL_PLAN modify c_capital_plan VARCHAR2(100)';
end if;

if fc_IsColExists('T_INT_CAPITAL_PLAN','c_serial_number') then   
  execute immediate 'alter table T_INT_CAPITAL_PLAN modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('T_INT_CAPITAL_PLAN','c_capital_plan') then   
  execute immediate 'alter table T_INT_CAPITAL_PLAN modify c_capital_plan VARCHAR2(100)';
end if;

if fc_IsColExists('TCAPITAL_BANK_CREDIT','c_bank_name') then   
  execute immediate 'alter table TCAPITAL_BANK_CREDIT modify c_bank_name VARCHAR2(100)';
end if;

if fc_IsColExists('TCAPITAL_BANK_CREDIT','c_serial_number') then   
  execute immediate 'alter table TCAPITAL_BANK_CREDIT modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('TCAPITAL_BANK_CREDIT','c_credit_way') then   
  execute immediate 'alter table TCAPITAL_BANK_CREDIT modify c_credit_way VARCHAR2(50)';
end if;

if fc_IsColExists('TCAPITAL_BANK_CREDIT','c_credit_breeds') then   
  execute immediate 'alter table TCAPITAL_BANK_CREDIT modify c_credit_breeds VARCHAR2(500)';
end if;

if fc_IsColExists('TCAPITAL_BANK_CREDIT','c_work_progress') then   
  execute immediate 'alter table TCAPITAL_BANK_CREDIT modify c_work_progress VARCHAR2(2000)';
end if;

if fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT','c_bank_name') then   
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT modify c_bank_name VARCHAR2(100)';
end if;

if fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT','c_serial_number') then   
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT','c_credit_way') then   
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT modify c_credit_way VARCHAR2(50)';
end if;

if fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT','c_credit_breeds') then   
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT modify c_credit_breeds VARCHAR2(500)';
end if;

if fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT','c_work_progress') then   
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT modify c_work_progress VARCHAR2(2000)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_serial_number') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_flag') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_flag VARCHAR2(10)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_depcode_name') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_depcode_name VARCHAR2(50)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_institution') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_institution VARCHAR2(100)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_name') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_name VARCHAR2(255)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_project_typename') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_project_typename VARCHAR2(32)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_break_even') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_break_even VARCHAR2(50)';
end if;

if fc_IsColExists('TCAPITAL_FUNDS_USE','c_remark') then   
  execute immediate 'alter table TCAPITAL_FUNDS_USE modify c_remark VARCHAR2(2000)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_serial_number') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_flag') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_flag VARCHAR2(10)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_depcode_name') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_depcode_name VARCHAR2(50)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_institution') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_institution VARCHAR2(100)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_name') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_name VARCHAR2(255)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_project_typename') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_project_typename VARCHAR2(32)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_break_even') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_break_even VARCHAR2(50)';
end if;

if fc_IsColExists('T_INT_CAPITAL_FUNDS_USE','c_remark') then   
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE modify c_remark VARCHAR2(2000)';
end if;

if fc_IsColExists('TCAPITAL_ACCOUNT_BALANCE','c_serial_number') then   
  execute immediate 'alter table TCAPITAL_ACCOUNT_BALANCE modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('TCAPITAL_ACCOUNT_BALANCE','c_account_bank') then   
  execute immediate 'alter table TCAPITAL_ACCOUNT_BALANCE modify c_account_bank VARCHAR2(100)';
end if;

if fc_IsColExists('TCAPITAL_ACCOUNT_BALANCE','c_account') then   
  execute immediate 'alter table TCAPITAL_ACCOUNT_BALANCE modify c_account VARCHAR2(50)';
end if;

if fc_IsColExists('TCAPITAL_ACCOUNT_BALANCE','c_transfer_fee') then   
  execute immediate 'alter table TCAPITAL_ACCOUNT_BALANCE modify c_transfer_fee VARCHAR2(2000)';
end if;

if fc_IsColExists('TCAPITAL_ACCOUNT_BALANCE','c_remark') then   
  execute immediate 'alter table TCAPITAL_ACCOUNT_BALANCE modify c_remark VARCHAR2(2000)';
end if;

if fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE','c_serial_number') then   
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE modify c_serial_number VARCHAR2(10)';
end if;

if fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE','c_account_bank') then   
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE modify c_account_bank VARCHAR2(100)';
end if;

if fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE','c_account') then   
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE modify c_account VARCHAR2(50)';
end if;

if fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE','c_transfer_fee') then   
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE modify c_transfer_fee VARCHAR2(2000)';
end if;

if fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE','c_remark') then   
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE modify c_remark VARCHAR2(2000)';
end if;

if fc_IsColExists('trepay_info_config','c_pay_category') then   
  execute immediate 'alter table trepay_info_config modify c_pay_category VARCHAR2(10)';
end if;

if fc_IsColExists('trepay_info_config','c_pay_type') then   
  execute immediate 'alter table trepay_info_config modify c_pay_type VARCHAR2(10)';
end if;
-- wansy24151 修改数据类型为 varchar2 --end--

--yuxd25447 股权资产变更明细表中新增股权企业名，变更类型字段--start--
if not fc_IsColExists('TEQUITY_ASSET_DETAIL','c_enterprise') then   
  execute immediate 'alter table TEQUITY_ASSET_DETAIL add c_enterprise VARCHAR2(255)';
end if;
if not  fc_IsColExists('TEQUITY_ASSET_DETAIL','c_changetype') then   
  execute immediate 'alter table TEQUITY_ASSET_DETAIL add c_changetype VARCHAR2(10)';
end if;

--20181115yuanlh21739(估值相关字段/表新增)---start
if not fc_IsColExists('tasset_loanaccount_info','c_val_user_id') then
  --借款人：收包估值录入人员
  execute immediate 'alter table tasset_loanaccount_info add c_val_user_id VARCHAR2(32)';
end if;
if not fc_IsColExists('tasset_loanaccount_info','d_lasted_val_date') then
  --借款人：最新估值日期
  execute immediate 'alter table tasset_loanaccount_info add d_lasted_val_date DATE';
end if;
if not fc_IsColExists('tasset_loanaccount_info','c_lasted_val_user_id') then
  --借款人：最新估值录入人员
  execute immediate 'alter table tasset_loanaccount_info add c_lasted_val_user_id VARCHAR2(32)';
end if;
if not fc_IsColExists('tasset_loanaccount_info','f_lasted_val') then
  --借款人：最新估值
  execute immediate 'alter table tasset_loanaccount_info add f_lasted_val NUMBER(19,6)';
end if;
if not fc_IsColExists('tasset_loanaccount_info','f_lasted_val_all') then
  --借款人：最新估值汇总
  execute immediate 'alter table tasset_loanaccount_info add f_lasted_val_all NUMBER(19,6)';
end if;
--保证人
if not fc_IsColExists('tasset_guaranteecontract','d_val_date') then
  --保证人：收包阶段估值日期
  execute immediate 'alter table tasset_guaranteecontract add d_val_date DATE';
end if;
if not fc_IsColExists('tasset_guaranteecontract','c_val_user_id') then
  --保证人：收包阶段估值录入人员
  execute immediate 'alter table tasset_guaranteecontract add c_val_user_id VARCHAR2(32)';
end if;
if not fc_IsColExists('tasset_guaranteecontract','f_lasted_val') then
  --保证人：最新估值
  execute immediate 'alter table tasset_guaranteecontract add f_lasted_val NUMBER(19,6)';
end if;
if not fc_IsColExists('tasset_guaranteecontract','d_lasted_val_date') then
  --保证人：最新估值日期
  execute immediate 'alter table tasset_guaranteecontract add d_lasted_val_date DATE';
end if;
if not fc_IsColExists('tasset_guaranteecontract','c_lasted_val_user_id') then
  --保证人：最新估值录入人员
  execute immediate 'alter table tasset_guaranteecontract add c_lasted_val_user_id VARCHAR2(32)';
end if;
--抵质押物
if not fc_IsColExists('tasset_pawn_info','d_val_date') then
  --抵质押物：收包阶段估值日期
  execute immediate 'alter table tasset_pawn_info add d_val_date DATE';
end if;
if not fc_IsColExists('tasset_pawn_info','c_val_user_id') then
  --抵质押物：收包阶段估值录入人员
  execute immediate 'alter table tasset_pawn_info add c_val_user_id VARCHAR2(32)';
end if;
if not fc_IsColExists('tasset_pawn_info','f_lasted_val') then
  --抵质押物：最新估值
  execute immediate 'alter table tasset_pawn_info add f_lasted_val NUMBER(19,6)';
end if;
if not fc_IsColExists('tasset_pawn_info','d_lasted_val_date') then
  --抵质押物：最新估值日期
  execute immediate 'alter table tasset_pawn_info add d_lasted_val_date DATE';
end if;
if not fc_IsColExists('tasset_pawn_info','c_lasted_val_user_id') then
  --抵质押物：最新估值录入人员
  execute immediate 'alter table tasset_pawn_info add c_lasted_val_user_id VARCHAR2(32)';
end if;

--估值历史
if not fc_IsTableExists('t_valuation_log') then
  execute immediate '
    create table t_valuation_log(
      l_id number(19),
      c_batch_no varchar2(32),
      c_object_type varchar2(2),
      c_object_code varchar2(32),
      c_type varchar2(2),
      c_way varchar2(2),
      d_val_date date,
      c_val_user_id varchar2(32),
      c_project_code varchar2(32),
      c_loaner_code varchar2(32),
      f_original_amount number(19,6),
      f_valuation_rate number(19,6),
      f_valuation_amount number(19,6),
      f_valuation_final_amount number(19,6),
      c_process_instance_id varchar2(32) default ''-'',
      c_status varchar2(1),
      c_description varchar2(200),
      l_old_id number(19)
      )
	';
  execute immediate 'alter table T_VALUATION_LOG add constraint pk_valuation_log primary key (L_ID)';
  execute immediate 'create index uk_valuation_log on T_VALUATION_LOG (c_object_type, c_object_code, c_status)';
  execute immediate 'create index uk_valuation_log_flowid on T_VALUATION_LOG (c_process_instance_id)';
  execute immediate 'create sequence seq_valuation_log start with 1000000 increment by 1';--历史tasset_appraisement数据ID小于1000000
end if;
--20181115yuanlh21739(估值相关字段/表新增)-----end

--2018119yuanlh21739(用户操作日志表)-----start
if not fc_IsTableExists('t_operation_log') then
  execute immediate '
    create table t_operation_log(
      l_id number(19),
      c_login_name varchar2(32),
      c_user_name varchar2(32),
      c_module varchar2(32),
      c_type varchar2(32),
      c_parameter varchar2(32),
      c_description varchar2(32),
      d_operated_time date,
      f_elapsed_time number(19),
      c_agent_type varchar2(32),
      c_agent varchar2(32),
      c_uri varchar2(400) default ''-'',
      c_ip varchar2(32),
      c_status number(2),
      c_ex varchar2(500) default ''-''
    )
	';
  execute immediate 'create sequence seq_operation_log start with 20000 increment by 1';
end if;

if fc_isdataexists('select count(1) from user_tab_columns where table_name = upper(''T_OPERATION_LOG'') and column_name = ''C_AGENT'' and DATA_TYPE =''VARCHAR2'' and data_length < 250') then
  execute immediate 'alter table T_OPERATION_LOG modify c_agent VARCHAR2(250)';
end if;
--2018119yuanlh21739(用户操作日志表)-----end

--20181119zhangchao(营销项目新增要素)--start--
--分区
if not fc_IsColExists('TPROJECT_STORE_INFO','c_partition') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_partition varchar2(100)';
end if;
--交易对手
if not fc_IsColExists('TPROJECT_STORE_INFO','c_counterparty') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_counterparty varchar2(50)';
end if;
--交易对手性质
if not fc_IsColExists('TPROJECT_STORE_INFO','c_counterpartynature') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_counterpartynature varchar2(10)';
end if;
--是否涉及外部合作机构
if not fc_IsColExists('TPROJECT_STORE_INFO','c_iscooperationagencies') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_iscooperationagencies varchar2(2)';
end if;
--意向合作投资机构
if not fc_IsColExists('TPROJECT_STORE_INFO','c_cooperativeinstitution') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_cooperativeinstitution varchar2(50)';
end if;
--项目资金用途
if not fc_IsColExists('TPROJECT_STORE_INFO','c_projectfunduse') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_projectfunduse varchar2(1000)';
end if;
--自投金额
if not fc_IsColExists('TPROJECT_STORE_INFO','f_selfamount') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_selfamount number(19,6)';
end if;
--预计规模
if not fc_IsColExists('TPROJECT_STORE_INFO','f_estimatedsize') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_estimatedsize number(19,6)';
end if;
--项目预计收益率
if not fc_IsColExists('TPROJECT_STORE_INFO','f_expectedofreturn') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_expectedofreturn number(19,6)';
end if;
--2018年预计收益
if not fc_IsColExists('TPROJECT_STORE_INFO','f_expectedreturn') then
	execute immediate 'alter table TPROJECT_STORE_INFO add f_expectedreturn number(19,6)';
end if;
--项目退出期限
if not fc_IsColExists('TPROJECT_STORE_INFO','c_exitdeadline') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_exitdeadline varchar2(20)';
end if;
--项目退出方式
if not fc_IsColExists('TPROJECT_STORE_INFO','c_exitmethod') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_exitmethod varchar2(20)';
end if;
--项目简介
if not fc_IsColExists('TPROJECT_STORE_INFO','c_projectdescription') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_projectdescription varchar2(1000)';
end if;
--交易结构
if not fc_IsColExists('TPROJECT_STORE_INFO','c_transactionstructure') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_transactionstructure varchar2(1000)';
end if;
--项目进展
if not fc_IsColExists('TPROJECT_STORE_INFO','c_projectprogress') then
	execute immediate 'alter table TPROJECT_STORE_INFO add c_projectprogress varchar2(1000)';
end if;
--20181119zhangchao(营销项目新增要素)--end--

--20181119panrm26330(资产负债信息表)--start--
if not fc_IsTableExists('rep_balance_sheet') then
execute immediate 'create table rep_balance_sheet
(
  l_id                 NUMBER(11) not null,
  c_idu_flag           VARCHAR2(1),
  c_cino               VARCHAR2(20),
  c_repf_date          VARCHAR2(6),
  c_rep_template_code  VARCHAR2(8),
  c_comp_flag          VARCHAR2(1),
  c_employee_code      VARCHAR2(9),
  c_emp_area_code      VARCHAR2(10),
  c_mod_time           VARCHAR2(14),
  c_info               VARCHAR2(1000),
  f_data001    NUMBER(19,4),
  f_data002    NUMBER(19,4),
  f_data003    NUMBER(19,4),
  f_data004    NUMBER(19,4),
  f_data005    NUMBER(19,4),
  f_data006    NUMBER(19,4),
  f_data007    NUMBER(19,4),
  f_data008    NUMBER(19,4),
  f_data009    NUMBER(19,4),
  f_data010    NUMBER(19,4),
  f_data011    NUMBER(19,4),
  f_data012    NUMBER(19,4),
  f_data013    NUMBER(19,4),
  f_data014    NUMBER(19,4),
  f_data015    NUMBER(19,4),
  f_data016    NUMBER(19,4),
  f_data017    NUMBER(19,4),
  f_data018    NUMBER(19,4),
  f_data019    NUMBER(19,4),
  f_data020    NUMBER(19,4),
  f_data021    NUMBER(19,4),
  f_data022    NUMBER(19,4),
  f_data023    NUMBER(19,4),
  f_data024    NUMBER(19,4),
  f_data025    NUMBER(19,4),
  f_data026    NUMBER(19,4),
  f_data027    NUMBER(19,4),
  f_data028    NUMBER(19,4),
  f_data029    NUMBER(19,4),
  f_data030    NUMBER(19,4),
  f_data031    NUMBER(19,4),
  f_data032    NUMBER(19,4),
  f_data033    NUMBER(19,4),
  f_data034    NUMBER(19,4),
  f_data035    NUMBER(19,4),
  f_data036    NUMBER(19,4),
  f_data037    NUMBER(19,4),
  f_data038    NUMBER(19,4),
  f_data039    NUMBER(19,4),
  f_data040    NUMBER(19,4),
  f_data041    NUMBER(19,4),
  f_data042    NUMBER(19,4),
  f_data043    NUMBER(19,4),
  f_data044    NUMBER(19,4),
  f_data045    NUMBER(19,4),
  f_data046    NUMBER(19,4),
  f_data047    NUMBER(19,4),
  f_data048    NUMBER(19,4),
  f_data049    NUMBER(19,4),
  f_data050    NUMBER(19,4),
  f_data051    NUMBER(19,4),
  f_data052    NUMBER(19,4),
  f_data053    NUMBER(19,4),
  f_data054    NUMBER(19,4),
  f_data055    NUMBER(19,4),
  f_data056    NUMBER(19,4),
  f_data057    NUMBER(19,4),
  f_data058    NUMBER(19,4),
  f_data059    NUMBER(19,4),
  f_data060    NUMBER(19,4),
  f_data061    NUMBER(19,4),
  f_data062    NUMBER(19,4),
  f_data063    NUMBER(19,4),
  f_data064    NUMBER(19,4),
  f_data065    NUMBER(19,4),
  f_data066    NUMBER(19,4),
  f_data067    NUMBER(19,4),
  f_data068    NUMBER(19,4),
  f_data069    NUMBER(19,4),
  f_data070    NUMBER(19,4),
  f_data071    NUMBER(19,4),
  f_data072    NUMBER(19,4),
  f_data073    NUMBER(19,4),
  f_data074    NUMBER(19,4),
  f_data075    NUMBER(19,4),
  f_data076    NUMBER(19,4),
  f_data077    NUMBER(19,4),
  f_data078    NUMBER(19,4),
  f_data079    NUMBER(19,4),
  f_data080    NUMBER(19,4),
  f_data081    NUMBER(19,4),
  f_data082    NUMBER(19,4),
  f_data083    NUMBER(19,4),
  f_data084    NUMBER(19,4),
  f_data085    NUMBER(19,4),
  f_data086    NUMBER(19,4),
  f_data087    NUMBER(19,4),
  f_data088    NUMBER(19,4),
  f_data089    NUMBER(19,4),
  f_data090    NUMBER(19,4),
  f_data091    NUMBER(19,4),
  f_data092    NUMBER(19,4),
  f_data093    NUMBER(19,4),
  f_data094    NUMBER(19,4),
  f_data095    NUMBER(19,4),
  f_data096    NUMBER(19,4),
  f_data097    NUMBER(19,4),
  f_data098    NUMBER(19,4),
  f_data099    NUMBER(19,4),
  f_data100    NUMBER(19,4),
  f_data101    NUMBER(19,4),
  f_data102    NUMBER(19,4),
  f_data103    NUMBER(19,4),
  f_data104    NUMBER(19,4),
  f_data105    NUMBER(19,4),
  f_data106    NUMBER(19,4),
  f_data107    NUMBER(19,4),
  f_data108    NUMBER(19,4),
  f_data109    NUMBER(19,4),
  f_data110    NUMBER(19,4),
  f_data111    NUMBER(19,4),
  f_data112    NUMBER(19,4),
  f_data113    NUMBER(19,4),
  f_data114    NUMBER(19,4),
  f_data115    NUMBER(19,4),
  f_data116    NUMBER(19,4),
  f_data117    NUMBER(19,4),
  f_data118    NUMBER(19,4),
  f_data119    NUMBER(19,4),
  f_data120    NUMBER(19,4),
  c_nodename001    VARCHAR2(500),
  c_nodename002    VARCHAR2(500),
  c_nodename003    VARCHAR2(500),
  c_nodename004    VARCHAR2(500),
  c_nodename005    VARCHAR2(500),
  c_nodename006    VARCHAR2(500),
  c_nodename007    VARCHAR2(500),
  c_nodename008    VARCHAR2(500),
  c_nodename009    VARCHAR2(500),
  c_nodename010    VARCHAR2(500),
  c_nodename011    VARCHAR2(500),
  c_nodename012    VARCHAR2(500),
  c_nodename013    VARCHAR2(500),
  c_nodename014    VARCHAR2(500),
  c_nodename015    VARCHAR2(500),
  c_nodename016    VARCHAR2(500),
  c_nodename017    VARCHAR2(500),
  c_nodename018    VARCHAR2(500),
  c_nodename019    VARCHAR2(500),
  c_nodename020    VARCHAR2(500),
  c_nodename021    VARCHAR2(500),
  c_nodename022    VARCHAR2(500),
  c_nodename023    VARCHAR2(500),
  c_nodename024    VARCHAR2(500),
  c_nodename025    VARCHAR2(500),
  c_nodename026    VARCHAR2(500),
  c_nodename027    VARCHAR2(500),
  c_nodename028    VARCHAR2(500),
  c_nodename029    VARCHAR2(500),
  c_nodename030    VARCHAR2(500),
  c_nodename031    VARCHAR2(500),
  c_nodename032    VARCHAR2(500),
  c_nodename033    VARCHAR2(500),
  c_nodename034    VARCHAR2(500),
  c_nodename035    VARCHAR2(500),
  c_nodename036    VARCHAR2(500),
  c_nodename037    VARCHAR2(500),
  c_nodename038    VARCHAR2(500),
  c_nodename039    VARCHAR2(500),
  c_nodename040    VARCHAR2(500),
  c_nodename041    VARCHAR2(500),
  c_nodename042    VARCHAR2(500),
  c_nodename043    VARCHAR2(500),
  c_nodename044    VARCHAR2(500),
  c_nodename045    VARCHAR2(500),
  c_nodename046    VARCHAR2(500),
  c_nodename047    VARCHAR2(500),
  c_nodename048    VARCHAR2(500),
  c_nodename049    VARCHAR2(500),
  c_nodename050    VARCHAR2(500),
  c_nodename051    VARCHAR2(500),
  c_nodename052    VARCHAR2(500),
  c_nodename053    VARCHAR2(500),
  c_nodename054    VARCHAR2(500),
  c_nodename055    VARCHAR2(500),
  c_nodename056    VARCHAR2(500),
  c_nodename057    VARCHAR2(500),
  c_nodename058    VARCHAR2(500),
  c_nodename059    VARCHAR2(500),
  c_nodename060    VARCHAR2(500),
  c_nodename061    VARCHAR2(500),
  c_nodename062    VARCHAR2(500),
  c_nodename063    VARCHAR2(500),
  c_nodename064    VARCHAR2(500),
  c_nodename065    VARCHAR2(500),
  c_nodename066    VARCHAR2(500),
  c_nodename067    VARCHAR2(500),
  c_nodename068    VARCHAR2(500),
  c_nodename069    VARCHAR2(500),
  c_nodename070    VARCHAR2(500),
  c_nodename071    VARCHAR2(500),
  c_nodename072    VARCHAR2(500),
  c_nodename073    VARCHAR2(500),
  c_nodename074    VARCHAR2(500),
  c_nodename075    VARCHAR2(500),
  c_nodename076    VARCHAR2(500),
  c_nodename077    VARCHAR2(500),
  c_nodename078    VARCHAR2(500),
  c_nodename079    VARCHAR2(500),
  c_nodename080    VARCHAR2(500),
  c_nodename081    VARCHAR2(500),
  c_nodename082    VARCHAR2(500),
  c_nodename083    VARCHAR2(500),
  c_nodename084    VARCHAR2(500),
  c_nodename085    VARCHAR2(500),
  c_nodename086    VARCHAR2(500),
  c_nodename087    VARCHAR2(500),
  c_nodename088    VARCHAR2(500),
  c_nodename089    VARCHAR2(500),
  c_nodename090    VARCHAR2(500),
  c_nodename091    VARCHAR2(500),
  c_nodename092    VARCHAR2(500),
  c_nodename093    VARCHAR2(500),
  c_nodename094    VARCHAR2(500),
  c_nodename095    VARCHAR2(500),
  c_nodename096    VARCHAR2(500),
  c_nodename097    VARCHAR2(500),
  c_nodename098    VARCHAR2(500),
  c_nodename099    VARCHAR2(500),
  c_nodename100    VARCHAR2(500),
  c_nodename101    VARCHAR2(500),
  c_nodename102    VARCHAR2(500),
  c_nodename103    VARCHAR2(500),
  c_nodename104    VARCHAR2(500),
  c_nodename105    VARCHAR2(500),
  c_nodename106    VARCHAR2(500),
  c_nodename107    VARCHAR2(500),
  c_nodename108    VARCHAR2(500),
  c_nodename109    VARCHAR2(500),
  c_nodename110    VARCHAR2(500),
  c_nodename111    VARCHAR2(500),
  c_nodename112    VARCHAR2(500),
  c_nodename113    VARCHAR2(500),
  c_nodename114    VARCHAR2(500),
  c_nodename115    VARCHAR2(500),
  c_nodename116    VARCHAR2(500),
  c_nodename117    VARCHAR2(500),
  c_nodename118    VARCHAR2(500),
  c_nodename119    VARCHAR2(500),
  c_nodename120    VARCHAR2(500),
  c_rule_code    VARCHAR2(5),
  c_check_emp    VARCHAR2(9),
  f_data121    NUMBER(19,4),
  f_data122    NUMBER(19,4),
  f_data123    NUMBER(19,4),
  f_data124    NUMBER(19,4),
  f_data125    NUMBER(19,4),
  f_data126    NUMBER(19,4),
  f_data127    NUMBER(19,4),
  f_data128    NUMBER(19,4),
  f_data129    NUMBER(19,4),
  f_data130    NUMBER(19,4),
  f_data131    NUMBER(19,4),
  f_data132    NUMBER(19,4),
  f_data133    NUMBER(19,4),
  f_data134    NUMBER(19,4),
  f_data135    NUMBER(19,4),
  f_data136    NUMBER(19,4),
  f_data137    NUMBER(19,4),
  f_data138    NUMBER(19,4),
  f_data139    NUMBER(19,4),
  f_data140    NUMBER(19,4),
  f_data141    NUMBER(19,4),
  f_data142    NUMBER(19,4),
  f_data143    NUMBER(19,4),
  f_data144    NUMBER(19,4),
  f_data145    NUMBER(19,4),
  f_data146    NUMBER(19,4),
  f_data147    NUMBER(19,4),
  f_data148    NUMBER(19,4),
  f_data149    NUMBER(19,4),
  f_data150    NUMBER(19,4),
  f_data151    NUMBER(19,4),
  f_data152    NUMBER(19,4),
  f_data153    NUMBER(19,4),
  f_data154    NUMBER(19,4),
  f_data155    NUMBER(19,4),
  f_data156    NUMBER(19,4),
  f_data157    NUMBER(19,4),
  f_data158    NUMBER(19,4),
  f_data159    NUMBER(19,4),
  f_data160    NUMBER(19,4),
  f_data161    NUMBER(19,4),
  f_data162    NUMBER(19,4),
  f_data163    NUMBER(19,4),
  f_data164    NUMBER(19,4),
  f_data165    NUMBER(19,4),
  f_data166    NUMBER(19,4),
  f_data167    NUMBER(19,4),
  f_data168    NUMBER(19,4),
  f_data169    NUMBER(19,4),
  f_data170    NUMBER(19,4),
  c_nodename121    VARCHAR2(500),
  c_nodename122    VARCHAR2(500),
  c_nodename123    VARCHAR2(500),
  c_nodename124    VARCHAR2(500),
  c_nodename125    VARCHAR2(500),
  c_nodename126    VARCHAR2(500),
  c_nodename127    VARCHAR2(500),
  c_nodename128    VARCHAR2(500),
  c_nodename129    VARCHAR2(500),
  c_nodename130    VARCHAR2(500),
  c_nodename131    VARCHAR2(500),
  c_nodename132    VARCHAR2(500),
  c_nodename133    VARCHAR2(500),
  c_nodename134    VARCHAR2(500),
  c_nodename135    VARCHAR2(500),
  c_nodename136    VARCHAR2(500),
  c_nodename137    VARCHAR2(500),
  c_nodename138    VARCHAR2(500),
  c_nodename139    VARCHAR2(500),
  c_nodename140    VARCHAR2(500),
  c_nodename141    VARCHAR2(500),
  c_nodename142    VARCHAR2(500),
  c_nodename143    VARCHAR2(500),
  c_nodename144    VARCHAR2(500),
  c_nodename145    VARCHAR2(500),
  c_nodename146    VARCHAR2(500),
  c_nodename147    VARCHAR2(500),
  c_nodename148    VARCHAR2(500),
  c_nodename149    VARCHAR2(500),
  c_nodename150    VARCHAR2(500),
  c_nodename151    VARCHAR2(500),
  c_nodename152    VARCHAR2(500),
  c_nodename153    VARCHAR2(500),
  c_nodename154    VARCHAR2(500),
  c_nodename155    VARCHAR2(500),
  c_nodename156    VARCHAR2(500),
  c_nodename157    VARCHAR2(500),
  c_nodename158    VARCHAR2(500),
  c_nodename159    VARCHAR2(500),
  c_nodename160    VARCHAR2(500),
  c_nodename161    VARCHAR2(500),
  c_nodename162    VARCHAR2(500),
  c_nodename163    VARCHAR2(500),
  c_nodename164    VARCHAR2(500),
  c_nodename165    VARCHAR2(500),
  c_nodename166    VARCHAR2(500),
  c_nodename167    VARCHAR2(500),
  c_nodename168    VARCHAR2(500),
  c_nodename169    VARCHAR2(500),
  c_nodename170    VARCHAR2(500)
)';
end if;

if fc_IsTableExists('rep_balance_sheet') and not fc_Constraints_Exists('rep_balance_sheet','','P','0') then
execute immediate '
  alter table rep_balance_sheet
      add constraint PK_rep_balance_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_balance_ID') then
    execute immediate 'create sequence SEQ_rep_balance_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181119panrm26330(资产负债信息表)--end--


--20181119panrm26330(客户利润信息表)--start--
if not fc_IsTableExists('rep_income_statement') then
execute immediate 'create table rep_income_statement
(
  l_id                 NUMBER(11) not null,
  c_idu_flag           VARCHAR2(1),
  c_cino               VARCHAR2(20),
  c_repf_date          VARCHAR2(6),
  c_rep_template_code  VARCHAR2(8),
  c_comp_flag          VARCHAR2(1),
  c_employee_code      VARCHAR2(9),
  c_emp_area_code      VARCHAR2(10),
  c_mod_time           VARCHAR2(14),
  c_info               VARCHAR2(1000),
  f_data001    NUMBER(19,4),
  f_data002    NUMBER(19,4),
  f_data003    NUMBER(19,4),
  f_data004    NUMBER(19,4),
  f_data005    NUMBER(19,4),
  f_data006    NUMBER(19,4),
  f_data007    NUMBER(19,4),
  f_data008    NUMBER(19,4),
  f_data009    NUMBER(19,4),
  f_data010    NUMBER(19,4),
  f_data011    NUMBER(19,4),
  f_data012    NUMBER(19,4),
  f_data013    NUMBER(19,4),
  f_data014    NUMBER(19,4),
  f_data015    NUMBER(19,4),
  f_data016    NUMBER(19,4),
  f_data017    NUMBER(19,4),
  f_data018    NUMBER(19,4),
  f_data019    NUMBER(19,4),
  f_data020    NUMBER(19,4),
  f_data021    NUMBER(19,4),
  f_data022    NUMBER(19,4),
  f_data023    NUMBER(19,4),
  f_data024    NUMBER(19,4),
  f_data025    NUMBER(19,4),
  f_data026    NUMBER(19,4),
  f_data027    NUMBER(19,4),
  f_data028    NUMBER(19,4),
  f_data029    NUMBER(19,4),
  f_data030    NUMBER(19,4),
  f_data031    NUMBER(19,4),
  f_data032    NUMBER(19,4),
  f_data033    NUMBER(19,4),
  f_data034    NUMBER(19,4),
  f_data035    NUMBER(19,4),
  f_data036    NUMBER(19,4),
  f_data037    NUMBER(19,4),
  f_data038    NUMBER(19,4),
  f_data039    NUMBER(19,4),
  f_data040    NUMBER(19,4),
  f_data041    NUMBER(19,4),
  f_data042    NUMBER(19,4),
  f_data043    NUMBER(19,4),
  f_data044    NUMBER(19,4),
  f_data045    NUMBER(19,4),
  f_data046    NUMBER(19,4),
  f_data047    NUMBER(19,4),
  f_data048    NUMBER(19,4),
  f_data049    NUMBER(19,4),
  f_data050    NUMBER(19,4),
  f_data051    NUMBER(19,4),
  f_data052    NUMBER(19,4),
  f_data053    NUMBER(19,4),
  f_data054    NUMBER(19,4),
  f_data055    NUMBER(19,4),
  f_data056    NUMBER(19,4),
  f_data057    NUMBER(19,4),
  f_data058    NUMBER(19,4),
  f_data059    NUMBER(19,4),
  f_data060    NUMBER(19,4),
  f_data061    NUMBER(19,4),
  f_data062    NUMBER(19,4),
  f_data063    NUMBER(19,4),
  f_data064    NUMBER(19,4),
  f_data065    NUMBER(19,4),
  f_data066    NUMBER(19,4),
  f_data067    NUMBER(19,4),
  f_data068    NUMBER(19,4),
  f_data069    NUMBER(19,4),
  f_data070    NUMBER(19,4),
  f_data071    NUMBER(19,4),
  f_data072    NUMBER(19,4),
  f_data073    NUMBER(19,4),
  f_data074    NUMBER(19,4),
  f_data075    NUMBER(19,4),
  f_data076    NUMBER(19,4),
  f_data077    NUMBER(19,4),
  f_data078    NUMBER(19,4),
  f_data079    NUMBER(19,4),
  f_data080    NUMBER(19,4),
  f_data081    NUMBER(19,4),
  f_data082    NUMBER(19,4),
  f_data083    NUMBER(19,4),
  f_data084    NUMBER(19,4),
  f_data085    NUMBER(19,4),
  f_data086    NUMBER(19,4),
  f_data087    NUMBER(19,4),
  f_data088    NUMBER(19,4),
  f_data089    NUMBER(19,4),
  f_data090    NUMBER(19,4),
  f_data091    NUMBER(19,4),
  f_data092    NUMBER(19,4),
  f_data093    NUMBER(19,4),
  f_data094    NUMBER(19,4),
  f_data095    NUMBER(19,4),
  f_data096    NUMBER(19,4),
  f_data097    NUMBER(19,4),
  f_data098    NUMBER(19,4),
  f_data099    NUMBER(19,4),
  f_data100    NUMBER(19,4),
  f_data101    NUMBER(19,4),
  f_data102    NUMBER(19,4),
  f_data103    NUMBER(19,4),
  f_data104    NUMBER(19,4),
  f_data105    NUMBER(19,4),
  f_data106    NUMBER(19,4),
  f_data107    NUMBER(19,4),
  f_data108    NUMBER(19,4),
  f_data109    NUMBER(19,4),
  f_data110    NUMBER(19,4),
  f_data111    NUMBER(19,4),
  f_data112    NUMBER(19,4),
  f_data113    NUMBER(19,4),
  f_data114    NUMBER(19,4),
  f_data115    NUMBER(19,4),
  f_data116    NUMBER(19,4),
  f_data117    NUMBER(19,4),
  f_data118    NUMBER(19,4),
  f_data119    NUMBER(19,4),
  f_data120    NUMBER(19,4),
  c_nodename001    VARCHAR2(500),
  c_nodename002    VARCHAR2(500),
  c_nodename003    VARCHAR2(500),
  c_nodename004    VARCHAR2(500),
  c_nodename005    VARCHAR2(500),
  c_nodename006    VARCHAR2(500),
  c_nodename007    VARCHAR2(500),
  c_nodename008    VARCHAR2(500),
  c_nodename009    VARCHAR2(500),
  c_nodename010    VARCHAR2(500),
  c_nodename011    VARCHAR2(500),
  c_nodename012    VARCHAR2(500),
  c_nodename013    VARCHAR2(500),
  c_nodename014    VARCHAR2(500),
  c_nodename015    VARCHAR2(500),
  c_nodename016    VARCHAR2(500),
  c_nodename017    VARCHAR2(500),
  c_nodename018    VARCHAR2(500),
  c_nodename019    VARCHAR2(500),
  c_nodename020    VARCHAR2(500),
  c_nodename021    VARCHAR2(500),
  c_nodename022    VARCHAR2(500),
  c_nodename023    VARCHAR2(500),
  c_nodename024    VARCHAR2(500),
  c_nodename025    VARCHAR2(500),
  c_nodename026    VARCHAR2(500),
  c_nodename027    VARCHAR2(500),
  c_nodename028    VARCHAR2(500),
  c_nodename029    VARCHAR2(500),
  c_nodename030    VARCHAR2(500),
  c_nodename031    VARCHAR2(500),
  c_nodename032    VARCHAR2(500),
  c_nodename033    VARCHAR2(500),
  c_nodename034    VARCHAR2(500),
  c_nodename035    VARCHAR2(500),
  c_nodename036    VARCHAR2(500),
  c_nodename037    VARCHAR2(500),
  c_nodename038    VARCHAR2(500),
  c_nodename039    VARCHAR2(500),
  c_nodename040    VARCHAR2(500),
  c_nodename041    VARCHAR2(500),
  c_nodename042    VARCHAR2(500),
  c_nodename043    VARCHAR2(500),
  c_nodename044    VARCHAR2(500),
  c_nodename045    VARCHAR2(500),
  c_nodename046    VARCHAR2(500),
  c_nodename047    VARCHAR2(500),
  c_nodename048    VARCHAR2(500),
  c_nodename049    VARCHAR2(500),
  c_nodename050    VARCHAR2(500),
  c_nodename051    VARCHAR2(500),
  c_nodename052    VARCHAR2(500),
  c_nodename053    VARCHAR2(500),
  c_nodename054    VARCHAR2(500),
  c_nodename055    VARCHAR2(500),
  c_nodename056    VARCHAR2(500),
  c_nodename057    VARCHAR2(500),
  c_nodename058    VARCHAR2(500),
  c_nodename059    VARCHAR2(500),
  c_nodename060    VARCHAR2(500),
  c_nodename061    VARCHAR2(500),
  c_nodename062    VARCHAR2(500),
  c_nodename063    VARCHAR2(500),
  c_nodename064    VARCHAR2(500),
  c_nodename065    VARCHAR2(500),
  c_nodename066    VARCHAR2(500),
  c_nodename067    VARCHAR2(500),
  c_nodename068    VARCHAR2(500),
  c_nodename069    VARCHAR2(500),
  c_nodename070    VARCHAR2(500),
  c_nodename071    VARCHAR2(500),
  c_nodename072    VARCHAR2(500),
  c_nodename073    VARCHAR2(500),
  c_nodename074    VARCHAR2(500),
  c_nodename075    VARCHAR2(500),
  c_nodename076    VARCHAR2(500),
  c_nodename077    VARCHAR2(500),
  c_nodename078    VARCHAR2(500),
  c_nodename079    VARCHAR2(500),
  c_nodename080    VARCHAR2(500),
  c_nodename081    VARCHAR2(500),
  c_nodename082    VARCHAR2(500),
  c_nodename083    VARCHAR2(500),
  c_nodename084    VARCHAR2(500),
  c_nodename085    VARCHAR2(500),
  c_nodename086    VARCHAR2(500),
  c_nodename087    VARCHAR2(500),
  c_nodename088    VARCHAR2(500),
  c_nodename089    VARCHAR2(500),
  c_nodename090    VARCHAR2(500),
  c_nodename091    VARCHAR2(500),
  c_nodename092    VARCHAR2(500),
  c_nodename093    VARCHAR2(500),
  c_nodename094    VARCHAR2(500),
  c_nodename095    VARCHAR2(500),
  c_nodename096    VARCHAR2(500),
  c_nodename097    VARCHAR2(500),
  c_nodename098    VARCHAR2(500),
  c_nodename099    VARCHAR2(500),
  c_nodename100    VARCHAR2(500),
  c_nodename101    VARCHAR2(500),
  c_nodename102    VARCHAR2(500),
  c_nodename103    VARCHAR2(500),
  c_nodename104    VARCHAR2(500),
  c_nodename105    VARCHAR2(500),
  c_nodename106    VARCHAR2(500),
  c_nodename107    VARCHAR2(500),
  c_nodename108    VARCHAR2(500),
  c_nodename109    VARCHAR2(500),
  c_nodename110    VARCHAR2(500),
  c_nodename111    VARCHAR2(500),
  c_nodename112    VARCHAR2(500),
  c_nodename113    VARCHAR2(500),
  c_nodename114    VARCHAR2(500),
  c_nodename115    VARCHAR2(500),
  c_nodename116    VARCHAR2(500),
  c_nodename117    VARCHAR2(500),
  c_nodename118    VARCHAR2(500),
  c_nodename119    VARCHAR2(500),
  c_nodename120    VARCHAR2(500),
  c_rule_code    VARCHAR2(5),
  c_check_emp    VARCHAR2(9)
)';
end if;

if fc_IsTableExists('rep_income_statement') and not fc_Constraints_Exists('rep_income_statement','','P','0') then
execute immediate '
  alter table rep_income_statement
      add constraint PK_rep_incomes_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_incomes_ID') then
    execute immediate 'create sequence SEQ_rep_incomes_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181119panrm26330(客户利润信息表)--end--


--20181119panrm26330(客户现金流信息表)--start--
if not fc_IsTableExists('rep_cash_flow') then
execute immediate 'create table rep_cash_flow
(
  l_id                 NUMBER(11) not null,
  c_idu_flag           VARCHAR2(1),
  c_cino               VARCHAR2(20),
  c_repf_date          VARCHAR2(6),
  c_rep_template_code  VARCHAR2(8),
  c_comp_flag          VARCHAR2(1),
  c_employee_code      VARCHAR2(9),
  c_emp_area_code      VARCHAR2(10),
  c_mod_time           VARCHAR2(14),
  c_info               VARCHAR2(1000),
  c_repf_cate_code     VARCHAR2(5),
  f_data001    NUMBER(19,4),
  f_data002    NUMBER(19,4),
  f_data003    NUMBER(19,4),
  f_data004    NUMBER(19,4),
  f_data005    NUMBER(19,4),
  f_data006    NUMBER(19,4),
  f_data007    NUMBER(19,4),
  f_data008    NUMBER(19,4),
  f_data009    NUMBER(19,4),
  f_data010    NUMBER(19,4),
  f_data011    NUMBER(19,4),
  f_data012    NUMBER(19,4),
  f_data013    NUMBER(19,4),
  f_data014    NUMBER(19,4),
  f_data015    NUMBER(19,4),
  f_data016    NUMBER(19,4),
  f_data017    NUMBER(19,4),
  f_data018    NUMBER(19,4),
  f_data019    NUMBER(19,4),
  f_data020    NUMBER(19,4),
  f_data021    NUMBER(19,4),
  f_data022    NUMBER(19,4),
  f_data023    NUMBER(19,4),
  f_data024    NUMBER(19,4),
  f_data025    NUMBER(19,4),
  f_data026    NUMBER(19,4),
  f_data027    NUMBER(19,4),
  f_data028    NUMBER(19,4),
  f_data029    NUMBER(19,4),
  f_data030    NUMBER(19,4),
  f_data031    NUMBER(19,4),
  f_data032    NUMBER(19,4),
  f_data033    NUMBER(19,4),
  f_data034    NUMBER(19,4),
  f_data035    NUMBER(19,4),
  f_data036    NUMBER(19,4),
  f_data037    NUMBER(19,4),
  f_data038    NUMBER(19,4),
  f_data039    NUMBER(19,4),
  f_data040    NUMBER(19,4),
  f_data041    NUMBER(19,4),
  f_data042    NUMBER(19,4),
  f_data043    NUMBER(19,4),
  f_data044    NUMBER(19,4),
  f_data045    NUMBER(19,4),
  f_data046    NUMBER(19,4),
  f_data047    NUMBER(19,4),
  f_data048    NUMBER(19,4),
  f_data049    NUMBER(19,4),
  f_data050    NUMBER(19,4),
  f_data051    NUMBER(19,4),
  f_data052    NUMBER(19,4),
  f_data053    NUMBER(19,4),
  f_data054    NUMBER(19,4),
  f_data055    NUMBER(19,4),
  f_data056    NUMBER(19,4),
  f_data057    NUMBER(19,4),
  f_data058    NUMBER(19,4),
  f_data059    NUMBER(19,4),
  f_data060    NUMBER(19,4),
  f_data061    NUMBER(19,4),
  f_data062    NUMBER(19,4),
  f_data063    NUMBER(19,4),
  f_data064    NUMBER(19,4),
  f_data065    NUMBER(19,4),
  f_data066    NUMBER(19,4),
  f_data067    NUMBER(19,4),
  f_data068    NUMBER(19,4),
  f_data069    NUMBER(19,4),
  f_data070    NUMBER(19,4),
  f_data071    NUMBER(19,4),
  f_data072    NUMBER(19,4),
  f_data073    NUMBER(19,4),
  f_data074    NUMBER(19,4),
  f_data075    NUMBER(19,4),
  f_data076    NUMBER(19,4),
  f_data077    NUMBER(19,4),
  f_data078    NUMBER(19,4),
  f_data079    NUMBER(19,4),
  f_data080    NUMBER(19,4),
  f_data081    NUMBER(19,4),
  f_data082    NUMBER(19,4),
  f_data083    NUMBER(19,4),
  f_data084    NUMBER(19,4),
  f_data085    NUMBER(19,4),
  f_data086    NUMBER(19,4),
  f_data087    NUMBER(19,4),
  f_data088    NUMBER(19,4),
  f_data089    NUMBER(19,4),
  f_data090    NUMBER(19,4),
  f_data091    NUMBER(19,4),
  f_data092    NUMBER(19,4),
  f_data093    NUMBER(19,4),
  f_data094    NUMBER(19,4),
  f_data095    NUMBER(19,4),
  f_data096    NUMBER(19,4),
  f_data097    NUMBER(19,4),
  f_data098    NUMBER(19,4),
  f_data099    NUMBER(19,4),
  f_data100    NUMBER(19,4),
  f_data101    NUMBER(19,4),
  f_data102    NUMBER(19,4),
  f_data103    NUMBER(19,4),
  f_data104    NUMBER(19,4),
  f_data105    NUMBER(19,4),
  f_data106    NUMBER(19,4),
  f_data107    NUMBER(19,4),
  f_data108    NUMBER(19,4),
  f_data109    NUMBER(19,4),
  f_data110    NUMBER(19,4),
  f_data111    NUMBER(19,4),
  f_data112    NUMBER(19,4),
  f_data113    NUMBER(19,4),
  f_data114    NUMBER(19,4),
  f_data115    NUMBER(19,4),
  f_data116    NUMBER(19,4),
  f_data117    NUMBER(19,4),
  f_data118    NUMBER(19,4),
  f_data119    NUMBER(19,4),
  f_data120    NUMBER(19,4),
  c_nodename001    VARCHAR2(500),
  c_nodename002    VARCHAR2(500),
  c_nodename003    VARCHAR2(500),
  c_nodename004    VARCHAR2(500),
  c_nodename005    VARCHAR2(500),
  c_nodename006    VARCHAR2(500),
  c_nodename007    VARCHAR2(500),
  c_nodename008    VARCHAR2(500),
  c_nodename009    VARCHAR2(500),
  c_nodename010    VARCHAR2(500),
  c_nodename011    VARCHAR2(500),
  c_nodename012    VARCHAR2(500),
  c_nodename013    VARCHAR2(500),
  c_nodename014    VARCHAR2(500),
  c_nodename015    VARCHAR2(500),
  c_nodename016    VARCHAR2(500),
  c_nodename017    VARCHAR2(500),
  c_nodename018    VARCHAR2(500),
  c_nodename019    VARCHAR2(500),
  c_nodename020    VARCHAR2(500),
  c_nodename021    VARCHAR2(500),
  c_nodename022    VARCHAR2(500),
  c_nodename023    VARCHAR2(500),
  c_nodename024    VARCHAR2(500),
  c_nodename025    VARCHAR2(500),
  c_nodename026    VARCHAR2(500),
  c_nodename027    VARCHAR2(500),
  c_nodename028    VARCHAR2(500),
  c_nodename029    VARCHAR2(500),
  c_nodename030    VARCHAR2(500),
  c_nodename031    VARCHAR2(500),
  c_nodename032    VARCHAR2(500),
  c_nodename033    VARCHAR2(500),
  c_nodename034    VARCHAR2(500),
  c_nodename035    VARCHAR2(500),
  c_nodename036    VARCHAR2(500),
  c_nodename037    VARCHAR2(500),
  c_nodename038    VARCHAR2(500),
  c_nodename039    VARCHAR2(500),
  c_nodename040    VARCHAR2(500),
  c_nodename041    VARCHAR2(500),
  c_nodename042    VARCHAR2(500),
  c_nodename043    VARCHAR2(500),
  c_nodename044    VARCHAR2(500),
  c_nodename045    VARCHAR2(500),
  c_nodename046    VARCHAR2(500),
  c_nodename047    VARCHAR2(500),
  c_nodename048    VARCHAR2(500),
  c_nodename049    VARCHAR2(500),
  c_nodename050    VARCHAR2(500),
  c_nodename051    VARCHAR2(500),
  c_nodename052    VARCHAR2(500),
  c_nodename053    VARCHAR2(500),
  c_nodename054    VARCHAR2(500),
  c_nodename055    VARCHAR2(500),
  c_nodename056    VARCHAR2(500),
  c_nodename057    VARCHAR2(500),
  c_nodename058    VARCHAR2(500),
  c_nodename059    VARCHAR2(500),
  c_nodename060    VARCHAR2(500),
  c_nodename061    VARCHAR2(500),
  c_nodename062    VARCHAR2(500),
  c_nodename063    VARCHAR2(500),
  c_nodename064    VARCHAR2(500),
  c_nodename065    VARCHAR2(500),
  c_nodename066    VARCHAR2(500),
  c_nodename067    VARCHAR2(500),
  c_nodename068    VARCHAR2(500),
  c_nodename069    VARCHAR2(500),
  c_nodename070    VARCHAR2(500),
  c_nodename071    VARCHAR2(500),
  c_nodename072    VARCHAR2(500),
  c_nodename073    VARCHAR2(500),
  c_nodename074    VARCHAR2(500),
  c_nodename075    VARCHAR2(500),
  c_nodename076    VARCHAR2(500),
  c_nodename077    VARCHAR2(500),
  c_nodename078    VARCHAR2(500),
  c_nodename079    VARCHAR2(500),
  c_nodename080    VARCHAR2(500),
  c_nodename081    VARCHAR2(500),
  c_nodename082    VARCHAR2(500),
  c_nodename083    VARCHAR2(500),
  c_nodename084    VARCHAR2(500),
  c_nodename085    VARCHAR2(500),
  c_nodename086    VARCHAR2(500),
  c_nodename087    VARCHAR2(500),
  c_nodename088    VARCHAR2(500),
  c_nodename089    VARCHAR2(500),
  c_nodename090    VARCHAR2(500),
  c_nodename091    VARCHAR2(500),
  c_nodename092    VARCHAR2(500),
  c_nodename093    VARCHAR2(500),
  c_nodename094    VARCHAR2(500),
  c_nodename095    VARCHAR2(500),
  c_nodename096    VARCHAR2(500),
  c_nodename097    VARCHAR2(500),
  c_nodename098    VARCHAR2(500),
  c_nodename099    VARCHAR2(500),
  c_nodename100    VARCHAR2(500),
  c_nodename101    VARCHAR2(500),
  c_nodename102    VARCHAR2(500),
  c_nodename103    VARCHAR2(500),
  c_nodename104    VARCHAR2(500),
  c_nodename105    VARCHAR2(500),
  c_nodename106    VARCHAR2(500),
  c_nodename107    VARCHAR2(500),
  c_nodename108    VARCHAR2(500),
  c_nodename109    VARCHAR2(500),
  c_nodename110    VARCHAR2(500),
  c_nodename111    VARCHAR2(500),
  c_nodename112    VARCHAR2(500),
  c_nodename113    VARCHAR2(500),
  c_nodename114    VARCHAR2(500),
  c_nodename115    VARCHAR2(500),
  c_nodename116    VARCHAR2(500),
  c_nodename117    VARCHAR2(500),
  c_nodename118    VARCHAR2(500),
  c_nodename119    VARCHAR2(500),
  c_nodename120    VARCHAR2(500),
  c_rule_code    VARCHAR2(5),
  c_check_emp    VARCHAR2(9)
)';
end if;

if fc_IsTableExists('rep_cash_flow') and not fc_Constraints_Exists('rep_cash_flow','','P','0') then
execute immediate '
  alter table rep_cash_flow
      add constraint PK_rep_cashflow_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_cashflow_ID') then
    execute immediate 'create sequence SEQ_rep_cashflow_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181119panrm26330(客户现金流信息表)--end--


--20181119panrm26330(合并报表资产负债信息表)--start--
if not fc_IsTableExists('rep_balance_sheet_c') then
execute immediate 'create table rep_balance_sheet_c
(
  l_id                 NUMBER(11) not null,
  c_idu_flag           VARCHAR2(1),
  c_cino               VARCHAR2(20),
  c_repf_date          VARCHAR2(6),
  c_rep_template_code  VARCHAR2(8),
  c_comp_flag          VARCHAR2(1),
  c_employee_code      VARCHAR2(9),
  c_emp_area_code      VARCHAR2(10),
  c_mod_time           VARCHAR2(14),
  c_info               VARCHAR2(1000),
  f_data001    NUMBER(19,4),
  f_data002    NUMBER(19,4),
  f_data003    NUMBER(19,4),
  f_data004    NUMBER(19,4),
  f_data005    NUMBER(19,4),
  f_data006    NUMBER(19,4),
  f_data007    NUMBER(19,4),
  f_data008    NUMBER(19,4),
  f_data009    NUMBER(19,4),
  f_data010    NUMBER(19,4),
  f_data011    NUMBER(19,4),
  f_data012    NUMBER(19,4),
  f_data013    NUMBER(19,4),
  f_data014    NUMBER(19,4),
  f_data015    NUMBER(19,4),
  f_data016    NUMBER(19,4),
  f_data017    NUMBER(19,4),
  f_data018    NUMBER(19,4),
  f_data019    NUMBER(19,4),
  f_data020    NUMBER(19,4),
  f_data021    NUMBER(19,4),
  f_data022    NUMBER(19,4),
  f_data023    NUMBER(19,4),
  f_data024    NUMBER(19,4),
  f_data025    NUMBER(19,4),
  f_data026    NUMBER(19,4),
  f_data027    NUMBER(19,4),
  f_data028    NUMBER(19,4),
  f_data029    NUMBER(19,4),
  f_data030    NUMBER(19,4),
  f_data031    NUMBER(19,4),
  f_data032    NUMBER(19,4),
  f_data033    NUMBER(19,4),
  f_data034    NUMBER(19,4),
  f_data035    NUMBER(19,4),
  f_data036    NUMBER(19,4),
  f_data037    NUMBER(19,4),
  f_data038    NUMBER(19,4),
  f_data039    NUMBER(19,4),
  f_data040    NUMBER(19,4),
  f_data041    NUMBER(19,4),
  f_data042    NUMBER(19,4),
  f_data043    NUMBER(19,4),
  f_data044    NUMBER(19,4),
  f_data045    NUMBER(19,4),
  f_data046    NUMBER(19,4),
  f_data047    NUMBER(19,4),
  f_data048    NUMBER(19,4),
  f_data049    NUMBER(19,4),
  f_data050    NUMBER(19,4),
  f_data051    NUMBER(19,4),
  f_data052    NUMBER(19,4),
  f_data053    NUMBER(19,4),
  f_data054    NUMBER(19,4),
  f_data055    NUMBER(19,4),
  f_data056    NUMBER(19,4),
  f_data057    NUMBER(19,4),
  f_data058    NUMBER(19,4),
  f_data059    NUMBER(19,4),
  f_data060    NUMBER(19,4),
  f_data061    NUMBER(19,4),
  f_data062    NUMBER(19,4),
  f_data063    NUMBER(19,4),
  f_data064    NUMBER(19,4),
  f_data065    NUMBER(19,4),
  f_data066    NUMBER(19,4),
  f_data067    NUMBER(19,4),
  f_data068    NUMBER(19,4),
  f_data069    NUMBER(19,4),
  f_data070    NUMBER(19,4),
  f_data071    NUMBER(19,4),
  f_data072    NUMBER(19,4),
  f_data073    NUMBER(19,4),
  f_data074    NUMBER(19,4),
  f_data075    NUMBER(19,4),
  f_data076    NUMBER(19,4),
  f_data077    NUMBER(19,4),
  f_data078    NUMBER(19,4),
  f_data079    NUMBER(19,4),
  f_data080    NUMBER(19,4),
  f_data081    NUMBER(19,4),
  f_data082    NUMBER(19,4),
  f_data083    NUMBER(19,4),
  f_data084    NUMBER(19,4),
  f_data085    NUMBER(19,4),
  f_data086    NUMBER(19,4),
  f_data087    NUMBER(19,4),
  f_data088    NUMBER(19,4),
  f_data089    NUMBER(19,4),
  f_data090    NUMBER(19,4),
  f_data091    NUMBER(19,4),
  f_data092    NUMBER(19,4),
  f_data093    NUMBER(19,4),
  f_data094    NUMBER(19,4),
  f_data095    NUMBER(19,4),
  f_data096    NUMBER(19,4),
  f_data097    NUMBER(19,4),
  f_data098    NUMBER(19,4),
  f_data099    NUMBER(19,4),
  f_data100    NUMBER(19,4),
  f_data101    NUMBER(19,4),
  f_data102    NUMBER(19,4),
  f_data103    NUMBER(19,4),
  f_data104    NUMBER(19,4),
  f_data105    NUMBER(19,4),
  f_data106    NUMBER(19,4),
  f_data107    NUMBER(19,4),
  f_data108    NUMBER(19,4),
  f_data109    NUMBER(19,4),
  f_data110    NUMBER(19,4),
  f_data111    NUMBER(19,4),
  f_data112    NUMBER(19,4),
  f_data113    NUMBER(19,4),
  f_data114    NUMBER(19,4),
  f_data115    NUMBER(19,4),
  f_data116    NUMBER(19,4),
  f_data117    NUMBER(19,4),
  f_data118    NUMBER(19,4),
  f_data119    NUMBER(19,4),
  f_data120    NUMBER(19,4),
  c_nodename001    VARCHAR2(500),
  c_nodename002    VARCHAR2(500),
  c_nodename003    VARCHAR2(500),
  c_nodename004    VARCHAR2(500),
  c_nodename005    VARCHAR2(500),
  c_nodename006    VARCHAR2(500),
  c_nodename007    VARCHAR2(500),
  c_nodename008    VARCHAR2(500),
  c_nodename009    VARCHAR2(500),
  c_nodename010    VARCHAR2(500),
  c_nodename011    VARCHAR2(500),
  c_nodename012    VARCHAR2(500),
  c_nodename013    VARCHAR2(500),
  c_nodename014    VARCHAR2(500),
  c_nodename015    VARCHAR2(500),
  c_nodename016    VARCHAR2(500),
  c_nodename017    VARCHAR2(500),
  c_nodename018    VARCHAR2(500),
  c_nodename019    VARCHAR2(500),
  c_nodename020    VARCHAR2(500),
  c_nodename021    VARCHAR2(500),
  c_nodename022    VARCHAR2(500),
  c_nodename023    VARCHAR2(500),
  c_nodename024    VARCHAR2(500),
  c_nodename025    VARCHAR2(500),
  c_nodename026    VARCHAR2(500),
  c_nodename027    VARCHAR2(500),
  c_nodename028    VARCHAR2(500),
  c_nodename029    VARCHAR2(500),
  c_nodename030    VARCHAR2(500),
  c_nodename031    VARCHAR2(500),
  c_nodename032    VARCHAR2(500),
  c_nodename033    VARCHAR2(500),
  c_nodename034    VARCHAR2(500),
  c_nodename035    VARCHAR2(500),
  c_nodename036    VARCHAR2(500),
  c_nodename037    VARCHAR2(500),
  c_nodename038    VARCHAR2(500),
  c_nodename039    VARCHAR2(500),
  c_nodename040    VARCHAR2(500),
  c_nodename041    VARCHAR2(500),
  c_nodename042    VARCHAR2(500),
  c_nodename043    VARCHAR2(500),
  c_nodename044    VARCHAR2(500),
  c_nodename045    VARCHAR2(500),
  c_nodename046    VARCHAR2(500),
  c_nodename047    VARCHAR2(500),
  c_nodename048    VARCHAR2(500),
  c_nodename049    VARCHAR2(500),
  c_nodename050    VARCHAR2(500),
  c_nodename051    VARCHAR2(500),
  c_nodename052    VARCHAR2(500),
  c_nodename053    VARCHAR2(500),
  c_nodename054    VARCHAR2(500),
  c_nodename055    VARCHAR2(500),
  c_nodename056    VARCHAR2(500),
  c_nodename057    VARCHAR2(500),
  c_nodename058    VARCHAR2(500),
  c_nodename059    VARCHAR2(500),
  c_nodename060    VARCHAR2(500),
  c_nodename061    VARCHAR2(500),
  c_nodename062    VARCHAR2(500),
  c_nodename063    VARCHAR2(500),
  c_nodename064    VARCHAR2(500),
  c_nodename065    VARCHAR2(500),
  c_nodename066    VARCHAR2(500),
  c_nodename067    VARCHAR2(500),
  c_nodename068    VARCHAR2(500),
  c_nodename069    VARCHAR2(500),
  c_nodename070    VARCHAR2(500),
  c_nodename071    VARCHAR2(500),
  c_nodename072    VARCHAR2(500),
  c_nodename073    VARCHAR2(500),
  c_nodename074    VARCHAR2(500),
  c_nodename075    VARCHAR2(500),
  c_nodename076    VARCHAR2(500),
  c_nodename077    VARCHAR2(500),
  c_nodename078    VARCHAR2(500),
  c_nodename079    VARCHAR2(500),
  c_nodename080    VARCHAR2(500),
  c_nodename081    VARCHAR2(500),
  c_nodename082    VARCHAR2(500),
  c_nodename083    VARCHAR2(500),
  c_nodename084    VARCHAR2(500),
  c_nodename085    VARCHAR2(500),
  c_nodename086    VARCHAR2(500),
  c_nodename087    VARCHAR2(500),
  c_nodename088    VARCHAR2(500),
  c_nodename089    VARCHAR2(500),
  c_nodename090    VARCHAR2(500),
  c_nodename091    VARCHAR2(500),
  c_nodename092    VARCHAR2(500),
  c_nodename093    VARCHAR2(500),
  c_nodename094    VARCHAR2(500),
  c_nodename095    VARCHAR2(500),
  c_nodename096    VARCHAR2(500),
  c_nodename097    VARCHAR2(500),
  c_nodename098    VARCHAR2(500),
  c_nodename099    VARCHAR2(500),
  c_nodename100    VARCHAR2(500),
  c_nodename101    VARCHAR2(500),
  c_nodename102    VARCHAR2(500),
  c_nodename103    VARCHAR2(500),
  c_nodename104    VARCHAR2(500),
  c_nodename105    VARCHAR2(500),
  c_nodename106    VARCHAR2(500),
  c_nodename107    VARCHAR2(500),
  c_nodename108    VARCHAR2(500),
  c_nodename109    VARCHAR2(500),
  c_nodename110    VARCHAR2(500),
  c_nodename111    VARCHAR2(500),
  c_nodename112    VARCHAR2(500),
  c_nodename113    VARCHAR2(500),
  c_nodename114    VARCHAR2(500),
  c_nodename115    VARCHAR2(500),
  c_nodename116    VARCHAR2(500),
  c_nodename117    VARCHAR2(500),
  c_nodename118    VARCHAR2(500),
  c_nodename119    VARCHAR2(500),
  c_nodename120    VARCHAR2(500),
  c_rule_code    VARCHAR2(5),
  c_check_emp    VARCHAR2(9),
  f_data121    NUMBER(19,4),
  f_data122    NUMBER(19,4),
  f_data123    NUMBER(19,4),
  f_data124    NUMBER(19,4),
  f_data125    NUMBER(19,4),
  f_data126    NUMBER(19,4),
  f_data127    NUMBER(19,4),
  f_data128    NUMBER(19,4),
  f_data129    NUMBER(19,4),
  f_data130    NUMBER(19,4),
  f_data131    NUMBER(19,4),
  f_data132    NUMBER(19,4),
  f_data133    NUMBER(19,4),
  f_data134    NUMBER(19,4),
  f_data135    NUMBER(19,4),
  f_data136    NUMBER(19,4),
  f_data137    NUMBER(19,4),
  f_data138    NUMBER(19,4),
  f_data139    NUMBER(19,4),
  f_data140    NUMBER(19,4),
  f_data141    NUMBER(19,4),
  f_data142    NUMBER(19,4),
  f_data143    NUMBER(19,4),
  f_data144    NUMBER(19,4),
  f_data145    NUMBER(19,4),
  f_data146    NUMBER(19,4),
  f_data147    NUMBER(19,4),
  f_data148    NUMBER(19,4),
  f_data149    NUMBER(19,4),
  f_data150    NUMBER(19,4),
  f_data151    NUMBER(19,4),
  f_data152    NUMBER(19,4),
  f_data153    NUMBER(19,4),
  f_data154    NUMBER(19,4),
  f_data155    NUMBER(19,4),
  f_data156    NUMBER(19,4),
  f_data157    NUMBER(19,4),
  f_data158    NUMBER(19,4),
  f_data159    NUMBER(19,4),
  f_data160    NUMBER(19,4),
  f_data161    NUMBER(19,4),
  f_data162    NUMBER(19,4),
  f_data163    NUMBER(19,4),
  f_data164    NUMBER(19,4),
  f_data165    NUMBER(19,4),
  f_data166    NUMBER(19,4),
  f_data167    NUMBER(19,4),
  f_data168    NUMBER(19,4),
  f_data169    NUMBER(19,4),
  f_data170    NUMBER(19,4),
  c_nodename121    VARCHAR2(500),
  c_nodename122    VARCHAR2(500),
  c_nodename123    VARCHAR2(500),
  c_nodename124    VARCHAR2(500),
  c_nodename125    VARCHAR2(500),
  c_nodename126    VARCHAR2(500),
  c_nodename127    VARCHAR2(500),
  c_nodename128    VARCHAR2(500),
  c_nodename129    VARCHAR2(500),
  c_nodename130    VARCHAR2(500),
  c_nodename131    VARCHAR2(500),
  c_nodename132    VARCHAR2(500),
  c_nodename133    VARCHAR2(500),
  c_nodename134    VARCHAR2(500),
  c_nodename135    VARCHAR2(500),
  c_nodename136    VARCHAR2(500),
  c_nodename137    VARCHAR2(500),
  c_nodename138    VARCHAR2(500),
  c_nodename139    VARCHAR2(500),
  c_nodename140    VARCHAR2(500),
  c_nodename141    VARCHAR2(500),
  c_nodename142    VARCHAR2(500),
  c_nodename143    VARCHAR2(500),
  c_nodename144    VARCHAR2(500),
  c_nodename145    VARCHAR2(500),
  c_nodename146    VARCHAR2(500),
  c_nodename147    VARCHAR2(500),
  c_nodename148    VARCHAR2(500),
  c_nodename149    VARCHAR2(500),
  c_nodename150    VARCHAR2(500),
  c_nodename151    VARCHAR2(500),
  c_nodename152    VARCHAR2(500),
  c_nodename153    VARCHAR2(500),
  c_nodename154    VARCHAR2(500),
  c_nodename155    VARCHAR2(500),
  c_nodename156    VARCHAR2(500),
  c_nodename157    VARCHAR2(500),
  c_nodename158    VARCHAR2(500),
  c_nodename159    VARCHAR2(500),
  c_nodename160    VARCHAR2(500),
  c_nodename161    VARCHAR2(500),
  c_nodename162    VARCHAR2(500),
  c_nodename163    VARCHAR2(500),
  c_nodename164    VARCHAR2(500),
  c_nodename165    VARCHAR2(500),
  c_nodename166    VARCHAR2(500),
  c_nodename167    VARCHAR2(500),
  c_nodename168    VARCHAR2(500),
  c_nodename169    VARCHAR2(500),
  c_nodename170    VARCHAR2(500)
)';
end if;

if fc_IsTableExists('rep_balance_sheet_c') and not fc_Constraints_Exists('rep_balance_sheet_c','','P','0') then
execute immediate '
  alter table rep_balance_sheet_c
      add constraint PK_rep_balance_c_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_balance_c_ID') then
    execute immediate 'create sequence SEQ_rep_balance_c_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181119panrm26330(合并报表资产负债信息表)--end--



--20181119panrm26330(合并报表客户利润信息表)--start--
if not fc_IsTableExists('rep_income_statement_c') then
execute immediate 'create table rep_income_statement_c
(
  l_id                 NUMBER(11) not null,
  c_idu_flag           VARCHAR2(1),
  c_cino               VARCHAR2(20),
  c_repf_date          VARCHAR2(6),
  c_rep_template_code  VARCHAR2(8),
  c_comp_flag          VARCHAR2(1),
  c_employee_code      VARCHAR2(9),
  c_emp_area_code      VARCHAR2(10),
  c_mod_time           VARCHAR2(14),
  c_info               VARCHAR2(1000),
  f_data001    NUMBER(19,4),
  f_data002    NUMBER(19,4),
  f_data003    NUMBER(19,4),
  f_data004    NUMBER(19,4),
  f_data005    NUMBER(19,4),
  f_data006    NUMBER(19,4),
  f_data007    NUMBER(19,4),
  f_data008    NUMBER(19,4),
  f_data009    NUMBER(19,4),
  f_data010    NUMBER(19,4),
  f_data011    NUMBER(19,4),
  f_data012    NUMBER(19,4),
  f_data013    NUMBER(19,4),
  f_data014    NUMBER(19,4),
  f_data015    NUMBER(19,4),
  f_data016    NUMBER(19,4),
  f_data017    NUMBER(19,4),
  f_data018    NUMBER(19,4),
  f_data019    NUMBER(19,4),
  f_data020    NUMBER(19,4),
  f_data021    NUMBER(19,4),
  f_data022    NUMBER(19,4),
  f_data023    NUMBER(19,4),
  f_data024    NUMBER(19,4),
  f_data025    NUMBER(19,4),
  f_data026    NUMBER(19,4),
  f_data027    NUMBER(19,4),
  f_data028    NUMBER(19,4),
  f_data029    NUMBER(19,4),
  f_data030    NUMBER(19,4),
  f_data031    NUMBER(19,4),
  f_data032    NUMBER(19,4),
  f_data033    NUMBER(19,4),
  f_data034    NUMBER(19,4),
  f_data035    NUMBER(19,4),
  f_data036    NUMBER(19,4),
  f_data037    NUMBER(19,4),
  f_data038    NUMBER(19,4),
  f_data039    NUMBER(19,4),
  f_data040    NUMBER(19,4),
  f_data041    NUMBER(19,4),
  f_data042    NUMBER(19,4),
  f_data043    NUMBER(19,4),
  f_data044    NUMBER(19,4),
  f_data045    NUMBER(19,4),
  f_data046    NUMBER(19,4),
  f_data047    NUMBER(19,4),
  f_data048    NUMBER(19,4),
  f_data049    NUMBER(19,4),
  f_data050    NUMBER(19,4),
  f_data051    NUMBER(19,4),
  f_data052    NUMBER(19,4),
  f_data053    NUMBER(19,4),
  f_data054    NUMBER(19,4),
  f_data055    NUMBER(19,4),
  f_data056    NUMBER(19,4),
  f_data057    NUMBER(19,4),
  f_data058    NUMBER(19,4),
  f_data059    NUMBER(19,4),
  f_data060    NUMBER(19,4),
  f_data061    NUMBER(19,4),
  f_data062    NUMBER(19,4),
  f_data063    NUMBER(19,4),
  f_data064    NUMBER(19,4),
  f_data065    NUMBER(19,4),
  f_data066    NUMBER(19,4),
  f_data067    NUMBER(19,4),
  f_data068    NUMBER(19,4),
  f_data069    NUMBER(19,4),
  f_data070    NUMBER(19,4),
  f_data071    NUMBER(19,4),
  f_data072    NUMBER(19,4),
  f_data073    NUMBER(19,4),
  f_data074    NUMBER(19,4),
  f_data075    NUMBER(19,4),
  f_data076    NUMBER(19,4),
  f_data077    NUMBER(19,4),
  f_data078    NUMBER(19,4),
  f_data079    NUMBER(19,4),
  f_data080    NUMBER(19,4),
  f_data081    NUMBER(19,4),
  f_data082    NUMBER(19,4),
  f_data083    NUMBER(19,4),
  f_data084    NUMBER(19,4),
  f_data085    NUMBER(19,4),
  f_data086    NUMBER(19,4),
  f_data087    NUMBER(19,4),
  f_data088    NUMBER(19,4),
  f_data089    NUMBER(19,4),
  f_data090    NUMBER(19,4),
  f_data091    NUMBER(19,4),
  f_data092    NUMBER(19,4),
  f_data093    NUMBER(19,4),
  f_data094    NUMBER(19,4),
  f_data095    NUMBER(19,4),
  f_data096    NUMBER(19,4),
  f_data097    NUMBER(19,4),
  f_data098    NUMBER(19,4),
  f_data099    NUMBER(19,4),
  f_data100    NUMBER(19,4),
  f_data101    NUMBER(19,4),
  f_data102    NUMBER(19,4),
  f_data103    NUMBER(19,4),
  f_data104    NUMBER(19,4),
  f_data105    NUMBER(19,4),
  f_data106    NUMBER(19,4),
  f_data107    NUMBER(19,4),
  f_data108    NUMBER(19,4),
  f_data109    NUMBER(19,4),
  f_data110    NUMBER(19,4),
  f_data111    NUMBER(19,4),
  f_data112    NUMBER(19,4),
  f_data113    NUMBER(19,4),
  f_data114    NUMBER(19,4),
  f_data115    NUMBER(19,4),
  f_data116    NUMBER(19,4),
  f_data117    NUMBER(19,4),
  f_data118    NUMBER(19,4),
  f_data119    NUMBER(19,4),
  f_data120    NUMBER(19,4),
  c_nodename001    VARCHAR2(500),
  c_nodename002    VARCHAR2(500),
  c_nodename003    VARCHAR2(500),
  c_nodename004    VARCHAR2(500),
  c_nodename005    VARCHAR2(500),
  c_nodename006    VARCHAR2(500),
  c_nodename007    VARCHAR2(500),
  c_nodename008    VARCHAR2(500),
  c_nodename009    VARCHAR2(500),
  c_nodename010    VARCHAR2(500),
  c_nodename011    VARCHAR2(500),
  c_nodename012    VARCHAR2(500),
  c_nodename013    VARCHAR2(500),
  c_nodename014    VARCHAR2(500),
  c_nodename015    VARCHAR2(500),
  c_nodename016    VARCHAR2(500),
  c_nodename017    VARCHAR2(500),
  c_nodename018    VARCHAR2(500),
  c_nodename019    VARCHAR2(500),
  c_nodename020    VARCHAR2(500),
  c_nodename021    VARCHAR2(500),
  c_nodename022    VARCHAR2(500),
  c_nodename023    VARCHAR2(500),
  c_nodename024    VARCHAR2(500),
  c_nodename025    VARCHAR2(500),
  c_nodename026    VARCHAR2(500),
  c_nodename027    VARCHAR2(500),
  c_nodename028    VARCHAR2(500),
  c_nodename029    VARCHAR2(500),
  c_nodename030    VARCHAR2(500),
  c_nodename031    VARCHAR2(500),
  c_nodename032    VARCHAR2(500),
  c_nodename033    VARCHAR2(500),
  c_nodename034    VARCHAR2(500),
  c_nodename035    VARCHAR2(500),
  c_nodename036    VARCHAR2(500),
  c_nodename037    VARCHAR2(500),
  c_nodename038    VARCHAR2(500),
  c_nodename039    VARCHAR2(500),
  c_nodename040    VARCHAR2(500),
  c_nodename041    VARCHAR2(500),
  c_nodename042    VARCHAR2(500),
  c_nodename043    VARCHAR2(500),
  c_nodename044    VARCHAR2(500),
  c_nodename045    VARCHAR2(500),
  c_nodename046    VARCHAR2(500),
  c_nodename047    VARCHAR2(500),
  c_nodename048    VARCHAR2(500),
  c_nodename049    VARCHAR2(500),
  c_nodename050    VARCHAR2(500),
  c_nodename051    VARCHAR2(500),
  c_nodename052    VARCHAR2(500),
  c_nodename053    VARCHAR2(500),
  c_nodename054    VARCHAR2(500),
  c_nodename055    VARCHAR2(500),
  c_nodename056    VARCHAR2(500),
  c_nodename057    VARCHAR2(500),
  c_nodename058    VARCHAR2(500),
  c_nodename059    VARCHAR2(500),
  c_nodename060    VARCHAR2(500),
  c_nodename061    VARCHAR2(500),
  c_nodename062    VARCHAR2(500),
  c_nodename063    VARCHAR2(500),
  c_nodename064    VARCHAR2(500),
  c_nodename065    VARCHAR2(500),
  c_nodename066    VARCHAR2(500),
  c_nodename067    VARCHAR2(500),
  c_nodename068    VARCHAR2(500),
  c_nodename069    VARCHAR2(500),
  c_nodename070    VARCHAR2(500),
  c_nodename071    VARCHAR2(500),
  c_nodename072    VARCHAR2(500),
  c_nodename073    VARCHAR2(500),
  c_nodename074    VARCHAR2(500),
  c_nodename075    VARCHAR2(500),
  c_nodename076    VARCHAR2(500),
  c_nodename077    VARCHAR2(500),
  c_nodename078    VARCHAR2(500),
  c_nodename079    VARCHAR2(500),
  c_nodename080    VARCHAR2(500),
  c_nodename081    VARCHAR2(500),
  c_nodename082    VARCHAR2(500),
  c_nodename083    VARCHAR2(500),
  c_nodename084    VARCHAR2(500),
  c_nodename085    VARCHAR2(500),
  c_nodename086    VARCHAR2(500),
  c_nodename087    VARCHAR2(500),
  c_nodename088    VARCHAR2(500),
  c_nodename089    VARCHAR2(500),
  c_nodename090    VARCHAR2(500),
  c_nodename091    VARCHAR2(500),
  c_nodename092    VARCHAR2(500),
  c_nodename093    VARCHAR2(500),
  c_nodename094    VARCHAR2(500),
  c_nodename095    VARCHAR2(500),
  c_nodename096    VARCHAR2(500),
  c_nodename097    VARCHAR2(500),
  c_nodename098    VARCHAR2(500),
  c_nodename099    VARCHAR2(500),
  c_nodename100    VARCHAR2(500),
  c_nodename101    VARCHAR2(500),
  c_nodename102    VARCHAR2(500),
  c_nodename103    VARCHAR2(500),
  c_nodename104    VARCHAR2(500),
  c_nodename105    VARCHAR2(500),
  c_nodename106    VARCHAR2(500),
  c_nodename107    VARCHAR2(500),
  c_nodename108    VARCHAR2(500),
  c_nodename109    VARCHAR2(500),
  c_nodename110    VARCHAR2(500),
  c_nodename111    VARCHAR2(500),
  c_nodename112    VARCHAR2(500),
  c_nodename113    VARCHAR2(500),
  c_nodename114    VARCHAR2(500),
  c_nodename115    VARCHAR2(500),
  c_nodename116    VARCHAR2(500),
  c_nodename117    VARCHAR2(500),
  c_nodename118    VARCHAR2(500),
  c_nodename119    VARCHAR2(500),
  c_nodename120    VARCHAR2(500),
  c_rule_code    VARCHAR2(5),
  c_check_emp    VARCHAR2(9)
)';
end if;

if fc_IsTableExists('rep_income_statement_c') and not fc_Constraints_Exists('rep_income_statement_c','','P','0') then
execute immediate '
  alter table rep_income_statement_c
      add constraint PK_rep_income_c_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_income_c_ID') then
    execute immediate 'create sequence SEQ_rep_income_c_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181119panrm26330(合并报表客户利润信息表)--end--


--20181119panrm26330(合并报表客户现金流信息表)--start--
if not fc_IsTableExists('rep_cash_flow_c') then
execute immediate 'create table rep_cash_flow_c
(
  l_id                 NUMBER(11) not null,
  c_idu_flag           VARCHAR2(1),
  c_cino               VARCHAR2(20),
  c_repf_date          VARCHAR2(6),
  c_rep_template_code  VARCHAR2(8),
  c_comp_flag          VARCHAR2(1),
  c_employee_code      VARCHAR2(9),
  c_emp_area_code      VARCHAR2(10),
  c_mod_time           VARCHAR2(14),
  c_info               VARCHAR2(1000),
  c_repf_cate_code     VARCHAR2(5),
  f_data001    NUMBER(19,4),
  f_data002    NUMBER(19,4),
  f_data003    NUMBER(19,4),
  f_data004    NUMBER(19,4),
  f_data005    NUMBER(19,4),
  f_data006    NUMBER(19,4),
  f_data007    NUMBER(19,4),
  f_data008    NUMBER(19,4),
  f_data009    NUMBER(19,4),
  f_data010    NUMBER(19,4),
  f_data011    NUMBER(19,4),
  f_data012    NUMBER(19,4),
  f_data013    NUMBER(19,4),
  f_data014    NUMBER(19,4),
  f_data015    NUMBER(19,4),
  f_data016    NUMBER(19,4),
  f_data017    NUMBER(19,4),
  f_data018    NUMBER(19,4),
  f_data019    NUMBER(19,4),
  f_data020    NUMBER(19,4),
  f_data021    NUMBER(19,4),
  f_data022    NUMBER(19,4),
  f_data023    NUMBER(19,4),
  f_data024    NUMBER(19,4),
  f_data025    NUMBER(19,4),
  f_data026    NUMBER(19,4),
  f_data027    NUMBER(19,4),
  f_data028    NUMBER(19,4),
  f_data029    NUMBER(19,4),
  f_data030    NUMBER(19,4),
  f_data031    NUMBER(19,4),
  f_data032    NUMBER(19,4),
  f_data033    NUMBER(19,4),
  f_data034    NUMBER(19,4),
  f_data035    NUMBER(19,4),
  f_data036    NUMBER(19,4),
  f_data037    NUMBER(19,4),
  f_data038    NUMBER(19,4),
  f_data039    NUMBER(19,4),
  f_data040    NUMBER(19,4),
  f_data041    NUMBER(19,4),
  f_data042    NUMBER(19,4),
  f_data043    NUMBER(19,4),
  f_data044    NUMBER(19,4),
  f_data045    NUMBER(19,4),
  f_data046    NUMBER(19,4),
  f_data047    NUMBER(19,4),
  f_data048    NUMBER(19,4),
  f_data049    NUMBER(19,4),
  f_data050    NUMBER(19,4),
  f_data051    NUMBER(19,4),
  f_data052    NUMBER(19,4),
  f_data053    NUMBER(19,4),
  f_data054    NUMBER(19,4),
  f_data055    NUMBER(19,4),
  f_data056    NUMBER(19,4),
  f_data057    NUMBER(19,4),
  f_data058    NUMBER(19,4),
  f_data059    NUMBER(19,4),
  f_data060    NUMBER(19,4),
  f_data061    NUMBER(19,4),
  f_data062    NUMBER(19,4),
  f_data063    NUMBER(19,4),
  f_data064    NUMBER(19,4),
  f_data065    NUMBER(19,4),
  f_data066    NUMBER(19,4),
  f_data067    NUMBER(19,4),
  f_data068    NUMBER(19,4),
  f_data069    NUMBER(19,4),
  f_data070    NUMBER(19,4),
  f_data071    NUMBER(19,4),
  f_data072    NUMBER(19,4),
  f_data073    NUMBER(19,4),
  f_data074    NUMBER(19,4),
  f_data075    NUMBER(19,4),
  f_data076    NUMBER(19,4),
  f_data077    NUMBER(19,4),
  f_data078    NUMBER(19,4),
  f_data079    NUMBER(19,4),
  f_data080    NUMBER(19,4),
  f_data081    NUMBER(19,4),
  f_data082    NUMBER(19,4),
  f_data083    NUMBER(19,4),
  f_data084    NUMBER(19,4),
  f_data085    NUMBER(19,4),
  f_data086    NUMBER(19,4),
  f_data087    NUMBER(19,4),
  f_data088    NUMBER(19,4),
  f_data089    NUMBER(19,4),
  f_data090    NUMBER(19,4),
  f_data091    NUMBER(19,4),
  f_data092    NUMBER(19,4),
  f_data093    NUMBER(19,4),
  f_data094    NUMBER(19,4),
  f_data095    NUMBER(19,4),
  f_data096    NUMBER(19,4),
  f_data097    NUMBER(19,4),
  f_data098    NUMBER(19,4),
  f_data099    NUMBER(19,4),
  f_data100    NUMBER(19,4),
  f_data101    NUMBER(19,4),
  f_data102    NUMBER(19,4),
  f_data103    NUMBER(19,4),
  f_data104    NUMBER(19,4),
  f_data105    NUMBER(19,4),
  f_data106    NUMBER(19,4),
  f_data107    NUMBER(19,4),
  f_data108    NUMBER(19,4),
  f_data109    NUMBER(19,4),
  f_data110    NUMBER(19,4),
  f_data111    NUMBER(19,4),
  f_data112    NUMBER(19,4),
  f_data113    NUMBER(19,4),
  f_data114    NUMBER(19,4),
  f_data115    NUMBER(19,4),
  f_data116    NUMBER(19,4),
  f_data117    NUMBER(19,4),
  f_data118    NUMBER(19,4),
  f_data119    NUMBER(19,4),
  f_data120    NUMBER(19,4),
  c_nodename001    VARCHAR2(500),
  c_nodename002    VARCHAR2(500),
  c_nodename003    VARCHAR2(500),
  c_nodename004    VARCHAR2(500),
  c_nodename005    VARCHAR2(500),
  c_nodename006    VARCHAR2(500),
  c_nodename007    VARCHAR2(500),
  c_nodename008    VARCHAR2(500),
  c_nodename009    VARCHAR2(500),
  c_nodename010    VARCHAR2(500),
  c_nodename011    VARCHAR2(500),
  c_nodename012    VARCHAR2(500),
  c_nodename013    VARCHAR2(500),
  c_nodename014    VARCHAR2(500),
  c_nodename015    VARCHAR2(500),
  c_nodename016    VARCHAR2(500),
  c_nodename017    VARCHAR2(500),
  c_nodename018    VARCHAR2(500),
  c_nodename019    VARCHAR2(500),
  c_nodename020    VARCHAR2(500),
  c_nodename021    VARCHAR2(500),
  c_nodename022    VARCHAR2(500),
  c_nodename023    VARCHAR2(500),
  c_nodename024    VARCHAR2(500),
  c_nodename025    VARCHAR2(500),
  c_nodename026    VARCHAR2(500),
  c_nodename027    VARCHAR2(500),
  c_nodename028    VARCHAR2(500),
  c_nodename029    VARCHAR2(500),
  c_nodename030    VARCHAR2(500),
  c_nodename031    VARCHAR2(500),
  c_nodename032    VARCHAR2(500),
  c_nodename033    VARCHAR2(500),
  c_nodename034    VARCHAR2(500),
  c_nodename035    VARCHAR2(500),
  c_nodename036    VARCHAR2(500),
  c_nodename037    VARCHAR2(500),
  c_nodename038    VARCHAR2(500),
  c_nodename039    VARCHAR2(500),
  c_nodename040    VARCHAR2(500),
  c_nodename041    VARCHAR2(500),
  c_nodename042    VARCHAR2(500),
  c_nodename043    VARCHAR2(500),
  c_nodename044    VARCHAR2(500),
  c_nodename045    VARCHAR2(500),
  c_nodename046    VARCHAR2(500),
  c_nodename047    VARCHAR2(500),
  c_nodename048    VARCHAR2(500),
  c_nodename049    VARCHAR2(500),
  c_nodename050    VARCHAR2(500),
  c_nodename051    VARCHAR2(500),
  c_nodename052    VARCHAR2(500),
  c_nodename053    VARCHAR2(500),
  c_nodename054    VARCHAR2(500),
  c_nodename055    VARCHAR2(500),
  c_nodename056    VARCHAR2(500),
  c_nodename057    VARCHAR2(500),
  c_nodename058    VARCHAR2(500),
  c_nodename059    VARCHAR2(500),
  c_nodename060    VARCHAR2(500),
  c_nodename061    VARCHAR2(500),
  c_nodename062    VARCHAR2(500),
  c_nodename063    VARCHAR2(500),
  c_nodename064    VARCHAR2(500),
  c_nodename065    VARCHAR2(500),
  c_nodename066    VARCHAR2(500),
  c_nodename067    VARCHAR2(500),
  c_nodename068    VARCHAR2(500),
  c_nodename069    VARCHAR2(500),
  c_nodename070    VARCHAR2(500),
  c_nodename071    VARCHAR2(500),
  c_nodename072    VARCHAR2(500),
  c_nodename073    VARCHAR2(500),
  c_nodename074    VARCHAR2(500),
  c_nodename075    VARCHAR2(500),
  c_nodename076    VARCHAR2(500),
  c_nodename077    VARCHAR2(500),
  c_nodename078    VARCHAR2(500),
  c_nodename079    VARCHAR2(500),
  c_nodename080    VARCHAR2(500),
  c_nodename081    VARCHAR2(500),
  c_nodename082    VARCHAR2(500),
  c_nodename083    VARCHAR2(500),
  c_nodename084    VARCHAR2(500),
  c_nodename085    VARCHAR2(500),
  c_nodename086    VARCHAR2(500),
  c_nodename087    VARCHAR2(500),
  c_nodename088    VARCHAR2(500),
  c_nodename089    VARCHAR2(500),
  c_nodename090    VARCHAR2(500),
  c_nodename091    VARCHAR2(500),
  c_nodename092    VARCHAR2(500),
  c_nodename093    VARCHAR2(500),
  c_nodename094    VARCHAR2(500),
  c_nodename095    VARCHAR2(500),
  c_nodename096    VARCHAR2(500),
  c_nodename097    VARCHAR2(500),
  c_nodename098    VARCHAR2(500),
  c_nodename099    VARCHAR2(500),
  c_nodename100    VARCHAR2(500),
  c_nodename101    VARCHAR2(500),
  c_nodename102    VARCHAR2(500),
  c_nodename103    VARCHAR2(500),
  c_nodename104    VARCHAR2(500),
  c_nodename105    VARCHAR2(500),
  c_nodename106    VARCHAR2(500),
  c_nodename107    VARCHAR2(500),
  c_nodename108    VARCHAR2(500),
  c_nodename109    VARCHAR2(500),
  c_nodename110    VARCHAR2(500),
  c_nodename111    VARCHAR2(500),
  c_nodename112    VARCHAR2(500),
  c_nodename113    VARCHAR2(500),
  c_nodename114    VARCHAR2(500),
  c_nodename115    VARCHAR2(500),
  c_nodename116    VARCHAR2(500),
  c_nodename117    VARCHAR2(500),
  c_nodename118    VARCHAR2(500),
  c_nodename119    VARCHAR2(500),
  c_nodename120    VARCHAR2(500),
  c_rule_code    VARCHAR2(5),
  
  
  
  
  f_data121    NUMBER(19,4),
  f_data122    NUMBER(19,4),
  f_data123    NUMBER(19,4),
  f_data124    NUMBER(19,4),
  f_data125    NUMBER(19,4),
  f_data126    NUMBER(19,4),
  f_data127    NUMBER(19,4),
  f_data128    NUMBER(19,4),
  f_data129    NUMBER(19,4),
  f_data130    NUMBER(19,4),
  f_data131    NUMBER(19,4),
  f_data132    NUMBER(19,4),
  f_data133    NUMBER(19,4),
  f_data134    NUMBER(19,4),
  f_data135    NUMBER(19,4),
  f_data136    NUMBER(19,4),
  f_data137    NUMBER(19,4),
  f_data138    NUMBER(19,4),
  f_data139    NUMBER(19,4),
  f_data140    NUMBER(19,4),
  f_data141    NUMBER(19,4),
  f_data142    NUMBER(19,4),
  f_data143    NUMBER(19,4),
  f_data144    NUMBER(19,4),
  f_data145    NUMBER(19,4),
  f_data146    NUMBER(19,4),
  f_data147    NUMBER(19,4),
  f_data148    NUMBER(19,4),
  f_data149    NUMBER(19,4),
  f_data150    NUMBER(19,4),
  f_data151    NUMBER(19,4),
  f_data152    NUMBER(19,4),
  f_data153    NUMBER(19,4),
  f_data154    NUMBER(19,4),
  f_data155    NUMBER(19,4),
  f_data156    NUMBER(19,4),
  f_data157    NUMBER(19,4),
  f_data158    NUMBER(19,4),
  f_data159    NUMBER(19,4),
  f_data160    NUMBER(19,4),
  f_data161    NUMBER(19,4),
  f_data162    NUMBER(19,4),
  f_data163    NUMBER(19,4),
  f_data164    NUMBER(19,4),
  f_data165    NUMBER(19,4),
  f_data166    NUMBER(19,4),
  f_data167    NUMBER(19,4),
  f_data168    NUMBER(19,4),
  f_data169    NUMBER(19,4),
  f_data170    NUMBER(19,4),
  f_data171    NUMBER(19,4),
  f_data172    NUMBER(19,4),
  f_data173    NUMBER(19,4),
  f_data174    NUMBER(19,4),
  f_data175    NUMBER(19,4),
  f_data176    NUMBER(19,4),
  f_data177    NUMBER(19,4),
  f_data178    NUMBER(19,4),
  f_data179    NUMBER(19,4),
  f_data180    NUMBER(19,4),
  c_nodename121    VARCHAR2(500),
  c_nodename122    VARCHAR2(500),
  c_nodename123    VARCHAR2(500),
  c_nodename124    VARCHAR2(500),
  c_nodename125    VARCHAR2(500),
  c_nodename126    VARCHAR2(500),
  c_nodename127    VARCHAR2(500),
  c_nodename128    VARCHAR2(500),
  c_nodename129    VARCHAR2(500),
  c_nodename130    VARCHAR2(500),
  c_nodename131    VARCHAR2(500),
  c_nodename132    VARCHAR2(500),
  c_nodename133    VARCHAR2(500),
  c_nodename134    VARCHAR2(500),
  c_nodename135    VARCHAR2(500),
  c_nodename136    VARCHAR2(500),
  c_nodename137    VARCHAR2(500),
  c_nodename138    VARCHAR2(500),
  c_nodename139    VARCHAR2(500),
  c_nodename140    VARCHAR2(500),
  c_nodename141    VARCHAR2(500),
  c_nodename142    VARCHAR2(500),
  c_nodename143    VARCHAR2(500),
  c_nodename144    VARCHAR2(500),
  c_nodename145    VARCHAR2(500),
  c_nodename146    VARCHAR2(500),
  c_nodename147    VARCHAR2(500),
  c_nodename148    VARCHAR2(500),
  c_nodename149    VARCHAR2(500),
  c_nodename150    VARCHAR2(500),
  c_nodename151    VARCHAR2(500),
  c_nodename152    VARCHAR2(500),
  c_nodename153    VARCHAR2(500),
  c_nodename154    VARCHAR2(500),
  c_nodename155    VARCHAR2(500),
  c_nodename156    VARCHAR2(500),
  c_nodename157    VARCHAR2(500),
  c_nodename158    VARCHAR2(500),
  c_nodename159    VARCHAR2(500),
  c_nodename160    VARCHAR2(500),
  c_nodename161    VARCHAR2(500),
  c_nodename162    VARCHAR2(500),
  c_nodename163    VARCHAR2(500),
  c_nodename164    VARCHAR2(500),
  c_nodename165    VARCHAR2(500),
  c_nodename166    VARCHAR2(500),
  c_nodename167    VARCHAR2(500),
  c_nodename168    VARCHAR2(500),
  c_nodename169    VARCHAR2(500),
  c_nodename170    VARCHAR2(500),
  c_nodename171    VARCHAR2(500),
  c_nodename172    VARCHAR2(500),
  c_nodename173    VARCHAR2(500),
  c_nodename174    VARCHAR2(500),
  c_nodename175    VARCHAR2(500),
  c_nodename176    VARCHAR2(500),
  c_nodename177    VARCHAR2(500),
  c_nodename178    VARCHAR2(500),
  c_nodename179    VARCHAR2(500),
  c_nodename180    VARCHAR2(500),
  c_check_emp    VARCHAR2(9)
)';
end if;

if fc_IsTableExists('rep_cash_flow_c') and not fc_Constraints_Exists('rep_cash_flow_c','','P','0') then
execute immediate '
  alter table rep_cash_flow_c
      add constraint PK_rep_cashflow_c_id primary key (L_ID)';
end if;
if not fc_IsSeqExists('SEQ_rep_cashflow_c_ID') then
    execute immediate 'create sequence SEQ_rep_cashflow_c_ID
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;
--20181119panrm26330(合并报表客户现金流信息表)--end--
--20181120luheng24337(资产包导入抵押人、保证人中间表添加relationcode字段) --begin--
if fc_IsTableExists('T_INT_MORTGAGOR_INFO') and not fc_IsColExists('T_INT_MORTGAGOR_INFO','C_RELATIONCODE') then
execute immediate 'alter table T_INT_MORTGAGOR_INFO add C_RELATIONCODE varchar2(60)';
end if;
if fc_IsTableExists('T_INT_GUARANTEER_INFO') and not fc_IsColExists('T_INT_GUARANTEER_INFO','C_RELATIONCODE') then
execute immediate 'alter table T_INT_GUARANTEER_INFO add C_RELATIONCODE varchar2(60)';
end if;
--20181120luheng24337(资产包导入抵押人、保证人中间表添加relationcode字段) --end--

--[M201811170124]20181121yuxd25447(新增股权资产上市审批表)--star---
if not fc_IsTableExists('TEQUITY_LISTING_APPROVE') then
execute immediate 'create table TEQUITY_LISTING_APPROVE
(
  l_id                 NUMBER not null,
  l_equityassetno      NUMBER,
  c_enterprise         VARCHAR2(48),
  c_new_enterprise     VARCHAR2(49),
  c_markettype         VARCHAR2(4),
  c_stockcode          VARCHAR2(255),
  c_stockname          VARCHAR2(255),
  l_stockamount        NUMBER,
  f_equityratio        NUMBER(19,6),
  d_releasedate        DATE,
  c_memo               VARCHAR2(3000),
  c_process_instanceid VARCHAR2(100),
  c_creator_id         VARCHAR2(100),
  c_creator            VARCHAR2(100),
  d_created_time       DATE,
  c_last_updator_id    VARCHAR2(100),
  c_last_updator       VARCHAR2(100),
  d_last_updated_time  DATE,
  c_projectname        VARCHAR2(255)
)';
end if;
if fc_IsTableExists('TEQUITY_LISTING_APPROVE') and not fc_Constraints_Exists('TEQUITY_LISTING_APPROVE','','P','0') then
execute immediate '
  alter table TEQUITY_LISTING_APPROVE
  add constraint PK_TEQUITY_LISTING_APPROVE primary key (L_ID)
  using index ';
end if;
if not fc_IsSeqExists('SEQ_EQUITYLISTINGAPPROVENO') then
    execute immediate 'create sequence SEQ_EQUITYLISTINGAPPROVENO
      minvalue 1000
      maxvalue 999999
      start with 10001
      increment by 1
      cache 20';
end if;

if not fc_IsColExists('TEQUITY_ASSET_DETAIL','c_enterprise') then
    execute immediate 'alter table TEQUITY_ASSET_DETAIL add c_enterprise varchar2(255)';
end if;
if not fc_IsColExists('TEQUITY_ASSET_DETAIL','c_changetype') then
    execute immediate 'alter table TEQUITY_ASSET_DETAIL add c_changetype varchar2(10)';
end if;
if not fc_IsColExists('TEQUITY_ASSET_DETAIL','process_instanceid') then
    execute immediate 'alter table TEQUITY_ASSET_DETAIL add process_instanceid varchar2(255)';
end if;
if not fc_IsColExists('tequity_assets_info','c_newholdenterprise') then
    execute immediate 'alter table tequity_assets_info add c_newholdenterprise varchar2(255)';
end if;

--20181121yuxd25447(新增股权资产上市审批表)--end---

--20181121 yuanlh21739 导入中间表统一补充C_SOURCE字段--start
if fc_IsTableExists('T_INT_ASSET_CREDITORCONTRACT') and not fc_IsColExists('T_INT_ASSET_CREDITORCONTRACT', 'C_SOURCE') then
  execute immediate 'alter table T_INT_ASSET_CREDITORCONTRACT add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_ASSET_GUARANTEECONTRACT') and not fc_IsColExists('T_INT_ASSET_GUARANTEECONTRACT', 'C_SOURCE') then
  execute immediate 'alter table T_INT_ASSET_GUARANTEECONTRACT add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_ASSET_LOANACCOUNT_INFO') and not fc_IsColExists('T_INT_ASSET_LOANACCOUNT_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_ASSET_LOANACCOUNT_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_ASSET_MORTGAGECONTRACT') and not fc_IsColExists('T_INT_ASSET_MORTGAGECONTRACT', 'C_SOURCE') then
  execute immediate 'alter table T_INT_ASSET_MORTGAGECONTRACT add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_ASSET_PAWN_INFO') and not fc_IsColExists('T_INT_ASSET_PAWN_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_ASSET_PAWN_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_BANKRUPTCY_INFO') and not fc_IsColExists('T_INT_BANKRUPTCY_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_BANKRUPTCY_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_FINANCIAL_ARRIVAL') and not fc_IsColExists('T_INT_FINANCIAL_ARRIVAL', 'C_SOURCE') then
  execute immediate 'alter table T_INT_FINANCIAL_ARRIVAL add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_INVEST_CONTRACT') and not fc_IsColExists('T_INT_INVEST_CONTRACT', 'C_SOURCE') then
  execute immediate 'alter table T_INT_INVEST_CONTRACT add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_LAWSUIT_EXECUTION') and not fc_IsColExists('T_INT_LAWSUIT_EXECUTION', 'C_SOURCE') then
  execute immediate 'alter table T_INT_LAWSUIT_EXECUTION add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_LAWSUIT_INFO') and not fc_IsColExists('T_INT_LAWSUIT_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_LAWSUIT_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_PROJECT_INFO') and not fc_IsColExists('T_INT_PROJECT_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_PROJECT_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_SEIZED_INFO') and not fc_IsColExists('T_INT_SEIZED_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_SEIZED_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_SUBJECT_INFO') and not fc_IsColExists('T_INT_SUBJECT_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_SUBJECT_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_AGENCY_INFO') and not fc_IsColExists('T_INT_AGENCY_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_AGENCY_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_CAPITAL_PLAN') and not fc_IsColExists('T_INT_CAPITAL_PLAN', 'C_SOURCE') then
  execute immediate 'alter table T_INT_CAPITAL_PLAN add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_CAPITAL_BANK_CREDIT') and not fc_IsColExists('T_INT_CAPITAL_BANK_CREDIT', 'C_SOURCE') then
  execute immediate 'alter table T_INT_CAPITAL_BANK_CREDIT add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_CAPITAL_FUNDS_USE') and not fc_IsColExists('T_INT_CAPITAL_FUNDS_USE', 'C_SOURCE') then
  execute immediate 'alter table T_INT_CAPITAL_FUNDS_USE add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_CAPITAL_ACCOUNT_BALANCE') and not fc_IsColExists('T_INT_CAPITAL_ACCOUNT_BALANCE', 'C_SOURCE') then
  execute immediate 'alter table T_INT_CAPITAL_ACCOUNT_BALANCE add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_MORTGAGOR_INFO') and not fc_IsColExists('T_INT_MORTGAGOR_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_MORTGAGOR_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_GUARANTEER_INFO') and not fc_IsColExists('T_INT_GUARANTEER_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_GUARANTEER_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_CUSTOMER_INFO') and not fc_IsColExists('T_INT_CUSTOMER_INFO', 'C_SOURCE') then
  execute immediate 'alter table T_INT_CUSTOMER_INFO add C_SOURCE varchar2(64)';
end if;
if fc_IsTableExists('T_INT_PRE_REPAY_PLAN') and not fc_IsColExists('T_INT_PRE_REPAY_PLAN', 'C_SOURCE') then
  execute immediate 'alter table T_INT_PRE_REPAY_PLAN add C_SOURCE varchar2(64)';
end if;
--20181121 yuanlh21739 导入中间表统一补充C_SOURCE字段--end

--20181122 yuanlh21739 估值记录表扩展流程实例ID长度为128--start
if fc_isdataexists('select count(1) from user_tab_columns where table_name = upper(''T_VALUATION_LOG'') and column_name = ''C_PROCESS_INSTANCE_ID'' and DATA_TYPE =''VARCHAR2'' and data_length < 128') then
  execute immediate 'alter table T_VALUATION_LOG modify c_process_instance_id VARCHAR2(128)';
end if;
--20181122 yuanlh21739 估值记录表扩展流程实例ID长度为128--end

--20181123panrm26330(gcms客户基础信息表增加客户状态字段)--start--
if fc_IsTableExists('CID_CUSTOM_INFO') and not fc_IsColExists('CID_CUSTOM_INFO', 'c_status') then
  execute immediate 'alter table CID_CUSTOM_INFO add c_status varchar2(5)';
end if;
--20181123panrm26330(gcms客户基础信息表增加客户状态字段)--end--

--20181127dutao23901(浙商到账确认新增运营备注字段)--start--
if fc_IsTableExists('TREPAY_CONFIRM') and not fc_IsColExists('TREPAY_CONFIRM', 'c_operationnote') then
  execute immediate 'alter table TREPAY_CONFIRM add c_operationnote varchar2(3000)';
end if;
--20181127dutao23901(浙商到账确认新增运营备注字段)--end--

--20181128wansy24151 --start
-- 付款配置表加主键
if fc_IsTableExists('TREPAY_INFO_CONFIG') and not fc_Constraints_Exists('TREPAY_INFO_CONFIG', 'PK_REPAY_INFO_CONFIG', 'P', '0') then
execute immediate '
	alter table TREPAY_INFO_CONFIG
	add constraint PK_REPAY_INFO_CONFIG primary key (l_id)
	using index ';
end if;

--费用类支出事项与费用子项目关系表 
if not fc_IsTableExists('trepay_info_expense_relation') then
execute immediate '
create table trepay_info_expense_relation
(
  l_id       NUMBER(10)   not null,
  c_code     VARCHAR2(10),
  c_sub_code    VARCHAR2(10)
)';
end if;

if fc_IsTableExists('trepay_info_expense_relation') and not fc_Constraints_Exists('trepay_info_expense_relation', 'PK_REPAY_INFO_EXPENSE_RELATION', 'P', '0') then
execute immediate '
  alter table trepay_info_expense_relation
  add constraint PK_REPAY_INFO_EXPENSE_RELATION primary key (l_id)
  using index ';
end if;

-- 报销明细 c_type字段加长
if fc_IsColExists('treimburse_detail','c_type') then   
  execute immediate 'alter table treimburse_detail modify c_type VARCHAR2(10)';
end if;

--20181128wansy24151 -- end
--20181128panjq24368 借款人新增流水字段 -- Start-
   if not fc_IsColExists('TASSET_LOANACCOUNT_INFO','L_SERIALNO') then
     execute immediate 'alter table TASSET_LOANACCOUNT_INFO add L_SERIALNO NUMBER';
   end if;
--20181128panjq24368 借款人新增流水字段 -- End-

commit;
end;
/
set define on;

