form instances
formInstance_cancel_purchase: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'cancel-purchase'
			withXml: testRoot newInstanceTemplate formInstance_ue_cancel_purchase 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_cancel_purchase 
			in: 'ue' 
			process: aBpmProcessInstance