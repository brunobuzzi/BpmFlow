other
searchTasksAssignments
	| matrix |

	((self hasSearchValueAt: 'application') and: [(self hasSearchValueAt: 'role')]) 
	ifTrue: [matrix := self getAvailableTasksMatrixClass getMatrixForApplicationNamed: (searchValues at: 'application').
				unassignedTask := matrix getAvailableTasksFor: (searchValues at: 'role').]
	ifFalse: [self searchAll].