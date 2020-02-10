searching
searchByApplicationAndFormDefinition
	| application |
	 "searchCollectionResult := OrbeonFormProcessDefinition getProcessInstancesOf: self getSelectedApplication ofFormNamed: self getSelectedFormDefinition."

	application := self defaultApplicationManagerClass applicationNamed: (self searchValueAt: 'application') ifNone: [nil].
	application ifNil: [^searchCollectionResult := #()].

	searchCollectionResult := application getAvailableTaskAssignments, application getTakenTaskAssignments.

	searchCollectionResult := ((searchCollectionResult select: [:each | each process hasCurrentActivityNamed: self getSelectedFormDefinition])
											collect: [:each | each process]) asSet asOrderedCollection