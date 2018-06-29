other
setSelectedField: aBpmReportFieldDescriptor value: aBoolean

	aBoolean 
	ifTrue: [chartDefinition distribution removeFieldDescrition: aBpmReportFieldDescriptor]