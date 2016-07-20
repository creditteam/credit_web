/** cr_credit table change*/
alter table cr_credit modify disposal_type varchar(16);
alter table cr_credit modify debt_proof varchar(256);
alter table cr_credit add COLUMN credit_type smallint(3)COMMENT '债权类型(1债权处置，2债权转让)';
/** cr_reward table change*/
alter table cr_reward modify images varchar(256);
/** cr_file_manager table change*/
alter table cr_file_manager change dowload_url download_url varchar(128);

