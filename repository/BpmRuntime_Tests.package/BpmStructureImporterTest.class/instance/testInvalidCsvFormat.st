other
testInvalidCsvFormat

	structureImporte := BpmStructureImporter newFor: (testRoot getExistingOrNewUserNamed: 'albert') systemRoot: testRoot. 

	structureImporte csvString: '~0HÞr;Éasjflkjsadlfjasdlfj;aldflajsdfljlajdfljlasjf
adsjflajsdflajsdf
alsdkfjlsadf;
adfkjalsdf'.

	[structureImporte importBpmStructure] on: InvalidCsvFormatException do: [:ex | self assert: true]