search operation
searchMatchingAssignmentsFor: procName in: appName
	"Answer a collection of <BpmTaskAssignment> for the process named <procName> in application <appName>"

	(appName isNil or: [appName isEmpty]) ifTrue: [^searchResult := self getQueryOperation getAllTaskAssignments: self modeIsCurrentTasks].

	searchResult := (procName = self viewAllText)
		ifTrue: [self getQueryOperation getTaskAssignmentsInApplication: appName isCurrent: self modeIsCurrentTasks]
		ifFalse: [self getQueryOperation getTaskAssignmentsInApplication: appName andProcess: procName isCurrent: self modeIsCurrentTasks].