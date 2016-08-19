/************
/
/* CASE 	*/
/* ISNULL	*/
/* NULLIF	*/
/*			*/
/*			*/
/************/

--select
--	 Name
--	,ListPrice
--	,Name +' '+ cast(ListPrice as varchar(20))
--	,case 
--		when cast(ListPrice as int) = 0 then 'FREE!'
--	    when cast(ListPrice as int) between 1 and 100 then 'CHEAP!'
--		when cast(ListPrice as int) between 101 and 500 then 'MODERATE!'
--		when cast(ListPrice as int) > 500  then 'EXPENSIVE!'
--	 end as PriceDescription
--from Production.Product


--select
--	 FirstName
--	,MiddleName
--	,LastName
--	,Firstname +' '+ isnull(MiddleName,'') + case when MiddleName is not null then ' ' else '' end + LastName [Full Name]

--from Person.Person


select
	 MiddleName
	,isnull(nullif(middlename, 'B'),'BAD NAME')
from Person.Person

