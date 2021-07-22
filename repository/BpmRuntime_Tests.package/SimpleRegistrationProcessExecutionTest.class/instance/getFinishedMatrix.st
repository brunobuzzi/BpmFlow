other
getFinishedMatrix

	^(testRoot applicationNamed: 'st' ifNone: [self assert: false]) finishedTasksMatrix