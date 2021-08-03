other
formInstance_citizen_appliance_withoutProcess

	^testRoot
			buildFormInstanceNamed: 'citizen-appliance'  
			withXml: self newInstanceTemplate formInstance_ue_citizen_appliance_reuse_form 
			definitionXml: self newDefinitionTemplate formDefinition_ue_citizen_appliance_2 
			in: 'ue' 
			process: procInstance