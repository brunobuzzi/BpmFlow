form instances
formInstance_check_applicant_record: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_check_applicant_record_1
		definitionNamed: 'check-applicant-record' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_check_applicant_record
		in: aBpmProcessInstance