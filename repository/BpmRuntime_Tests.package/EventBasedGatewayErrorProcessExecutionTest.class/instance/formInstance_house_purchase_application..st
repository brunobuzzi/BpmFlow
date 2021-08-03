form instances
formInstance_house_purchase_application: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'house-purchase-application'
			withXml: self newInstanceTemplate formInstance_ue_house_purchase_application_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_house_purchase_application 
			in: 'ue' 
			process: aBpmProcessInstance