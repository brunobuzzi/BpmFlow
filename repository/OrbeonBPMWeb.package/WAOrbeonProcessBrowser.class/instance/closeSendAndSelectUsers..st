process
closeSendAndSelectUsers: aBpmArtifactInstance
	| assignmentFinalization |

	self inform: 'Not Implemented Yet'.
"
	assignmentFinalization := self session user finalizeAssignment: selectedLateralItem.

	assignationComposite := WAAssignTasksToUsers parent: self on: assignmentFinalization getNextTasks.
"