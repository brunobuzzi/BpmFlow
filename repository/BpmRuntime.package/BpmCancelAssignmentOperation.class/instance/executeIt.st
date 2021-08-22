action
executeIt
	"The receiver execute all steps to cancel the <BpmTaskAssignment> <assignment>"
	| finishedMatrix |

	assignment isTaken ifTrue: [user moveFromCurrentToFinished: assignment in: self bpmEnvironment]. "the assignment was cancelled but the user has worked on it (possibly) --> is moved to finished"

	assignment finalize. "put status as #done but is must be #cancelled"
	assignment task cancel. "set the status as #cancelled"

	"remove the assignment from current matrix (available or taken matrix)"
	assignment 
		removeFromCurrentMatrix; 
		matrix: nil.

	"add the assignment to finished matrix --> we do not care that it was cancelled because it also finished (but do not generate next transitions)"
	finishedMatrix := assignment application finishedTasksMatrix.
	finishedMatrix addAssignment: assignment.

	self sendInformationMessage.