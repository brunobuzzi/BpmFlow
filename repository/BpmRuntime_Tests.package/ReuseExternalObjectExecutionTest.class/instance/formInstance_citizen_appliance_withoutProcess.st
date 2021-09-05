other
formInstance_citizen_appliance_withoutProcess

	^testRoot
			buildFormInstanceNamed: 'citizen-appliance'  
			withXml: testRoot newInstanceTemplate formInstance_ue_citizen_appliance_reuse_form 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_citizen_appliance_2 
			in: 'ue' 
			process: procInstance