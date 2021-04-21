form instances
formInstance_house_purchase_application: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_house_purchase_application_1
		definitionNamed: 'house-purchase-application' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_house_purchase_application
		in: aBpmProcessInstance