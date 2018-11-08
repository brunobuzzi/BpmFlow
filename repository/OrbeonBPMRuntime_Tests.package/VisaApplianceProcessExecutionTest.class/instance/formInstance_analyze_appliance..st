form instances
formInstance_analyze_appliance: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_analyze_appliance_1 
			definitionNamed: 'analyze-appliance' 
			app: 'ue' 
			definitionMethod: #formDefinition_analyze_appliance
			in: aBpmProcessInstance