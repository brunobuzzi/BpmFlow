other
testImportDifferentEnvironmentsByNoAdminUser

	structureImporte := BpmStructureImporter newFor: (testRoot getExistingOrNewUserNamed: 'albert') systemRoot: testRoot. "user is not an admin"

	structureImporte csvString: self csvExample1.

	[structureImporte importBpmStructure] on: ImproperBpmOperationException do: [:ex | self assert: true]