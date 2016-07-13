searching
searchByApplication
	| app |

	selectedObject := nil.
	self hasSelectedApplication ifFalse: [^self].
	self hasFormDefinition ifTrue: [^self searchByApplicationAndFormDefinition].

	app := self searchValueAt: 'application'.
	searchCollectionResult :=
		app ifNotNil: [BpmRunningTasksMatrix 
								getAllAvailableTaskAssignmentsIn: 
									(OrderedCollection with: 
										(self getApplicationManagerClass getAnyApplicationNamed: app ifNone: [#()])).]
		ifNil: [#()].

	searchCollectionResult := searchCollectionResult collect: [:each | each process].

	searchValues 
		removeKey: 'form-definition' ifAbsent: [];
		removeKey: 'form-field' ifAbsent: [].