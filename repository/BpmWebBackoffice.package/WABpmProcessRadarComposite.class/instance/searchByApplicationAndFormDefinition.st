searching
searchByApplicationAndFormDefinition
	| application |
	 "searchCollectionResult := OrbeonFormProcessDefinition getProcessInstancesOf: self getSelectedApplication ofFormNamed: self getSelectedFormDefinition."

	application := self defaultApplicationManagerClass getAnyApplicationNamed: (self searchValueAt: 'application') ifNone: [nil].
	application ifNil: [^searchCollectionResult := #()].

	searchCollectionResult := (self defaultAvailableTasksMatrixClass getAllAvailableTaskAssignmentsInApplications: (OrderedCollection with: application)) ,
										(self getTakenTasksMatrixClass getAllAvailableTaskAssignmentsInApplications: (OrderedCollection with: application)).

	searchCollectionResult := ((searchCollectionResult select: [:each | each process hasCurrentActivityNamed: self getSelectedFormDefinition])
											collect: [:each | each process]) asSet asOrderedCollection