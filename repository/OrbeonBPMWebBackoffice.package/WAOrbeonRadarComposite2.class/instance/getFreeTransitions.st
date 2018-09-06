other
getFreeTransitions

	selectedObject ifNil: [^#()].

	^selectedObject getAllAvailableTaskAssignmentsIn: self session bpmEnvironment