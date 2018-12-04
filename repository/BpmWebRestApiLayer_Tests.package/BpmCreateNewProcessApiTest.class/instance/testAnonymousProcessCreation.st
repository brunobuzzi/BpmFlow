other
testAnonymousProcessCreation
	| simpleRegistrationForm currentTask |

	simpleRegistrationForm := self formInstance_simple_registration.

	apiOperation appName: 'st';
		formName: 'simple-registration';
		id: simpleRegistrationForm id;
		processId: procDefinition id.

	apiOperation doIt.

	self assert: apiOperation newBpmProcess notNil.
	self assert: apiOperation newBpmProcess isTopProcess.

	currentTask := apiOperation newBpmProcess currentActivities last.

	self assert: (currentTask getDefinitionName = 'registration-approval').