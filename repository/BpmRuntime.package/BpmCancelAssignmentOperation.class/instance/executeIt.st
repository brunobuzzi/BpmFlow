action
executeIt
	"The receiver execute all steps to unassign the <BpmTaskAssignment> <assignment> from the <BpmUser> <user>"
	| finishedMatrix |

	assignment isTaken
	ifTrue: []
	ifFalse: [].

	assignment task cancel.
	assignment finalize.
	"remove the assignment from current matrix and is not added to any other matrix because it is cancelled"
	assignment 
		removeFromCurrentMatrix; 
		matrix: nil.

	"add the assignment to finished matrix --> we do not care that it was cancelled because it also finished (but do not generate next transitions)"
	finishedMatrix := self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: assignment applicationName.
	finishedMatrix addAssignment: assignment.


	self sendInformationMessage.