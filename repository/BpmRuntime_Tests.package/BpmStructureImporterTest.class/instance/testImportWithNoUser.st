other
testImportWithNoUser

	structureImporte := BpmStructureImporter newFor: nil. "user is non existent"

	structureImporte csvString: self csvExample1.

	[structureImporte importBpmStructure] on: ImproperBpmOperationException do: [:ex | self assert: true]