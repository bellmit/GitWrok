update tproject_factor_info tf set tf.c_copyfromout='tproject_info_projectname' where tf.c_factorcode='mpcname';
update tproject_factor_info tf set tf.c_copyfromout='tproject_info_mpccode' where tf.c_factorcode='mpccode';
update tproject_factor_info tf set tf.c_copyfromout='tproject_info_depcode' where tf.c_factorcode='mpcdptid';
update tproject_factor_info tf set tf.c_copyfromout='tproject_info_investmentmanagerA' where tf.c_factorcode='mpctrustmanager';
update tproject_factor_info tf set tf.c_copyfromout='projectteammembers' where tf.c_factorcode='mpcsponsor';
