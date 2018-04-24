searching
searchByApplicationAndFormDefinition
	| application |
	 "searchCollectionResult := OrbeonFormProcessDefinition getProcessInstancesOf: self getSelectedApplication ofFormNamed: self getSelectedFormDefinition."

	application := self getApplicationManagerClass getAnyApplicationNamed: (self searchValueAt: 'application') ifNone: [nil].
	application ifNil: [^searchCollectionResult := #()].

	searchCollectionResult := (self getAvailableTasksMatrixClass getAllAvailableTaskAssignmentsIn: (OrderedCollection with: application)) ,
										(self getTakenTasksMatrixClass getAllAvailableTaskAssignmentsIn: (OrderedCollection with: application)).

	searchCollectionResult := ((searchCollectionResult select: [:each | each process hasCurrentActivityNamed: self getSelectedFormDefinition])
											collect: [:each | each process]) asSet asOrderedCollection