processes
getProcessDefinitionCategoriesFor: aBpmProcessDefinition

	^(BpmProcessDefinitionCategory getCategoriesIn: aBpmProcessDefinition bpmEnvironment forUser: self) 
		select: [:each | each includes: aBpmProcessDefinition]