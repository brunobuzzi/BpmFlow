form instances
formInstance_cancel_purchase: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'cancel-purchase'
			withXml: self newInstanceTemplate formInstance_ue_cancel_purchase 
			definitionXml: self newDefinitionTemplate formDefinition_ue_cancel_purchase 
			in: 'ue' 
			process: aBpmProcessInstance