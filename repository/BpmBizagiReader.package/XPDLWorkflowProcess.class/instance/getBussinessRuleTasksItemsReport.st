import unsupported items
getBussinessRuleTasksItemsReport

	^self createtemsReportForElementSatisfying: [:each | each isBusinessRuleTaskNode] 
			code: 704
			title: 'Unsupported Element' 
			description: 'Business Rules Tasks are NOT supported' 
			solution: 'Change the Task Type'