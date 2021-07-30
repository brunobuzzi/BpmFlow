form instances
formInstance_task6

	^testRoot
			buildFormInstanceNamed: 'task-6'  
			withXml: self newInstanceTemplate formInstance_ue_task_6 
			definitionXml: self newDefinitionTemplate formDefinition_ue_task6 
			in: 'ue' 
			process: procInstance