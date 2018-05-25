charts
renderPossibleTasksBarChartOn: html

	report := self session user reportPossibleTaskDefinitionsQuantity.
	report name: ('Possible per Role (', report getTotalValue printString, ')');
		description: 'Scope: User';
		seriesName: 'Number of Tasks';
		xTitle: 'Role Name';
		yTitle: 'Number of Tasks'. 

	self renderBarChartDistribution: report on: html