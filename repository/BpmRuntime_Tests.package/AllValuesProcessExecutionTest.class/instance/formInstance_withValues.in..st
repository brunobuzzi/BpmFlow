create random process
formInstance_withValues: anArray in: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: (testRoot newInstanceTemplate formInstance_ue_allTypes_name: (anArray at: 1) amount: (anArray at: 2) time: (anArray at: 3) timeStamp: (anArray at: 4) date: (anArray at: 5) bool: (anArray at: 6)) 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: aBpmProcessInstance