CREATE TABLE guild_config (
    guild_id bigint NOT NULL UNIQUE,
    joined boolean default false NOT NULL,
    prefix varchar(8),
    PRIMARY KEY (guild_id)
);