form instances
formInstance_registration_approval

	^testRoot
			buildFormInstanceNamed: 'registration-approval'  
			withXml: testRoot newInstanceTemplate formInstance_st_registration_approval 
			definitionXml: testRoot newDefinitionTemplate formDefinition_st_registration_approval 
			in: 'st' 
			process: procInstance