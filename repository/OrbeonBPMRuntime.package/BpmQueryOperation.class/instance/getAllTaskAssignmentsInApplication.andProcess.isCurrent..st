application&process
getAllTaskAssignmentsInApplication: appName andProcess: procName isCurrent: aBoolean
	"The receiver answer a collection of current <BpmTaskAssignment> in application named <appName>"

	^aBoolean 
		ifTrue: [self getAllCurrentTaskAssignmentsInApplication: appName andProcess: procName] 
		ifFalse: [self getAllFinishedTaskAssignmentsInApplication: appName andProcess: procName]