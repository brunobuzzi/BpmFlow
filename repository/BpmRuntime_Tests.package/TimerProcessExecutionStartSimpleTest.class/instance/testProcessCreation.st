test
testProcessCreation
	| timeStamp newProcesses |

	self defaultTimerEventMonitor removeCreationHistoryFor: procDefinition. "remove previous creations"

	self assert: ((self defaultTimerEventMonitor getLastProcessCreationTimeFor: procDefinition) = self defaultTimerEventMonitor getFirstComparisionTimeStamp).

	timeStamp := TimeStamp now.
	newProcesses := self defaultTimerEventMonitor triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: timeStamp.
	self assert: (newProcesses size = 1).

	newProcesses := self defaultTimerEventMonitor triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: timeStamp.
	self assert: (newProcesses size = 0).

	newProcesses := self defaultTimerEventMonitor triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: (timeStamp plusSeconds:  36000).
	self assert: (newProcesses size = 0).
 
	newProcesses := self defaultTimerEventMonitor triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: (timeStamp plusSeconds:  60000).
	self assert: (newProcesses size = 0).

	timeStamp := TimeStamp now.
	newProcesses := self defaultTimerEventMonitor triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: (timeStamp plusDays: 1).
	self assert: (newProcesses size = 1).