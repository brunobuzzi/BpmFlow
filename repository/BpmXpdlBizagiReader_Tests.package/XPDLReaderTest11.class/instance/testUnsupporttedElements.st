other
testUnsupporttedElements
	| workflow |

	workflow := self getWorkflow.

	self assert: (workflow getUnsupportedBPMNelements size = 14).

	self assert: (workflow getAttachedMessageEventsItemsReport size = 1).
	self assert: (workflow getBussinessRuleTasksItemsReport size = 1).
	self assert: (workflow getCompensationEventsItemsReport size = 1).
	self assert: (workflow getComplexGateways size = 1).
	self assert: (workflow getConditionalEventsItemsReport size = 1).
	self assert: (workflow getErrorEventsItemsReport size = 1).
	self assert: (workflow getEscalationEventsItemsReport size = 1).
	self assert: (workflow getManualTasksItemsReport size = 1).
	self assert: (workflow getMultipleEventsItemsReport size = 1).
	self assert: (workflow getParallelMultipleEventsItemsReport size = 1).
	self assert: (workflow getReceiverTasksItemsReport size = 1).
	self assert: (workflow getServiceTasksItemsReport size = 1).
	self assert: (workflow getSignalEventsItemsReport size = 1).
	self assert: (workflow getUserTasksItemsReport size = 1).