categories
searchMatchingCategories

	categories := (BpmProcessDefinitionCategory getCategoriesIn: self session bpmEnvironment forUser: self session user) select: [:each | 
		(searchValues at: 'category-name' ifAbsent: ['']) match: each name].