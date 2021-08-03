form instances
formInstance_simple_registration

	^testRoot
			buildFormInstanceNamed: 'simple-registration'  
			withXml: self newInstanceTemplate formInstance_st_simple_registration 
			definitionXml: self newDefinitionTemplate formDefinition_st_simple_registration 
			in: 'st' 
			process: procInstance