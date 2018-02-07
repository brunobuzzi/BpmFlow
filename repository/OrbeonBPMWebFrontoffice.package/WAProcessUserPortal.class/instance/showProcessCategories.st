sub components
showProcessCategories

	(arena isKindOf: WAOrbeonProcessCategoryManager)
	ifTrue: [^arena].

	^WAOrbeonProcessCategoryManager parent: self