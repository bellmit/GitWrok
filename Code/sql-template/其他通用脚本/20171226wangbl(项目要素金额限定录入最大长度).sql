--项目要素金额限定录入最大长度
update tproject_factor_info t
   set t.l_maxlength = '13'
 where t.c_factorcode in ('tproject_info_corpusamount',
                          'tproject_info_debtamount',
                          'tproject_info_assetinterest',
                          'tproject_info_assistpayfee',
                          'tproject_info_requiredfund1',
                          'tproject_info_defaultinterest',
                          'tproject_info_othermoney',
                          'requiredfund',
                          'tproject_info_trustscale',
                          'tproject_info_destineCost_zgjh',
                          'tproject_info_trustscale_tg');
update tproject_factor_info t
   set t.l_maxlength = '12'
 where t.c_factorcode in
       ('tproject_info_honorcustomerincome_zgjh',
        'tproject_info_custodyrates',
        'tproject_info_custodyrates_ts');