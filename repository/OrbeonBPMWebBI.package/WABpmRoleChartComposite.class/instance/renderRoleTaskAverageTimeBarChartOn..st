other
renderRoleTaskAverageTimeBarChartOn: html

	report := self getSelectedRole reportAverageTimeDistributionForAllTasks.
	report name: 'Average Time for Role Tasks';
		description: 'Scope: Application Role [', self getApplicationName,']';
		seriesName: 'Time (s)';
		xTitle: 'Role Name';
		yTitle: 'Time (s)'. 

	self renderBarChartDistribution: report on: html