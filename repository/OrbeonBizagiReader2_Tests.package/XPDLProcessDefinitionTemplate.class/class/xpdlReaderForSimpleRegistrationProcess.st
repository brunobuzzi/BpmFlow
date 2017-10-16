simple registration
xpdlReaderForSimpleRegistrationProcess

	^(XPDLReader2 forProcessNamed: 'Simple Registration' withString: self processDefinition_simple_registration)
			connectProcesses;
			yourself