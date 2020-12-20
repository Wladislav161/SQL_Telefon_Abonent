create table table_abonent
(
    id         integer not null
        constraint table_abonent_pk
            primary key autoincrement,
    first_name TEXT    not null,
    last_name  TEXT    not null,
    midle_name TEXT    not null,
    active     integer not null,
    address    TEXT    not null
);

create table phones
(
    number integer not null
        references table_abonent
);

create table table_group
(
    "group" TEXT not null
        constraint table_group_table_abonent_first_name_fk
            references table_abonent (first_name)
);
