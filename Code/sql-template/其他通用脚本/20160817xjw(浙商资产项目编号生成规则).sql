--�����ʲ���Ŀ������ɹ���
update tsys_parameter t set t.param_value = '24', t.param_desc =  '0����1��ĸ2 �Ѳ�ʹ��3 �г�����4 ��������/�»�5 ��������6 �������� 7 ��������8 �������� 9������ʢ 10��������
11��ɴ����ʱ�12��ҹ�Ӯ�ʲ�24�����ʲ�' where t.param_code = 'prjcodeGenerateType';

--��������
create index IDX_LOAN_PROCODE on TASSET_LOANACCOUNT_INFO (c_projectcode asc);
create index IDX_CREDIT_LOANCODE on tasset_creditorcontract (c_loanaccountcode asc);
create index IDX_PAWN_MORTCODE on tasset_pawn_info (c_mortgagecontractcode asc);
create index IDX_CREDITREALTION_CODES on tasset_creditor_relation (c_creditorcontractcode asc,c_guaranteecontractcode asc);