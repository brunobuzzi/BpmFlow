form instances
formInstance_citizen_appliance_2

	^testRoot
			buildFormInstanceNamed: 'citizen-appliance'
			withXml: self newInstanceTemplate formInstance_ue_citizen_appliance_2 
			definitionXml: self newDefinitionTemplate formDefinition_ue_citizen_appliance 
			in: 'ue' 
			process: procInstance