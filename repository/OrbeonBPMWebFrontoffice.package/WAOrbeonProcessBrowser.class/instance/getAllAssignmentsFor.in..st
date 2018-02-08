search operation
getAllAssignmentsFor: procName in: appName
	"Answer a collection of <BpmTaskAssignment> for the process named <procName> in application <appName>"
	| selectBlock |

	(appName isNil or: [appName isEmpty]) ifTrue: [^searchResult := self getQueryOperation getAllTaskAssignments: self modeIsCurrentTasks].

	selectBlock := (procName = self viewAllText)
		ifTrue: [[:each | each applicationName = appName]]
		ifFalse: [[:each | each applicationName = appName and: [each processName = procName]]].

	searchResult := self getIterationCollection select: selectBlock