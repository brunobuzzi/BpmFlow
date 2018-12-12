warning items creation
addTransitionCodeWarningItem: aString

	detectedItems add: 
		(self xpdlItemReportClass new 
				code: 404;
				type: 'Error';
				title: 'Suspicious Code';
				description: aString;
				solution: 'Make the Condition send messages only to the process. If it''s a forbidden field name then use #getValueOf: instead.';
				yourself)