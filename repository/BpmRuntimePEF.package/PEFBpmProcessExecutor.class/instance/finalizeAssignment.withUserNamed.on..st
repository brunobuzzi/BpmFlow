execution
finalizeAssignment: aBpmTaskAssignment withUserNamed: aString on: aBpmProcessInstance
	"The receiver get the <BpmUser> named <aString> to finalize the assignment <aBpmTaskAssignment>"

	(self getUserNamed: aString) finalizeAssignment: aBpmTaskAssignment.

	"the assignment has been finished (by the role or by all performers) --> this must be in the finished matrix"
	(aBpmTaskAssignment isFinishedByPerformers)
	ifTrue: [(self getFinishedAssignmentFor: aBpmTaskAssignment task on: aBpmProcessInstance ifNone: [nil]) 
				ifNil: [PEFImproperStateException signal: 'Assignment not found in Finished Matrix']
	].