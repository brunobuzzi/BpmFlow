other
testImportDifferentEnvironmentsByNoAdminUser

	structureImporte := BpmStructureImporter newFor: (self defaultBpmUserClass getExistingOrNewUserNamed: 'albert'). "user is not an admin"

	structureImporte csvString: self csvExample1.

	[structureImporte importBpmStructure] on: ImproperBpmOperationException do: [:ex | self assert: true]