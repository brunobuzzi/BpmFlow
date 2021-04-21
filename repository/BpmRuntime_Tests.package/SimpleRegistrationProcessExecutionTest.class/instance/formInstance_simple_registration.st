form instances
formInstance_simple_registration

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_st_simple_registration
		definitionNamed: 'simple-registration'
		app: 'st' 
		definitionMethod: self newDefinitionTemplate formDefinition_st_simple_registration
		in: procInstance