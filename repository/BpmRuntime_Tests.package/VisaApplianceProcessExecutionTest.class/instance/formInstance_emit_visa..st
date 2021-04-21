form instances
formInstance_emit_visa: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_emit_visa_1
		definitionNamed: 'emit-visa'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_emit_visa
		in: aBpmProcessInstance