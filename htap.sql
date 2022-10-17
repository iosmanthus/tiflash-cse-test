create database config;
use config;
create table `config_0` (
  `id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table config_0 set tiflash replica 1;
insert into `config_0` values (1);
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
insert into `config_0` select * from config_0;
split table config_0 between (0) and (30000) regions 20;
insert into `config_0` values (2);

select * from information_schema.tiflash_replica;