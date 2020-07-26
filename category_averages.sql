select category, avg(month_total)
from (select 
    extract(month from transaction_date) as txn_month, 
    extract(year from transaction_date) as txn_date, 
    category, 
    sum(amount) as month_total
from mint_transactions
where transaction_type = 'debit' and 
NOT (extract(month from transaction_date) = 7 and extract(year from transaction_date) = 2020) 
group by extract(month from transaction_date), extract( year from transaction_date), category
order by extract(year from transaction_date) desc , extract(month from transaction_date) desc, category
) as q
group by category
order by category

