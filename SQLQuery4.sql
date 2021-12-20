select state, country, count(*) as nfcustomers
from [dbo].customers$
group by state, country
order by count(*) desc;


select * from [customers$]
Inner join [orders$] on
[customers$].customer_id = [orders$].customer_id;

select state, country, sum(payment) as 'totalrevenue', count(*) as nfcustomers
from [newtable$]
group by state, country
order by totalrevenue desc;