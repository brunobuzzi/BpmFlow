simple registration
xpdlReaderForSimpleRegistrationProcess

	^(self getXpdlReaderClass forProcessNamed: 'Simple Registration' withString: self processDefinition_simple_registration)
			connectProcesses;
			yourself