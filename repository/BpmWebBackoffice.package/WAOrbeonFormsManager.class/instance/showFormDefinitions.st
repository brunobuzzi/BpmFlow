other
showFormDefinitions

	selectedDefinitions := OrderedCollection new.
	selectedApplications do: [:eachApp | | app |
		app := self session systemRoot applicationNamed: eachApp.
		selectedDefinitions addAll: app getLastDefinitions.
		].

	batchedList items: selectedDefinitions.