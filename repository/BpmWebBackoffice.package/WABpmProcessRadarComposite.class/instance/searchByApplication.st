searching
searchByApplication
	| application |

	selectedObject := nil.
	application := self defaultApplicationManagerClass getAnyApplicationNamed: (self searchValueAt: 'application') ifNone: [nil].
	application ifNil: [^searchCollectionResult := #()].

	self hasFormDefinition ifTrue: [^self searchByApplicationAndFormDefinition].

	searchCollectionResult := application getAvailableTaskAssignments, application getTakenTaskAssignments.

	searchCollectionResult := searchCollectionResult collect: [:each | each process].

	self getProcessType notEmpty ifTrue: [searchCollectionResult := (searchCollectionResult select: [:each | each processName = self getProcessType]) asSet asOrderedCollection].

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [].