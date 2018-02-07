categories
searchMatchingCategories

	categories := (BpmProcessInstanceCategory getCategoriesFor: self session user) select: [:each | 
		(self searchValueAt: 'category-name' ifAbsent: ['']) match: each name].