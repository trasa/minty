select extract(month from transaction_date) as txn_month, extract(year from transaction_date) as txn_date, category, sum(amount)
from mint_transactions
where transaction_type = 'debit'
group by extract(month from transaction_date), extract( year from transaction_date), category
order by extract(year from transaction_date) desc , extract(month from transaction_date) desc

