SELECT *
FROM Birds

insert into birds(Type, Color, Size, Name)
values (0, 'blue', 'Medium', 'Darcy'), 
		(1, 'red', 'Large', 'Sam'), 
		(1, 'gray', 'small', 'Hector')

UPDATE Birds
SET Type = 0,
	Color = 'orange',
	Size = 'medium',
	Name = 'Tweety'
WHERE Id = ''