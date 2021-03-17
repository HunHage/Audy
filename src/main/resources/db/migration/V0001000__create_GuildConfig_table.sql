CREATE TABLE tbl_guild_config (
    pk_guild_id bigint NOT NULL UNIQUE,
    joined boolean default false NOT NULL,
    prefix varchar(8),
    PRIMARY KEY (pk_guild_id)
);