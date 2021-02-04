CREATE TABLE tbl_files (
    pk_md5 varchar(32) NOT NULL UNIQUE,
    name varchar(256) NOT NULL,
    extension varchar(16) NOT NULL,
    urls varchar(2048)[],
    data_bytes bytea NOT NULL,
    PRIMARY KEY (pk_md5)
);