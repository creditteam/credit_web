/** cr_credit table change*/
alter table cr_credit modify disposal_type varchar(16);
alter table cr_credit modify debt_proof varchar(256);
alter table cr_credit add COLUMN credit_type smallint(3)COMMENT '债权类型(1债权处置，2债权转让)';
/** cr_reward table change*/
alter table cr_reward modify images varchar(256);
/** cr_file_manager table change*/
alter table cr_file_manager change dowload_url download_url varchar(128);
/**---2016-7-24---**/
ALTER TABLE `cr_reward`
MODIFY COLUMN `images`  varchar(1024);

ALTER TABLE `cr_credit`
MODIFY COLUMN `debt_proof`  varchar(1024);

/**-----2016-07-25-----**/
ALTER TABLE `cr_blog`
ADD COLUMN `blog_source`  varchar(60) NULL COMMENT '来源' AFTER `create_time`,
ADD COLUMN `blog_author`  varchar(60) NULL COMMENT '作者' AFTER `blog_source`;
