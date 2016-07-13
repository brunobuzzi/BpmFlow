subcomponents
openProcessCategoryManager

	(arena isKindOf: WAManageFormProcessCategory)
	ifTrue: [^arena].

	^WAManageFormProcessCategory parent: self