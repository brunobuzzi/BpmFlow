search area
getIterationCollection
	"Get the iteration collection where the search process will iterate over to find a specific element"

	self modeIsFinishedTasks ifFalse: [^lateralCollection].

	^self session user getFinishedAssignments asArray