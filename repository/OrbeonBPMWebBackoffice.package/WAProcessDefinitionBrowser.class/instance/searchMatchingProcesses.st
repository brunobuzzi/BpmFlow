search area
searchMatchingProcesses

	selectedLateralItem := nil.
	searchApplied := true.

	((searchValues includesKey: 'id') and: [(searchValues at: 'id') notEmpty])
	ifTrue: [^self searchByProcessId].

	(((searchValues includesKey: 'application') and: [(searchValues at: 'application') notEmpty]) and: [(searchValues at: 'process-type') = self viewAllText])
	ifTrue: [^self searchByApplication].

	(((searchValues includesKey: 'process-type') and: [(searchValues at: 'process-type') ~= self viewAllText]) and: [(searchValues at: 'form-type') = self viewAllText])
	ifTrue: [^self searchByProcessType].

	((searchValues includesKey: 'form-type') and: [(searchValues at: 'form-type') ~= self viewAllText])
	ifTrue: [^self searchByFormType].

	^searchResult := lateralCollection