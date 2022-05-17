use account_transactions_tests;

-- create a procedure to do account transfers
delimiter //
	create procedure p_transfer_money(
		IN i_debit_account_id int,		-- input
        IN i_credit_account_id int,		-- input 
        IN i_amount decimal(10, 2)
	)
	begin
		start transaction;
			-- debit
			update account set balance = balance - i_amount
			where id = i_debit_account_id;
			
			-- credit 
			update account set balance = balance + i_amount
			where id = i_credit_account_id;		
		commit;
    end //
delimiter ;