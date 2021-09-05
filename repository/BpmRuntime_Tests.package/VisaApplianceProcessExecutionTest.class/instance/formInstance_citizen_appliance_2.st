form instances
formInstance_citizen_appliance_2

	^testRoot
			buildFormInstanceNamed: 'citizen-appliance'
			withXml: testRoot newInstanceTemplate formInstance_ue_citizen_appliance_2 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_citizen_appliance 
			in: 'ue' 
			process: procInstance