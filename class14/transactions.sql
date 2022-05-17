/*
Transferring money between accounts
User A sends $500 to User B
- debit $500 from User A's account
- credit $500 to User B's account
- both the debit and credit should be in a transaction
*/
drop schema if exists account_transactions_tests;
create schema account_transactions_tests;
use account_transactions_tests;

create table account (
	id int,
    user varchar(100),
    balance decimal(10, 1)
);

insert into account values (1, 'User A', 10000);
insert into account values (2, 'User B', 5000);

select * from account;

-- begin the transfer
set @transfer_amt = 500;

select balance - @transfer_amt from account;

start transaction;
	-- debit $500 from User A's account
    update account set balance = balance - @transfer_amt 
    where user = 'User A';
    
    -- credit $500 to User B's account
    update account set balance = balance + @transfer_amt
    where user = 'User B';
    
    -- when would you rollback the transaction?
	-- if negative balance
    
commit;

-- check balances
select * from account;

