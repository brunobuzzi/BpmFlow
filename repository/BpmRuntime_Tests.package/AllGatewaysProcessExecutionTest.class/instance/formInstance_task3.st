form instances
formInstance_task3

	^testRoot
			buildFormInstanceNamed: 'task-3'  
			withXml: testRoot newInstanceTemplate formInstance_ue_task_3 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_task3 
			in: 'ue' 
			process: procInstance