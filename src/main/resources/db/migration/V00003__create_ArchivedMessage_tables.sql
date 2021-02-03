CREATE TABLE tbl_messages (
    pk_id bigint NOT NULL UNIQUE,
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    author_id bigint NOT NULL,
    contents bool NOT NULL,
    edited bool NOT NULL,
    attachments bool NOT NULL,
    deleted bigint NOT NULL,
    last_source varchar(3) NOT NULL,
    flags int NOT NULL,
    PRIMARY KEY (pk_id)
);

CREATE TABLE tbl_message_contents (
    pk_uuid uuid NOT NULL UNIQUE,
    message_id bigint NOT NULL,
    content varchar NOT NULL,
    timestamp bigint NOT NULL,
    linked_files varchar(32)[],
    PRIMARY KEY (pk_uuid),
    CONSTRAINT fk_message_id FOREIGN KEY(message_id) REFERENCES tbl_messages(pk_id)
);

CREATE TABLE tbl_message_attachments (
    pk_uuid uuid NOT NULL UNIQUE,
    md5 varchar(32) NOT NULL,
    message_id bigint NOT NULL,
    spoiler boolean NOT NULL,
    file_name varchar NOT NULL,
    file_extension varchar NOT NULL,
    CONSTRAINT fk_md5 FOREIGN KEY(md5) REFERENCES tbl_files(pk_md5),
    CONSTRAINT fk_message_id FOREIGN KEY(message_id) REFERENCES tbl_messages(pk_id)
);