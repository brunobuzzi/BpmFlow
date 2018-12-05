other
testSendAndRedirect
	| formInstance |
"
	apiOperation := BpmSendFormAndRedirectApi new.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').

	formInstance := self formInstance_citizen_appliance.

	apiOperation appName: 'ue';
		formName: 'citizen-appliance';
		language: 'en';
		valid: true;
		id: formInstance id.

	apiOperation doIt."