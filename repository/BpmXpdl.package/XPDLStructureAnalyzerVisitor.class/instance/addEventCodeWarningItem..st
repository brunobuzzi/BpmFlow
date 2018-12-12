warning items creation
addEventCodeWarningItem: aString

	detectedItems add: (
		self createItemReportType: 'Error' 
				code: 400
				title: 'Timer Block Error'
				description: aString
				solution: 'The Timer Block must be a block with two arguments: [:lastExecutedTime :currentTime | ]')