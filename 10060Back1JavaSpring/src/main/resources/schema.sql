CREATE SCHEMA IF NOT EXISTS client;

create table IF NOT EXISTS chat2.book_my_sql
(
    id     bigint not null auto_increment,
    number bigint,
    name   text,
    primary key (id)
) engine = InnoDB;

REPLACE INTO chat2.book_my_sql (id, number, name)
VALUES (2, 1323, 'name');

create table IF NOT EXISTS client.users
(
    id           bigint              not null auto_increment,
    created_date datetime(6),
    password     varchar(255),
    username     varchar(255) unique not null,
    email        varchar(255),
    enabled      bit,
    primary key (id)
) engine = InnoDB;

create table IF NOT EXISTS client.refresh
(
    id             bigint              not null auto_increment,
    created        datetime(6),
    connected      datetime(6),
    token          varchar(255) unique not null,
    remote_address varchar(31),
    user_id        bigint,
    primary key (id)
) engine = InnoDB;


