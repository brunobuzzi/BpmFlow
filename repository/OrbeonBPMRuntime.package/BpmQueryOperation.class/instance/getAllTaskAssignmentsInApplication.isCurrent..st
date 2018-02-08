application
getAllTaskAssignmentsInApplication: appName isCurrent: aBoolean
	"The receiver answer a collection of current <BpmTaskAssignment> in application named <appName>"

	^aBoolean 
		ifTrue: [self getAllCurrentTaskAssignmentsInApplication: appName] 
		ifFalse: [self getAllFinishedTaskAssignmentsInApplication: appName]