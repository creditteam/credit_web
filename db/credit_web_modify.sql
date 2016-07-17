alter table cr_credit modify disposal_type varchar(16);
alter table cr_credit modify debt_proof varchar(256);
/***/
alter table cr_reward modify images varchar(256);

alter table cr_file_manager change dowload_url download_url varchar(128);