form instances
formInstance_task1

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_task_1
		definitionNamed: 'task-1' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task1
		in: procInstance