form instances
formInstance_task7_withoutProcess

	^testRoot
			buildNoProcessFormInstanceNamed: 'task-7'  
			withXml: testRoot newInstanceTemplate formInstance_ue_task_7 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_task7 
			in: 'ue' 
			process: procInstance