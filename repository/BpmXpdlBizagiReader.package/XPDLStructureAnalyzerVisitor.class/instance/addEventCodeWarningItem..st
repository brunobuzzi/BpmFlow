warning items creation
addEventCodeWarningItem: aString

	^detectedItems add: 
		(self xpdlItemReportClass new 
				code: 400;
				type: 'Error';
				title: 'Timer Block Error';
				description: aString;
				solution: 'The Timer Block must be a block with two arguments: [:lastExecutedTime :currentTime | ]';
				yourself)