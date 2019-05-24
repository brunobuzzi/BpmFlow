other
initialize

	super initialize.

	self initializeBatchedLists.

	fileRows := Dictionary new.

	importer := BpmStructureImporter new.