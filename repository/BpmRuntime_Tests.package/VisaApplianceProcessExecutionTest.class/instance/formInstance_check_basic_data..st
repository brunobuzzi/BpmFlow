form instances
formInstance_check_basic_data: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_check_basic_data_1 
			definitionNamed: 'check-basic-data' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_basic_data
			in: aBpmProcessInstance