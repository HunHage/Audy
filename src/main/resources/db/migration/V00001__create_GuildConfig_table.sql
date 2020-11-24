CREATE TABLE guild_config (
    id bigint NOT NULL UNIQUE,
    joined boolean default false NOT NULL,
    prefix varchar(8),
    PRIMARY KEY (guild_id)
);