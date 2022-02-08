use library;

-- cross join, full outer join
select * from book, subject;

-- implicit join
select * from book, subject
where book.subject_id = subject.id;

-- column alias
select book.title, book.author, subject.title as 'subject' from book, subject
where book.subject_id = subject.id;

-- table alias
select b.title, b.author, s.title as 'subject' 
from book b, subject s
where b.subject_id = s.id;
