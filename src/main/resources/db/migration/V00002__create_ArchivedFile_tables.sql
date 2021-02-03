CREATE TABLE tbl_files (
    pk_md5 varchar(32) NOT NULL UNIQUE,
    name varchar(256) NOT NULL,
    extension varchar(16) NOT NULL,
    data_bytes bytea NOT NULL,
    PRIMARY KEY (pk_md5)
);

CREATE TABLE tbl_file_links (
    pk_md5 varchar(32) NOT NULL UNIQUE,
    urls varchar(2048)[],
    CONSTRAINT fk_pk_md5 FOREIGN KEY(pk_md5) REFERENCES tbl_files(pk_md5),
    PRIMARY KEY (pk_md5)
);