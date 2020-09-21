declare
begin
if not fc_IsDataExists('select count(*) from tflowformrule t where t.C_RULEID = ''ae037f516baa2f65c4801217c3a2658b''') then
	insert into tflowformrule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('ae037f516baa2f65c4801217c3a2658b', '保证金金额和保证金付款时间关系', 'change', 'tipRule', '(([depositmoney] != '''' && [depositpaymenttime] =='''')||([depositmoney] == '''' && [depositpaymenttime] !='''')),''保证金金额和保证金付款时间同时填写或不填!'',''depositmoney,depositpaymenttime''', '4', 'meetingApprove', '1', '');
end if;

if not fc_IsDataExists('select count(*) from tflowformrule t where t.C_RULEID = ''cef5e6bfd2aa8a652578bb0e0a492bf5''') then
	insert into tflowformrule (C_RULEID, C_RULENAME, C_EVENTTYPE, C_FUNNAME, C_FUNARGS, C_ISINITEXE, C_TEMPCODE, C_ISUSE, C_ISNOTEXERULE)
values ('cef5e6bfd2aa8a652578bb0e0a492bf5', '保证金金额和保证金付款时间关系', 'change', 'tipRule', '(([depositmoney] != '''' && [depositpaymenttime] =='''')||([depositmoney] == '''' && [depositpaymenttime] !='''')),''保证金金额和保证金付款时间同时填写或不填!'',''depositmoney,depositpaymenttime''', '5', 'meetingApprove', '1', '');
end if;

update tflowformdesign t
    set t.c_ruleid = 'ae037f516baa2f65c4801217c3a2658b,cef5e6bfd2aa8a652578bb0e0a492bf5'
 where t.process_id = 'meetingApprove'
    and t.c_fieldcode = 'depositmoney';
update tflowformdesign t
    set t.c_ruleid = 'ae037f516baa2f65c4801217c3a2658b,cef5e6bfd2aa8a652578bb0e0a492bf5'
 where t.process_id = 'meetingApprove'
    and t.c_fieldcode = 'depositpaymenttime';

end;
/