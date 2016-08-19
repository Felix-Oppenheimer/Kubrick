select
	 Color
	,count(*)		--counts rows
	
from production.product


group by color


select
	 Color
	,count(Color)	--counts colors
	
from production.product


group by color