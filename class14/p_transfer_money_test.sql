use account_transactions_tests;

select * from account;

call p_transfer_money(1, 2, 650.50);

/*
0 row(s) affected, 1 warning(s): 1265 Data truncated for column 'i_amount' at row 1

*/

select * from account;