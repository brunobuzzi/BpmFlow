form instances
formInstance_task6_withoutProcess

	^testRoot
			buildNoProcessFormInstanceNamed: 'task-6'  
			withXml: self newInstanceTemplate formInstance_ue_task_6_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_task6 
			in: 'ue' 
			process: procInstance