truncate mint_transactions;

copy mint_transactions (
    transaction_date,
    description,
    original_description,
    amount,
    transaction_type,
    category,
    account_name,
    labels,
    notes
    ) 
    from '/users/trasa/prj/minty/.secret/transactions.csv'
    delimiter ','
    csv header;
 
