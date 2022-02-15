use foreignkeytest;

select * from parent, child
WHERE parent.id = child.parent_id;

select * from child;

delete from parent
where id = 1;

select * from parent;
select * from child;


/* Error Code: 1451. Cannot delete or update a parent row: 
a foreign key constraint fails (`foreignkeytest`.`child`, 
CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parent_id`) 
REFERENCES `parent` (`id`) ON DELETE RESTRICT)
*/
