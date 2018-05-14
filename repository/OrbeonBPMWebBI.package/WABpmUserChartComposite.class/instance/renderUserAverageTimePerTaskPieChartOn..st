other
renderUserAverageTimePerTaskPieChartOn: html

	report := self getSelectedUser reportAverageTimePerTask.
	report name: 'User Tasks Distribution';
		description: 'Scope: User';
		seriesName: 'Tasks';
		xTitle: self getSelectedUser username;
		yTitle: 'Number of Tasks'. 

	self renderPieChartDistribution: report on: html