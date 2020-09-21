begin
if not fc_isexistsprojectfactorrule('cbms_zqje_1') then
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_zqje_1', 'ת��ծȨ���ɱ༭���Զ�����', 'change', 'disabledFactor', '''tinvest_contract_rdebtamount'',true', '2', null, '1', null);
end if;

if not fc_isexistsprojectfactorrule('cbms_zqje_2') then
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_zqje_2', 'ת��ծȨ���=ת��ծȨ����+ת��ת��ծȨ��Ϣ+ת�ɴ������', 'change', 'exp', '[tinvest_contract_rdebtamount]=F[(E[tinvest_contract_debtamount]E?0:[tinvest_contract_debtamount])+(E[tinvest_contract_debtinterest]E?0:[tinvest_contract_debtinterest])+(E[tinvest_contract_disbursementfee_zg]E?0:[tinvest_contract_disbursementfee_zg])]F', '3', null, '1', null);
end if;

if not fc_isexistsprojectfactorrule('cbms_zqje_1_cj') then
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_zqje_1_cj', '���ծȨ���ɱ༭���Զ�����', 'change', 'disabledFactor', '''tinvest_contract_rdebtamount_cj'',true', '2', null, '1', null);
end if;

if not fc_isexistsprojectfactorrule('cbms_zqje_2_cj') then
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_zqje_2_cj', '���ծȨ���=���ծȨ����+���ת��ծȨ��Ϣ+����������+����������', 'change', 'exp', '[tinvest_contract_rdebtamount_cj]=F[(E[tinvest_contract_debtamount_cj]E?0:[tinvest_contract_debtamount_cj])+(E[tinvest_contract_debtinterest_cj]E?0:[tinvest_contract_debtinterest_cj])+(E[tinvest_contract_guaranteeamount]E?0:[tinvest_contract_guaranteeamount])+(E[tinvest_contract_disbursementfee_cj]E?0:[tinvest_contract_disbursementfee_cj])]F', '3', null, '1', null);
end if;

if not fc_isexistsprojectfactorrule('cbms_zqje_1_zr') then
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_zqje_1_zr', '���ծȨ���ɱ༭���Զ�����', 'change', 'disabledFactor', '''tinvest_contract_rdebtamount_zr'',true', '2', null, '1', null);
end if;

if not fc_isexistsprojectfactorrule('cbms_zqje_2_zr') then
insert into tproject_factor_rule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cbms_zqje_2_zr', 'ת��ծȨ���=ת��ծȨ����+ת��ת��ծȨ��Ϣ+����������+ת�ô������', 'change', 'exp', '[tinvest_contract_rdebtamount_zr]=F[(E[tinvest_contract_debtamount_zr]E?0:[tinvest_contract_debtamount_zr])+(E[tinvest_contract_debtinterest_zr]E?0:[tinvest_contract_debtinterest_zr])+(E[tinvest_contract_guaranteeamount]E?0:[tinvest_contract_guaranteeamount])+(E[tinvest_contract_disbursementfee_zr]E?0:[tinvest_contract_disbursementfee_zr])]F', '3', null, '1', null);
end if;
end;
/