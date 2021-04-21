form instances
formInstance_task5_withoutProcess

	^self formCreatorClass 
		buildFormInstanceWithoutProcessFrom: self newInstanceTemplate formInstance_ue_task_5
		definitionNamed: 'task-5' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task5
		in: procInstance