processes
getProcessInstanceCategoriesFor: aBpmProcessInstance

	^(BpmProcessInstanceCategory getCategoriesIn: aBpmProcessInstance bpmEnvironment forUser: self)
		select: [:each | each includes: aBpmProcessInstance]