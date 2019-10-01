warning items creation
addLoopConditionCodeWarningItem: aXPDLActivityNode description: aString

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 404
				xpdlObject: aXPDLActivityNode
				title: 'Suspicious Code'
				description: aString
				solution: 'Make the Condition send messages only to the process. If it''s a forbidden field name then use #getValueOf: instead.'
				)