update tproject_template_field  ttf set ttf.c_comptype = '9' where ttf.c_fieldcode = 'projectphase' and ttf.c_modelcode in ('finanServiceProjectManage','assetPacketManagePro','investProjectManage','mixPacketManage');

update tproject_template_field  ttf set ttf.c_comptype = '9',ttf.c_valuebound = 'PROJECT_PHASE' where ttf.c_fieldcode = 'projectphase' and ttf.c_modelcode = 'reorganizationProjectManager';
