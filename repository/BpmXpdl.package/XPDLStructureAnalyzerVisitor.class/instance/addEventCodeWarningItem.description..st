warning items creation
addEventCodeWarningItem: aXPDLIntermediateNode description: aString

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 400
				xpdlObject: aXPDLIntermediateNode
				title: 'Timer Block Error'
				description: aString
				solution: 'The Timer Block must be a block with two arguments: [:lastExecutedTime :currentTime | ]')