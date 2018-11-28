assignment
basicFinalizeAssignment: aBpmTaskAssignment takeNext: aBoolean
	"The receiver finalize the assignment <aBpmTaskAssignment>"
	| assignmentFinalization |

	assignmentFinalization := BpmFinalizeAssignmentOperation on: aBpmTaskAssignment by: self.
	aBoolean ifTrue: [assignmentFinalization setUserToTakeNextTasks].
	"1- move assignment from <user> current to <user> finished assignments.
	2- Get Global Finished Matrix and add the new finished assignment <aBpmTaskAssignment>.
	3- Generate next transitions for the Process"
	assignmentFinalization executeIt.

	^assignmentFinalization