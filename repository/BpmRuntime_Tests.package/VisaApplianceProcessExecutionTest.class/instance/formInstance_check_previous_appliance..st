form instances
formInstance_check_previous_appliance: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-previous-appliance'
			withXml: testRoot newInstanceTemplate formInstance_ue_check_previous_appliance_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_check_previous_appliance 
			in: 'ue' 
			process: aBpmProcessInstance