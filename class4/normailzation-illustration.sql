-- before
insert into book values ('title 1', 'History'), 
	('title 2', 'History'), 
	('title 3', 'Drama'), 
    ('title 4', 'Drama'), 
    ('title 5', 'Drama');
    
-- after: removing redundancy, optimizing memory resources
insert into subject values (1, 'Drama & Theatre'),
	(2, 'History & Politics');
    
insert into book values ('title 1', 2), 
	('title 2', 2), 
	('title 3', 1), 
    ('title 4', 1), 
    ('title 5', 1);

