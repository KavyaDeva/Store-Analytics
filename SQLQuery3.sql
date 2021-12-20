--select * from [dbo].orders$

--select * from [customers$]

select state, country, count(*) as nfcustomers
from [dbo].customers$
group by state, country
order by count(*) desc
select [customers$].customer_id from [customers$]
Inner join [orders$] on
[customers$].customer_id = [orders$].customer_id;