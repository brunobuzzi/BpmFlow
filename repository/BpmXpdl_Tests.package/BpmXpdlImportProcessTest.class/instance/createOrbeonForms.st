other
createOrbeonForms

	self formCreatorClass createDefinition: 'emit-visa' with: #formDefinition_emit_visa in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'analyze-appliance' with: #formDefinition_analyze_appliance in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'check-previous-appliance' with: #formDefinition_check_previous_appliance in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'check-basic-data' with: #formDefinition_check_basic_data in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'citizen-appliance' with: #formDefinition_citizen_appliance in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'financial-report' with: #formDefinition_financial_report in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'check-debts' with: #formDefinition_check_debts in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'check-properties' with: #formDefinition_check_properties in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'check-accounts' with: #formDefinition_check_accounts in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'applicant-home-office-report' with: #formDefinition_applicant_home_office_report in: (OrbeonApplication applicationNamed: 'ue').

	self formCreatorClass createDefinition: 'check-applicant-record' with: #formDefinition_check_applicant_record in: (OrbeonApplication applicationNamed: 'ue').