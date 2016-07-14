other
testExecuteProcess_visaRejected
	| currentTask gateway endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data_2.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'accept basic data').
	"Step 4 - Visa has been rejected"
	self assert: (procInstance currentActivities isEmpty).
	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'visa apply end') and: [endArtifact isEndEvent]).