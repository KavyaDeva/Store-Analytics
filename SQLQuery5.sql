
select state, country, count(*) as nfcustomers
from [dbo].customers$
group by state, country
order by count(*) desc;

select state, country, [orders$].payment
from [customers$] join [orders$] on
[customers$].customer_id = [orders$].customer_id
group by state, country, [orders$].payment;

select [customers$].customer_id from [customers$]
Inner join [orders$] on
[customers$].customer_id = [orders$].customer_id;

select [customers$].customer_id, customer_name, gender, age, city, state, country, [orders$].payment 
from [customers$] join [orders$] on
[customers$].customer_id = [orders$].customer_id;

select state, country, sum(payment) as 'totalpayment', count(*) as nfcustomers
from [newtable$]
group by state, country
order by totalpayment desc;