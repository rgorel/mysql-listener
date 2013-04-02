create database if not exists `listener_test`;
use `listener_test`;

create table `members` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(50),
  `migration_status` int default 0
);

insert into `members` (`name`) values
  ('Eddard Stark'),
  ('Robert Baratheon'),
  ('Jon Arryn'),
  ('Tywin Lannister'),
  ('Robb Stark'),
  ('Daenerys Targaryen');
