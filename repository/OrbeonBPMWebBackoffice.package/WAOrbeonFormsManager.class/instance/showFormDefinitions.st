other
showFormDefinitions

	selectedDefinitions := OrderedCollection new.
	selectedApplications do: [:eachApp | | app |
		app := self getOrbeonApplicationClass applicationNamed: eachApp.
		selectedDefinitions addAll: app getLastDefinitions.
		].

	batchedList items: selectedDefinitions.