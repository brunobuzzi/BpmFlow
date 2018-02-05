test
testExecuteProcess_simpleRegistration_approved
	| currentTask endArtifact formInstance |

	self assert: (procInstance startEvent getDefinitionName = 'start-registration').
	self assert: (BpmProcessDefinition isRegisteredAsAnonymousStart: procInstance definition).
	"Step 1 - Form [simple-registration]" "THIS IS AN ANONYMOUS PROCESS"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_simple_registration.
	currentTask externalObject: formInstance.
	formInstance assignment: (self getAssignmentFor: currentTask).
	currentTask finalize.

	self assert: (currentTask getDefinitionName = 'simple-registration').
	self assert: procInstance startEventIsAnonymous.
	procInstance generateNextTransitionsFrom: currentTask.
	"Step 2 - Form [registration-approval]"
	currentTask := procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_registration_approval.
	self assert: (currentTask getDefinitionName = 'registration-approval').

	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end') and: [endArtifact isEndEvent]).