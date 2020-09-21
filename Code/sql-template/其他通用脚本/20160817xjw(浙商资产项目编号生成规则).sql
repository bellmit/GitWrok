--浙商资产项目编号生成规则
update tsys_parameter t set t.param_value = '24', t.param_desc =  '0数字1字母2 已不使用3 中诚信托4 北方信托/新华5 渤海信托6 吉林信托 7 长安信托8 华澳信托 9长城新盛 10道富基金
11大成创新资本12万家共赢资产24浙商资产' where t.param_code = 'prjcodeGenerateType';

--增加索引
create index IDX_LOAN_PROCODE on TASSET_LOANACCOUNT_INFO (c_projectcode asc);
create index IDX_CREDIT_LOANCODE on tasset_creditorcontract (c_loanaccountcode asc);
create index IDX_PAWN_MORTCODE on tasset_pawn_info (c_mortgagecontractcode asc);
create index IDX_CREDITREALTION_CODES on tasset_creditor_relation (c_creditorcontractcode asc,c_guaranteecontractcode asc);