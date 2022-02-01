use library;

-- let's add some books
insert into book (title, summary, year_published)
values 
	('Sailing to freedom : maritime dimensions of the Underground Railroad',
		'some summary', 2010),
	('Black Girl Baking',
		'another summary', 2000),
    ('Creatures of the Deep',
		'new summary', 1999),
    ('On the Sweet Side',
		'sweet side summary', 2022),
	('It\'s a new day',
		'my summary', 2022);
        
insert into book (title, summary, year_published)
	values ('test title', 'test summary', 2000);
    
-- generates error
-- insert into book (title, summary) values ('test title 2', 'test summary 2');
-- Error Code: 1364. Field 'year_published' doesn't have a default value



-- truncate table book;