alter table tinvest_fundvary_appertain add f_deposit NUMBER(19,9);
alter table tinvest_fundvary_appertain add f_ofeesetdeposit NUMBER(19,9);

comment on column tinvest_fundvary_appertain.f_deposit is '已收保证金';
comment on column tinvest_fundvary_appertain.f_ofeesetdeposit is '清收保证金';