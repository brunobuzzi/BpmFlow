process
closeSendAndSelectUsers: aBpmArtifactInstance
	| assignmentFinalization currentActivities newTasks |

"	self inform: 'Not Implemented Yet'."
	currentActivities := OrderedCollection withAll: (selectedLateralItem process currentActivities asArray remove: aBpmArtifactInstance; yourself).

	assignmentFinalization := self session user finalizeAssignment: selectedLateralItem.

	newTasks := selectedLateralItem process currentActivities asArray removeAll: currentActivities; yourself.

	newTasks ifEmpty: [^self].

	assignationComposite := WAAssignTasksToUsers parent: self on: newTasks.