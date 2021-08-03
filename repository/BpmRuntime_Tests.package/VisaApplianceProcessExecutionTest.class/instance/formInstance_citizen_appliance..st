form instances
formInstance_citizen_appliance: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'citizen-appliance'
			withXml: self newInstanceTemplate formInstance_ue_citizen_appliance_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_citizen_appliance 
			in: 'ue' 
			process: aBpmProcessInstance