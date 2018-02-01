form instances
formInstance_citizen_appliance: aBpmProcessInstance

	^self createFormInstance: #form_citizen_appliance_1 
			definitionNamed: 'citizen-appliance' 
			app: 'ue' 
			definitionMethod: #formDefinition_citizen_appliance
			in: aBpmProcessInstance