other
getFinishedMatrix

	^(self defaultApplicationManagerClass getAnyApplicationNamed: 'st' ifNone: [self assert: false]) finishedTasksMatrix