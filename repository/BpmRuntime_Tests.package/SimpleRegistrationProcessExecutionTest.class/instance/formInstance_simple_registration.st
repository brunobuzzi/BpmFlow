form instances
formInstance_simple_registration

	^testRoot
			buildFormInstanceNamed: 'simple-registration'  
			withXml: testRoot newInstanceTemplate formInstance_st_simple_registration 
			definitionXml: testRoot newDefinitionTemplate formDefinition_st_simple_registration 
			in: 'st' 
			process: procInstance