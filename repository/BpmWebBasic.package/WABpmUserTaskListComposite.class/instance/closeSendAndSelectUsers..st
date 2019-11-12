other
closeSendAndSelectUsers: aBpmArtifactInstance
	| assignmentFinalization currentActivities newTasks |

"	currentActivities := OrderedCollection withAll: (selectedLateralItem process currentActivities asArray remove: aBpmArtifactInstance; yourself).

	assignmentFinalization := self session user finalizeAssignment: selectedLateralItem.

	newTasks := selectedLateralItem process currentActivities asArray removeAll: currentActivities; yourself.

	newTasks ifEmpty: [^self]."

	assignationComposite := WAAssignTasksToUsers parent: self.
	assignationComposite taskToFinish: aBpmArtifactInstance;
		assignmentToFinish: model.