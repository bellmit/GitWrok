--修改选聘明细表tagency_apply_detail
create table tagency_apply_detail_bak as select * from tagency_apply_detail;
update tagency_apply_detail t set t.l_price = ''; 
alter table TAGENCY_APPLY_DETAIL modify L_PRICE VARCHAR2(255);
update tagency_apply_detail t set t.l_price = (select tt.l_price from tagency_apply_detail_bak tt where tt.l_dtlid = t.l_dtlid);
drop table tagency_apply_detail_bak;

--修改选聘结果表tagency_apply_result
create table tagency_apply_result_bak as select * from tagency_apply_result;
update tagency_apply_result t set t.l_price = '';
alter table TAGENCY_APPLY_RESULT modify L_PRICE VARCHAR2(255);
update tagency_apply_result t set t.l_price = (select tt.l_price from tagency_apply_result_bak tt where tt.l_resultid = t.l_resultid);
drop table tagency_apply_result_bak;