form instances
formInstance_house_purchase_application: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'house-purchase-application'
			withXml: testRoot newInstanceTemplate formInstance_ue_house_purchase_application_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_house_purchase_application 
			in: 'ue' 
			process: aBpmProcessInstance