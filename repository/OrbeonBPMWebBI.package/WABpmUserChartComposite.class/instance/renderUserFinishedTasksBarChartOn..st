charts
renderUserFinishedTasksBarChartOn: html

	report := self getSelectedUser reportFinishedTaskQuantity.
	report name: 'Task Distribution per Role';
		description: 'Scope: Application Role';
		seriesName: 'Tasks';
		xTitle: 'Role Name';
		yTitle: 'Number of Tasks'. 

	self renderBarChartDistribution: report on: html