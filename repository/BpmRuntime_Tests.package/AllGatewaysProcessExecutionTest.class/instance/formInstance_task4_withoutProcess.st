form instances
formInstance_task4_withoutProcess

	^testRoot
			buildNoProcessFormInstanceNamed: 'task-4'  
			withXml: self newInstanceTemplate formInstance_ue_task_4 
			definitionXml: self newDefinitionTemplate formDefinition_ue_task4 
			in: 'ue' 
			process: procInstance