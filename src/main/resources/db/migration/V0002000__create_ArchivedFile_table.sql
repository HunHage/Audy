CREATE TABLE tbl_files (
    pk_md5 varchar(32) NOT NULL UNIQUE,
    name varchar NOT NULL,
    extension varchar NOT NULL,
    urls varchar[],
    data_bytes bytea NOT NULL,
    PRIMARY KEY (pk_md5)
);