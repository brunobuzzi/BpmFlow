execution simulation
processAssignment: aBpmTaskAssignment withUserNamed: aString on: aBpmProcessInstance
	""

	(self getUserNamed: aString) finalizeAssignment: aBpmTaskAssignment.

	"the assignment has been finished (by the role or by all performers) --> this must be in the finished matrix"
	(aBpmTaskAssignment isFinishedByPerformers)
	ifTrue: [(self getFinishedAssignmentFor: aBpmTaskAssignment task on: aBpmProcessInstance ifNone: [nil]) ifNil: [self assert: false]]