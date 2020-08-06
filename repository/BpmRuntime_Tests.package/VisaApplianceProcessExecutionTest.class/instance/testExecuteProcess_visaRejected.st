test
testExecuteProcess_visaRejected
	| currentTask gateway endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEventName = 'visa apply start').
	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance on: procInstance.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data_2 on: procInstance.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'accept basic data').
	"Step 4 - Visa has been rejected"
	self assert: (procInstance currentActivities isEmpty).
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'visa apply end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.