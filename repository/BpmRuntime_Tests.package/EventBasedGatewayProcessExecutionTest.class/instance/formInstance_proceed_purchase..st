form instances
formInstance_proceed_purchase: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_proceed_purchase
		definitionNamed: 'proceed-purchase' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_proceed_purchase
		in: aBpmProcessInstance