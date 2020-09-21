--借款合同、保证合同、抵押合同中： 主合同编号字段：vhar2  255 
update TGENERAL_IMPORT_ELEMENT_INFO t set t.c_elementbounds='255' WHERE t.c_elementcode in
('AMC_ASSETPACKET_001_1_LOANANO','AMC_ASSETPACKET_001_2_loanno','AMC_ASSETPACKET_001_3_LOANANO','AMC_DATATRANSPLANTATION_001_3_LOANANO','AMC_DATATRANSPLANTATION_001_4_loanno','AMC_DATATRANSPLANTATION_001_5_LOANANO');
--抵质押物信息中-抵质押物名称字段： varchar2     255
update TGENERAL_IMPORT_ELEMENT_INFO t set t.c_elementbounds='255' WHERE t.c_elementcode in
('AMC_DATATRANSPLANTATION_001_6_pawnname','AMC_ASSETPACKET_001_4_pawnname');
--保证合同中：保证合同编码字段,抵押合同中：抵押合同编号字段 改为  varchar2    255
update TGENERAL_IMPORT_ELEMENT_INFO t set t.c_elementbounds='255' WHERE t.c_elementcode in
('AMC_ASSETPACKET_001_3_mortgagecontractno','AMC_ASSETPACKET_001_4_MORTGAGECONTRACTNO','AMC_DATATRANSPLANTATION_001_6_MORTGAGECONTRACTNO','AMC_ASSETPACKET_001_2_guaranteecontractno','AMC_DATATRANSPLANTATION_001_4_guaranteecontractno');
