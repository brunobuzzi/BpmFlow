categories
filterProcessDefinitionByCategory: aBpmProcessDefinitionCategory

	searchApplied := true.
	searchResult := lateralCollection select: [:each | aBpmProcessDefinitionCategory includes: each]