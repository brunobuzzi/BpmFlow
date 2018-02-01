form instances
formInstance_check_previous_appliance: aBpmProcessInstance

	^self createFormInstance: #form_check_previous_appliance_1 
			definitionNamed: 'check-previous-appliance' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_previous_appliance
			in: aBpmProcessInstance