use index_tests;

-- execution plan
explain
select * from large_table_1
where code = 'code10001';

alter table large_table_1 drop index `idx_code`;

explain
select * from large_table_1
where code = 'code10001';

