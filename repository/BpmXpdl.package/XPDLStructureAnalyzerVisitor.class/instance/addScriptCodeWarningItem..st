warning items creation
addScriptCodeWarningItem: aString

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 124
				title: 'Task Script Error'
				description: aString
				solution: 'The Script must be a block with two arguments: [:process :script | ]'
				)