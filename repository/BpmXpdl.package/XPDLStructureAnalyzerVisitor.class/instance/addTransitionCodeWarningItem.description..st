warning items creation
addTransitionCodeWarningItem: aXPDLTransitionNode description: aString

	detectedItems add: (
		self createItemReportType: 'Error'
				code: 404
				xpdlObject: aXPDLTransitionNode
				title: 'Suspicious Code'
				description: aString
				solution: 'Make the Condition send messages only to the process. If it''s a forbidden field name then use #getValueOf: instead.'
				)