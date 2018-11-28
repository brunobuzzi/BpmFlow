categories
searchMatchingCategories

	categories := (BpmProcessInstanceCategory getCategoriesIn: self session bpmEnvironment forUser: self session user) select: [:each | 
		(self searchValueAt: 'category-name' ifAbsent: ['']) match: each name].