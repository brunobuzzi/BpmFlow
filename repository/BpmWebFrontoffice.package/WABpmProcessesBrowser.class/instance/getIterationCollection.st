search operation
getIterationCollection
	"Get the iteration collection where the search process will iterate over to find a specific element"

	self modeIsFinishedTasks ifFalse: [^lateralCollection].

	^(self session user getFinishedAssignmentsIn: self session bpmEnvironment) asArray