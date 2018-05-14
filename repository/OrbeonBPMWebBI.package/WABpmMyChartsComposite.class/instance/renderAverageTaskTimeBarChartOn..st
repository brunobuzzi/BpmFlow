other
renderAverageTaskTimeBarChartOn: html

	report := self session user reportAverageTimePerTaskFrom: self getStartDate to: self getEndDate satisfying: self queryBlock.
	report name: 'Average Time per Task';
		description: 'Scope: User';
		seriesName: 'Time';
		xTitle: 'Task Name';
		yTitle: 'Time'. 

	self renderBarChartDistribution: report on: html