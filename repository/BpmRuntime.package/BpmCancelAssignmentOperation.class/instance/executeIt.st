action
executeIt
	"The receiver execute all steps to cancel the <BpmTaskAssignment> <assignment>"
	| finishedMatrix |

	assignment isTaken ifTrue: [user cancelAssignment: assignment in: assignment]. "remove assignment from user Inbox"

	assignment finalize. "put status as #done but is must be #cancelled"
	assignment task cancel. "set the status as #cancelled"

	"remove the assignment from current matrix (available or taken matrix)"
	assignment 
		removeFromCurrentMatrix; 
		matrix: nil.

	"add the assignment to finished matrix --> we do not care that it was cancelled because it also finished (but do not generate next transitions)"
	finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
	finishedMatrix addAssignment: assignment.

	self sendInformationMessage.