action
executeIt
	"The receiver finalize it's assignment <aBpmTaskAssignment> and the finalizer is the <BpmUser> <user>"
	| takenMatrix |

	"a manager has untaken the assignment from the receiver --> the assignment can NOT be finalized by the receiver"
	(assignment user == user) ifFalse: [^self].

	"remove the assignment from taken matrix"
	takenMatrix := assignment process getTakenProcessMatrix.
	takenMatrix removeAssignment: assignment.

	"regular assignment with one role only"
	assignment hasPerformers ifFalse: [^self finalizeAssignment]. 

	"more than one role is going to work with this assignment "
	assignment incrementPerformerCounter.
	assignment isFinishedByPerformers ifTrue: [^self finalizeAssignment].

	user moveFromCurrentToFinished: assignment in: self bpmEnvironment. "finalized by a Performer (NOT all performers have worked on the task)"
	assignment addToAvailableMatrixForNextPerformer.

	^self "assignment not finalized"