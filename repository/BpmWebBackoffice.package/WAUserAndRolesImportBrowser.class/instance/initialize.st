other
initialize

	super initialize.

	self initializeBatchedLists.

	importer := BpmStructureImporter newFor: self session user systemRoot: self session systemRoot.