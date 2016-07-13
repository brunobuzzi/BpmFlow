search area
getAllAssignmentsFor: procName in: appName
	"Answer a collection of <OrbeonProcessAssignment> for the process named <procName> in application <appName>"
	| selectBlock |

	appName isEmpty ifTrue: [^searchResult := self getIterationCollection].

	selectBlock := (procName = self viewAllText)
		ifTrue: [[:each | each applicationName = appName]]
		ifFalse: [[:each | each applicationName = appName and: [each processName = procName]]].

	searchResult := self getIterationCollection select: selectBlock