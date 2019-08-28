warning items creation
addLoopConditionCodeWarningItem: aString

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 404
				title: 'Suspicious Code'
				description: aString
				solution: 'Make the Condition send messages only to the process. If it''s a forbidden field name then use #getValueOf: instead.'
				)