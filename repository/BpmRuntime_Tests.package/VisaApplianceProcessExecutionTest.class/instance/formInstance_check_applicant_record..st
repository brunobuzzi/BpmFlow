form instances
formInstance_check_applicant_record: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-applicant-record'  
			withXml: testRoot newInstanceTemplate formInstance_ue_check_applicant_record_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_check_applicant_record 
			in: 'ue' 
			process: aBpmProcessInstance