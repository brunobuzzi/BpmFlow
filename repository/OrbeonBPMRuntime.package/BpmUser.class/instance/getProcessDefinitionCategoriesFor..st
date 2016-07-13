processes
getProcessDefinitionCategoriesFor: aBpmTaskAssignment

	^(BpmProcessDefinitionCategory  getCategoriesFor: self) 
		select: [:each | each includes: aBpmTaskAssignment]