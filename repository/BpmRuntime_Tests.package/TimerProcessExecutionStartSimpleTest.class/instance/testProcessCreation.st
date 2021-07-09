test
testProcessCreation
	| timeStamp newProcesses |

	testRoot removeCreationHistoryFor: procDefinition. "remove previous creations"

	self assert: ((testRoot getLastProcessCreationTimeFor: procDefinition) = testRoot getFirstComparisionTimeStamp).

	timeStamp := TimeStamp now.
	newProcesses := testRoot triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: timeStamp.
	self assert: (newProcesses size = 1).

	newProcesses := testRoot triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: timeStamp.
	self assert: (newProcesses size = 0).

	newProcesses := testRoot triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: (timeStamp plusSeconds:  36000).
	self assert: (newProcesses size = 0).
 
	newProcesses := testRoot triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: (timeStamp plusSeconds:  60000).
	self assert: (newProcesses size = 0).

	timeStamp := TimeStamp now.
	newProcesses := testRoot triggerProcessCreationForAll: (OrderedCollection with: procDefinition) atTime: (timeStamp plusDays: 1).
	self assert: (newProcesses size = 1).