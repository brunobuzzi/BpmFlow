form instances
formInstance_registration_approval

	^testRoot
			buildFormInstanceNamed: 'registration-approval'  
			withXml: self newInstanceTemplate formInstance_st_registration_approval 
			definitionXml: self newDefinitionTemplate formDefinition_st_registration_approval 
			in: 'st' 
			process: procInstance