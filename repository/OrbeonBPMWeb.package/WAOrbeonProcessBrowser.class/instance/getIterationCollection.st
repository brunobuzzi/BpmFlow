search area
getIterationCollection
	"Get the iteration collection where the search process will iterate over to find a specific element"

	self modeIsFinishedTasks ifTrue: [^self session user getFinishedAssigments asArray].

	^lateralCollection