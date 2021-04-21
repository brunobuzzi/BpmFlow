form instances
formInstance_task4_withoutProcess

	^self formCreatorClass 
		buildFormInstanceWithoutProcessFrom: self newInstanceTemplate formInstance_ue_task_4
		definitionNamed: 'task-4' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task4
		in: procInstance