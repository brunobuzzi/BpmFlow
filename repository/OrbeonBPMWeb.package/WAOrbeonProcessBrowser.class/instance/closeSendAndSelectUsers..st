process
closeSendAndSelectUsers: aBpmArtifactInstance
	| tasks |

	tasks := OrderedCollection withAll: (selectedLateralItem process executedActivities, selectedLateralItem process currentActivities).
	assignationComposite := WAAssignTasksToUsers parent: self on: tasks.