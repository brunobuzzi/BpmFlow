form instances
formInstance_check_properties: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_check_properties_1 
			definitionNamed: 'check-properties' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_properties
			in: aBpmProcessInstance