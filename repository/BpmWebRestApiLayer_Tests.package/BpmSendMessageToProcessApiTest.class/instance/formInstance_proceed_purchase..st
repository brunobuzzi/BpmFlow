other
formInstance_proceed_purchase: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_proceed_purchase
			withValues: #() 
			definitionNamed: 'proceed-purchase' 
			app: 'ue-test' 
			definitionMethod: #form_proceed_purchase_2
			in: aBpmProcessInstance