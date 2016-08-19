/*********************/
/*					 */
/*		 RANK        */
/*					 */
/*********************/
select
	 Name
	,isnull(color, 'NA') Color
	,ListPrice [List Price]
	,rank() over(partition by color order by listprice asc) [Rank]
	,dense_rank() over(partition by color order by listprice asc) [Dense Rank]
	,row_number() over(partition by color order by listprice asc) [Row Number]
	,ntile(10) over(order by listprice asc) [Ntile]

--(partition by [SalesOrderID] order by [SalesOrderDetailID] asc)


from Production.Product

where 1=1
	and ListPrice <> 0

order by color, ListPrice asc