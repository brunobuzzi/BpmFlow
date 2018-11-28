subcomponents
openProcessCategoryManager

	(arena isKindOf: WABpmProcessDefinitionCategoryBrowser)
	ifTrue: [^arena].

	^WABpmProcessDefinitionCategoryBrowser parent: self