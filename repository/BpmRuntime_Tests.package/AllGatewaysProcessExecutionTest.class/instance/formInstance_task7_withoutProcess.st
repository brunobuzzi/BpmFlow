form instances
formInstance_task7_withoutProcess

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_task_7
		definitionNamed: 'task-7' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_task7
		in: procInstance