other
searchTasksAssignments
	| matrix |

	((self hasSearchValueAt: 'application') and: [(self hasSearchValueAt: 'role')]) 
	ifTrue: [matrix := (self defaultApplicationManagerClass applicationNamed: (searchValues at: 'application')) availableTasksMatrix. 
				unassignedTask := matrix getAvailableTasksFor: (searchValues at: 'role').]
	ifFalse: [self searchAll].