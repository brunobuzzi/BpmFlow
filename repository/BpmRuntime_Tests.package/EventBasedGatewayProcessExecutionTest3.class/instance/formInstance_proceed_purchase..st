form instances
formInstance_proceed_purchase: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'proceed-purchase'
			withXml: testRoot newInstanceTemplate formInstance_ue_proceed_purchase 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_proceed_purchase 
			in: 'ue' 
			process: aBpmProcessInstance