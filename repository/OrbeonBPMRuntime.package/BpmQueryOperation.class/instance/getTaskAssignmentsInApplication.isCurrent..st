application
getTaskAssignmentsInApplication: appName isCurrent: aBoolean
	"The receiver answer a collection of current <BpmTaskAssignment> in application named <appName>"

	^aBoolean 
		ifTrue: [self getCurrentTaskAssignmentsInApplication: appName] 
		ifFalse: [self getFinishedTaskAssignmentsInApplication: appName]