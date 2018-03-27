sub components
showProcessCategories

	(arena isKindOf: WABpmProcessCategoryManager)
	ifTrue: [^arena].

	^WABpmProcessCategoryManager parent: self