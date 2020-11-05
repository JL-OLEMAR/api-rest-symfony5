CREATE DATABASE IF NOT EXISTS api_rest_symfony;
USE api_rest_symfony;

CREATE TABLE users(
id          int(255) auto_increment not null,
name        varchar(50) not null,
surname     varchar(150),
email       varchar(255) not null,
password    varchar(255) not null,
role        varchar(20),
created_at  datetime DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE videos(
id              int(255) auto_increment not null,
user_id         int(255) not null,
title           varchar(255) not null,
description     text,
url             varchar(255) not null,
status          varchar(50),
created_at      datetime DEFAULT CURRENT_TIMESTAMP,
updated_at      datetime DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT pk_videos PRIMARY KEY(id),
CONSTRAINT fk_video_user FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;