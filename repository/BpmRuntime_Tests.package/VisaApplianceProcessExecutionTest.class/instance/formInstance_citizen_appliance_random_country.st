form instances
formInstance_citizen_appliance_random_country

	^testRoot
			buildFormInstanceNamed: 'citizen-appliance'
			withXml: self newInstanceTemplate formInstance_ue_citizen_appliance_random_country 
			definitionXml: self newDefinitionTemplate formDefinition_ue_citizen_appliance 
			in: 'ue' 
			process: procInstance