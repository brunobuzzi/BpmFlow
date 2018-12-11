warning items creation
addUnsupportedBusinessRuleTasktItem

	detectedItems add: (
		self xpdlItemReportClass new 
			code: 704;
			type: 'Error';
			title: 'Unsupported Element';
			description: 'Business Rules Tasks are NOT supported' ;
			solution: 'Change the Task Type';
			yourself)