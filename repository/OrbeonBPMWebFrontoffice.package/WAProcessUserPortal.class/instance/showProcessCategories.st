sub components
showProcessCategories

	(arena isKindOf: WABpmProcessInstanceCategoryBrowser)
	ifTrue: [^arena].

	^WABpmProcessInstanceCategoryBrowser parent: self