form instances
formInstance_task3

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_task_3
		definitionNamed: 'task-3' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task3
		in: procInstance