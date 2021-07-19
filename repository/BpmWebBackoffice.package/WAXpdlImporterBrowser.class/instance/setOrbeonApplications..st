other
setOrbeonApplications: anOrderedCollection

	orbeonApplications := anOrderedCollection.

	model := BpmXpdlImportProcess newForApplications: anOrderedCollection in: self session bpmEnvironment root: self session systemRoot