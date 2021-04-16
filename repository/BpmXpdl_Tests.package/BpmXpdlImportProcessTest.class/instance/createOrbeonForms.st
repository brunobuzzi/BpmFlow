other
createOrbeonForms

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_emit_visa name: 'emit-visa' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_analyze_appliance name: 'analyze-appliance' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_check_previous_appliance name: 'check-previous-appliance' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_check_basic_data name: 'check-basic-data' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_citizen_appliance name: 'citizen-appliance' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_financial_report name: 'financial-report' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_check_debts name: 'check-debts' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_check_properties name: 'check-properties' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_check_accounts name: 'check-accounts' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_applicant_home_office_report name: 'applicant-home-office-report' in: self getDefaultApplication.

	self formCreatorClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_check_applicant_record name: 'check-applicant-record' in: self getDefaultApplication.