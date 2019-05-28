other
testInvalidCsvFormat

	structureImporte := BpmStructureImporter newFor: (self defaultBpmUserClass getExistingOrNewUserNamed: 'albert'). 

	structureImporte csvString: '~0HÞr;Éasjflkjsadlfjasdlfj;aldflajsdfljlajdfljlasjf
adsjflajsdflajsdf
alsdkfjlsadf;
adfkjalsdf'.

	[structureImporte importBpmStructure] on: InvalidCsvFormatException do: [:ex | self assert: true]