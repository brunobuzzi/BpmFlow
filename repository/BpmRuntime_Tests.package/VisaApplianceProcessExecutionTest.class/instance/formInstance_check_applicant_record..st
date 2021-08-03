form instances
formInstance_check_applicant_record: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-applicant-record'  
			withXml: self newInstanceTemplate formInstance_ue_check_applicant_record_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_check_applicant_record 
			in: 'ue' 
			process: aBpmProcessInstance