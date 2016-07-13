searching
searchByName

	^rolesBatchList items: (self session user getVisibleRoles select: [:each | each name = model name])