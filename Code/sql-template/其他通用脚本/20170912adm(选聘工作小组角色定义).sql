delete tsys_parameter where PARAM_CODE ='lawyerRoleCode' ;

insert into tsys_parameter (PARAM_CODE, REL_ORG, KIND_CODE, PARAM_NAME, PARAM_VALUE, LIFECYCLE, PLATFORM, PARAM_DESC, EXT_FLAG, PARAM_REGEX)
values ('lawyerRoleCode', '0_000000', 'PARAM_PM', '律所选聘流程工作小组', '4080', null, '0', '律所选聘流程工作小组
', null, null);

commit;
