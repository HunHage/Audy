CREATE TABLE tbl_user_config (
    pk_user_id bigint NOT NULL UNIQUE,
    timezone text,
    PRIMARY KEY (pk_user_id)
);