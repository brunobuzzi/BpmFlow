processes
getProcessInstanceCategoriesFor: aBpmProcessDefinition

	^(BpmProcessInstanceCategory  getCategoriesFor: self) 
		select: [:each | each includes: aBpmProcessDefinition]