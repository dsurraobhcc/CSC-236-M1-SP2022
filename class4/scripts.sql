use library;

select * from movie, subject
where movie.subject_id = subject.id;

select * from movie
inner join subject on movie.subject_id = subject.id;

select m.title, m.summary, s.title from movie m
inner join subject s on m.subject_id = s.id;

select title from movie m
inner join subject s on m.subject_id = s.id;
-- Error Code: 1052. Column 'title' in field list is ambiguous

select m.title, s.title from movie m
inner join subject s on m.subject_id = s.id
where s.title = 'Sports';


