warning items creation
addMissingAppicationItem: aXPDLObject description: aString

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 600
				xpdlObject: aXPDLObject
				title: 'Orbeon Application Not found'
				description: 'Workflow named [', aString, '] is not mapped to any Orbeon Application'
				solution: 'Rename the XPDL file to match an Orbeon Application or selected a different Application'
				)