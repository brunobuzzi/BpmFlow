form instances
formInstance_task5_withoutProcess

	^testRoot
			buildNoProcessFormInstanceNamed: 'task-5'  
			withXml: self newInstanceTemplate formInstance_ue_task_5 
			definitionXml: self newDefinitionTemplate formDefinition_ue_task5 
			in: 'ue' 
			process: procInstance