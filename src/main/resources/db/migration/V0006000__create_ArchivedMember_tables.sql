CREATE TABLE tbl_member_history_latest (
    user_id bigint NOT NULL,
    guild_id bigint NOT NULL,
    timestamp bigint NOT NULL,
    nickname text NOT NULL,
    PRIMARY KEY (user_id, guild_id)
);

CREATE TABLE tbl_member_history (
    user_id bigint NOT NULL,
    guild_id bigint NOT NULL,
    timestamp bigint NOT NULL,
    nickname text,
    PRIMARY KEY (user_id, guild_id),
	FOREIGN KEY (user_id, guild_id) REFERENCES tbl_member_history(user_id, guild_id),
    FOREIGN KEY (guild_id) REFERENCES tbl_guild_config(guild_id)
);