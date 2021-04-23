create random process
formInstance_withValues: anArray in: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_allTypes_name: (anArray at: 1) amount: (anArray at: 2) time: (anArray at: 3) timeStamp: (anArray at: 4) date: (anArray at: 5) bool: (anArray at: 6))
		definitionNamed: 'all-field-types' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_all_field_types
		in: aBpmProcessInstance