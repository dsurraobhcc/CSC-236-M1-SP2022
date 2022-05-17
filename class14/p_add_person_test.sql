use procedure_tests;

call p_add_person('Shareef', 'Omar', @person_id);

select @person_id;

call p_add_person('Bond', 'James', @person_id);
select @person_id;

select * from person;

/* exercises:
 call p_delete_person(@person_id)
 call p_update_person_name(@person_id, @last_name, @first_name)
*/

