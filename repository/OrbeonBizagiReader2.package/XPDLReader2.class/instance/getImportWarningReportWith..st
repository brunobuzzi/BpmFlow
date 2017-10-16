other
getImportWarningReportWith: mapperDictionary
	"The receiver generates the import report of the XPDL files.
	1- Do basic checks to the process definition.
	2- Perform checks that require anOrbeon Application, the mapping is done using the mapper <mapperDictionary>"

	importReport := self getImportWarningReport.

	self getAllWorkflows do: [:each | | app |
		app := mapperDictionary at: each getName ifAbsent: [nil].
		app ifNotNil: [
			each appendFormsWithMissingMandatoryFieldsIn: app to: importReport;
				appendNonExistingFormsReportFor: app to: importReport;
				appendNonExistingRolesReportFor: app to: importReport.
		]
			ifNil: [ | itemError |
				itemError := XPDLItemImportReport new type: 'Error';
					title: 'Orbeon Application Not found';
					description: 'Workflow named [',each getName, '] is not mapped to any Orbeon Application';
					solution: 'Rename the XPDL file to match an Orbeon Application';
					yourself.
				importReport add: itemError.
			].
	].