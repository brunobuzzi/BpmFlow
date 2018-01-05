form instances
formInstance_check_properties: aBpmProcessInstance

	^self createFormInstance: #form_check_properties_1 
			definitionNamed: 'check-properties' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_properties
			in: aBpmProcessInstance