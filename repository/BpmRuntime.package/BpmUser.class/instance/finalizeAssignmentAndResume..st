assignment
finalizeAssignmentAndResume: aBpmTaskAssignment
	"The receiver finalize the assignment <aBpmTaskAssignment>.
	If the assignment <aBpmTaskAssignment> has performers --> more than one role are going to work with the assignment.
	If the assignment <aBpmTaskAssignment>  has NO performers --> only one role is granted to work with"

	^self finalizeAssignmentAndResume: aBpmTaskAssignment takeNext: false