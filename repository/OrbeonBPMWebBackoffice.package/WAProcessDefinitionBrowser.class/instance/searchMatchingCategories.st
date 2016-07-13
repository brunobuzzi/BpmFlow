categories
searchMatchingCategories

	categories := (BpmProcessDefinitionCategory getCategoriesFor: self session user) select: [:each | 
		(searchValues at: 'category-name' ifAbsent: ['']) match: each name].