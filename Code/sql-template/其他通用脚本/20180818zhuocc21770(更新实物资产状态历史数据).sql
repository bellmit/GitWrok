--未收购(未交割)
update tinvest_collateral t set t.c_realassetstatus = '01' where t.c_realassetstatus = '0';
--已收购(已交割)
update tinvest_collateral t set t.c_realassetstatus = '02' where t.c_realassetstatus = '1';
--处置完毕(已转让)
update tinvest_collateral t set t.c_realassetstatus = '05' where t.c_realassetstatus = '2';