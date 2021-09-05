form instances
formInstance_analyze_appliance

	^testRoot
			buildFormInstanceNamed: 'analyze-appliance'  
			withXml: testRoot newInstanceTemplate formInstance_ue_analyze_appliance_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_analyze_appliance 
			in: 'ue' 
			process: procInstance