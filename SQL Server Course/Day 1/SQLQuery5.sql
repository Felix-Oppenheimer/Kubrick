select
	 *
from [Production].[Product]
where ProductID = 1

begin tran

update [Production].[Product]
set Color = 'Green'
where ProductID = 1

rollback tran
