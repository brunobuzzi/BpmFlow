searching
searchByApplication
	| app |

	selectedObject := nil.
	self hasSelectedApplication ifFalse: [^self].
	self hasFormDefinition ifTrue: [^self searchByApplicationAndFormDefinition].

	app := self searchValueAt: 'application'.
	searchCollectionResult :=
		app ifNotNil: [self getMatrixManagerClass 
								getAllAvailableTaskAssignmentsIn: 
									(OrderedCollection with: 
										(self getApplicationManagerClass getAnyApplicationNamed: app ifNone: [#()])).]
		ifNil: [#()].

	searchCollectionResult := searchCollectionResult collect: [:each | each process].

	self getProcessType notEmpty ifTrue: [searchCollectionResult := searchCollectionResult select: [:each | each processName = self getProcessType] ].

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [].