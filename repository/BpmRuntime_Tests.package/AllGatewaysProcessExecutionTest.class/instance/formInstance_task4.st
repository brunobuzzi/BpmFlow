form instances
formInstance_task4

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_task_4
		definitionNamed: 'task-4' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task4
		in: procInstance