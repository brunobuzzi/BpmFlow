searching
searchByName

	^rolesBatchList items: ((self session user getVisibleRolesIn: self session bpmEnvironment) select: [:each | each name = model name])