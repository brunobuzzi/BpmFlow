other
getFinishedMatrix

	^(self defaultApplicationManagerClass applicationNamed: 'st' ifNone: [self assert: false]) finishedTasksMatrix