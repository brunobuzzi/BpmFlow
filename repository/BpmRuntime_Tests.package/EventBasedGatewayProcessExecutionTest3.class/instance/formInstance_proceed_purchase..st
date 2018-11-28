form instances
formInstance_proceed_purchase: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_proceed_purchase
			withValues: #() 
			definitionNamed: 'proceed-purchase' 
			app: 'ue' 
			definitionMethod: #form_proceed_purchase
			in: aBpmProcessInstance