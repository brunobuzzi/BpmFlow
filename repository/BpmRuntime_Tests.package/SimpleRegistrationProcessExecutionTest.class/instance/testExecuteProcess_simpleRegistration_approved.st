test
testExecuteProcess_simpleRegistration_approved
	| currentTask endArtifact formInstance |

	self assert: (procInstance startEventName = 'start-registration').
	self assert: (self defaultProcessDefinitionClass isRegisteredAsAnonymousStart: procInstance definition).
	"Step 1 - Form [simple-registration]" "THIS IS AN ANONYMOUS PROCESS"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_simple_registration.
	currentTask externalObject: formInstance.
	formInstance assignment: (self getAssignmentFor: currentTask).
	currentTask performFinalization.

	self assert: (currentTask getDefinitionName = 'simple-registration').
	self assert: procInstance startEventIsAnonymous.
	procInstance generateNextTransitionsFrom: currentTask.
	"Step 2 - Form [registration-approval]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_registration_approval on: procInstance.
	self assert: (currentTask getDefinitionName = 'registration-approval').

	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.