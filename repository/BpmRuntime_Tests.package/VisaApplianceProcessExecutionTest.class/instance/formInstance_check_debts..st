form instances
formInstance_check_debts: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_check_debts_1
		definitionNamed: 'check-debts'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_check_debts
		in: aBpmProcessInstance