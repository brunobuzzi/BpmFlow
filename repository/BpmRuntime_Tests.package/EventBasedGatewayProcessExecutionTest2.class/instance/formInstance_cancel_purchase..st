form instances
formInstance_cancel_purchase: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_cancel_purchase
		definitionNamed: 'cancel-purchase' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_cancel_purchase
		in: aBpmProcessInstance