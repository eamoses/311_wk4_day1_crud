-- CRUD
-- Create
insert into 
users (first_name, last_name)
values ('Emily', 'Moses'), ('Shmemily', 'Shmoses'), ('Bemily', 'Bmoses')
;

-- READ
select * from users;
select * from users where id in (501, 502, 503);
select * from users where id between 400 and 503;
select state from usersAddress where state = 'REDACTED';
select count(*) from usersAddress where state = 'REDACTED';
select * from users where id = 114;
select * from usersAddress where id = 114;
select * from usersContact where id = 114;

-- UPDATE
UPDATE usersAddress
SET state = 'REDACTED'
WHERE state = 'OH';

-- DELETE
set foreign_key_checks = 0;

delete from usersAddress
where id = 114
;

delete from usersContact
where id = 114
;

delete from users
where id = 114
;

set foreign_key_checks = 1;
