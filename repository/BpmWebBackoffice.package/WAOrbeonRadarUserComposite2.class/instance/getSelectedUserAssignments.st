free transitions
getSelectedUserAssignments

	^(selectedObject getCurrentAssignmentsIn: self session bpmEnvironment) asOrderedCollection