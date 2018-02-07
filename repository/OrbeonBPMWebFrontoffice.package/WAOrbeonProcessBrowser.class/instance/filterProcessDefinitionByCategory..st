categories
filterProcessDefinitionByCategory: aBpmProcessInstanceCategory

	searchApplied := true.
	searchResult := self getIterationCollection select: [:each | aBpmProcessInstanceCategory includes: each]