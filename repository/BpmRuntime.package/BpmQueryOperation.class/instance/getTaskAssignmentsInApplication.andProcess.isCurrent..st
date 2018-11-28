application&process
getTaskAssignmentsInApplication: appName andProcess: procName isCurrent: aBoolean
	"The receiver answer a collection of current <BpmTaskAssignment> in application named <appName>"

	^aBoolean 
		ifTrue: [self getCurrentTaskAssignmentsInApplication: appName andProcess: procName] 
		ifFalse: [self getFinishedTaskAssignmentsInApplication: appName andProcess: procName]