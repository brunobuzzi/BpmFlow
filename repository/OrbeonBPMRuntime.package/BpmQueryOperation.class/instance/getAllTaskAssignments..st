no filter
getAllTaskAssignments: isCurrent

	^isCurrent 
		ifTrue: [self getAllCurrentTaskAssigments]
		ifFalse: [self getAllFinishedTaskAssignments]