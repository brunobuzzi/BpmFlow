warning items creation
addScriptCodeWarningItem: aXPDLScriptNode description: aString

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 124
				xpdlObject: aXPDLScriptNode
				title: 'Task Script Error'
				description: aString
				solution: 'The Script must be a block with two arguments: [:process :script | ]'
				)