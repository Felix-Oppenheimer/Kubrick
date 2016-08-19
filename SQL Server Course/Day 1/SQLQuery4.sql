declare @haystack varchar(100) = 'Kubrick-group--training-course'
select @haystack
select stuff(@haystack,1,7,'Awesome')