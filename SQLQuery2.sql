select * from [dbo].customers$

select state, country, count(*) as nfcustomers
from [dbo].customers$
group by state, country
order by count(*) desc;
