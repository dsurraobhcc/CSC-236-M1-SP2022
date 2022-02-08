use library;

select * from subject;

-- rename Sports to Sports & Fitness
update subject 
set title = 'Sports & Fitness'
where title = 'Sports';

insert into subject (id, title) values (4, 'Horror');
select * from subject;

-- delete Horror subject
delete from subject 
where title = 'Horror';

delete from subject 
where id = 4;
