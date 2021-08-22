no filter
getAllFinishedTaskAssignments
	"The receiver answer a collection with finished assignments by <BpmUser> <user> in the <BpmEnvironment> <bpmEnvironment> "

	^self user getFinishedAssignmentsIn: bpmEnvironment