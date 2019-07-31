close
closeWindow

	assignationTable keysAndValuesDo: [:taskInstance :bpmUser | | assignment availableAssignments |
		availableAssignments := bpmUser getAllAvailableTaskAssignmentsIn: self session bpmEnvironment.
		assignment := taskInstance assignment.
		(assignment notNil and: [availableAssignments includes: assignment]) ifTrue: [bpmUser take: assignment].
	].

	mainPanel clearAssignationCompostite. "set <assignationComposite> to <nil>"
	assignationTable notEmpty ifTrue: [mainPanel removeSelectionAndRefreshLateralCollection].