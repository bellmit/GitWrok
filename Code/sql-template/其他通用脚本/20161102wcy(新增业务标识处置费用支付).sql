insert into tinvest_busiflag (C_BUSIFLAG, C_BUSINAME, C_BUSIKIND, C_INVESTTYPE, C_INVESTWAY, L_FUNDDIR, L_STOCKDIR, PROCESS_ID, C_EXTCONFIG, C_TEXTTYPE)
values ('30015', '费用主动支付(处置)', '4', null, null, -1, 0, null, '600,601,602', null);

update tinvest_busiflag t set t.c_extconfig = '600,601,602' where t.c_busiflag='30003';