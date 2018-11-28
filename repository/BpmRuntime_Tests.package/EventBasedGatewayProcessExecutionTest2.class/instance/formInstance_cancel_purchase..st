form instances
formInstance_cancel_purchase: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_cancel_purchase
			withValues: #() 
			definitionNamed: 'cancel-purchase' 
			app: 'ue' 
			definitionMethod: #form_cancel_purchase
			in: aBpmProcessInstance