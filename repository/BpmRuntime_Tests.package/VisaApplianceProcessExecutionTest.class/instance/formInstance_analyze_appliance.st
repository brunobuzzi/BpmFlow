form instances
formInstance_analyze_appliance

	^testRoot
			buildFormInstanceNamed: 'analyze-appliance'  
			withXml: self newInstanceTemplate formInstance_ue_analyze_appliance_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_analyze_appliance 
			in: 'ue' 
			process: procInstance