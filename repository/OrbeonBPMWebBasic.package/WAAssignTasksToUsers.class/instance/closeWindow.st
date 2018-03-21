close
closeWindow

	assignationTable keysAndValuesDo: [:taskInstance :bpmUser | | assignment availableAssignments |
		availableAssignments := bpmUser getAllAvailableTaskAssignments.
		assignment := taskInstance getAssignment.
		(assignment notNil and: [availableAssignments includes: assignment]) ifTrue: [bpmUser take: assignment].
	].

	mainPanel clearAssignationCompostite. "set <assignationComposite> to <nil>"
	assignationTable notEmpty ifTrue: [mainPanel removeSelectionAndRefreshLateralCollection].