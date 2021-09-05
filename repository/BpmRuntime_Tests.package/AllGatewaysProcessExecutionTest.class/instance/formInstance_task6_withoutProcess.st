form instances
formInstance_task6_withoutProcess

	^testRoot
			buildNoProcessFormInstanceNamed: 'task-6'  
			withXml: testRoot newInstanceTemplate formInstance_ue_task_6_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_task6 
			in: 'ue' 
			process: procInstance