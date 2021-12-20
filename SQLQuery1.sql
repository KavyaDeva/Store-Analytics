select * from [orders$]
right outer join [customers$] on
[customers$].customer_id = [orders$].customer_id;

select state, country, sum(payment) as 'totalpayment', count(*) as nfcustomers
from [newtable$]
group by state, country
order by totalpayment desc;