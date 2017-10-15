create table players (
    player_id varchar(10) constraint player_id_pk primary key,
    hp integer not null default 100
);
