form instances
formInstance_task6_withoutProcess

	^self formCreatorClass 
		buildFormInstanceWithoutProcessFrom: self newInstanceTemplate formInstance_ue_task_6
		definitionNamed: 'task-6' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task6
		in: procInstance