form instances
formInstance_registration_approval

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_st_registration_approval
		definitionNamed: 'registration-approval'
		app: 'st' 
		definitionMethod: self newDefinitionTemplate formDefinition_st_registration_approval
		in: procInstance