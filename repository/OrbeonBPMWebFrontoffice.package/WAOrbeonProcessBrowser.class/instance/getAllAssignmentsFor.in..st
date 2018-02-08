search operation
getAllAssignmentsFor: procName in: appName
	"Answer a collection of <BpmTaskAssignment> for the process named <procName> in application <appName>"

	(appName isNil or: [appName isEmpty]) ifTrue: [^searchResult := self getQueryOperation getAllTaskAssignments: self modeIsCurrentTasks].

	searchResult := (procName = self viewAllText)
		ifTrue: [self getQueryOperation getAllTaskAssignmentsInApplication: appName isCurrent: self modeIsCurrentTasks]
		ifFalse: [self getQueryOperation getAllTaskAssignmentsInApplication: appName andProcess: procName isCurrent: self modeIsCurrentTasks].