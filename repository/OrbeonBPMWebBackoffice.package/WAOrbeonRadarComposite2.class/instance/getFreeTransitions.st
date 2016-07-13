other
getFreeTransitions

	selectedObject ifNil: [^#()].

	^selectedObject getAllAvailableTaskAssignments