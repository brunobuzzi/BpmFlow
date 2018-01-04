form instances
formInstance_check_applicant_record: aBpmProcessInstance

	^self createFormInstance: #form_check_applicant_record_1 
			definitionNamed: 'check-applicant-record' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_applicant_record
			in: aBpmProcessInstance