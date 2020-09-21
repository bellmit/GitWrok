truncate table tagency_evaluation_item;
insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090701', '人员素质及工作能力', 10, 1, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090702', '工作态度、工作主动性', 10, 2, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090703', '能否按期完成规定的工作任务', 15, 3, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090704', '工作质量（差错率）', 40, 4, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090705', '报告是否规范、是否符合要求', 5, 5, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090706', '增值服务（对公司管理建议是否可行）', 5, 6, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

insert into tagency_evaluation_item (C_EVALITEMID, C_EVALITEMNAME, C_EVALITEMSCORE, F_EVALORDER, D_CREATEDTIME, C_ISVALID)
values ('2017090707', '其它', 5, 7, to_date('07-09-2017', 'dd-mm-yyyy'), '1');

commit;
