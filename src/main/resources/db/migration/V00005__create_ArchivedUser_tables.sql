CREATE TABLE tbl_user_history_latest (
    user_id bigint UNIQUE NOT NULL,
    username text NOT NULL,
    discriminator varchar(4) NOT NULL,
    avatar_md5 varchar(32),
    avatar_name text,
    PRIMARY KEY (user_id)
);

CREATE TABLE tbl_user_history (
    user_id bigint NOT NULL,
    timestamp bigint NOT NULL,
    username text,
    discriminator varchar(4),
    avatar_md5 varchar(32),
    avatar_name text,
    FOREIGN KEY (user_id) REFERENCES tbl_user_history_latest(user_id)
);