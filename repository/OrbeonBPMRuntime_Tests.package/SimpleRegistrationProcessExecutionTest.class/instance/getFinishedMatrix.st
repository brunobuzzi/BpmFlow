other
getFinishedMatrix

	^BpmFinishedTasksMatrix cache at: 'st' ifAbsent: [self assert: false]