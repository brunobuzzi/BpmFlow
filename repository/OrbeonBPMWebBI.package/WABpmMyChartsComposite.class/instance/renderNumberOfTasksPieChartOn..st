other
renderNumberOfTasksPieChartOn: html

	report := self session user reportFinishedTaskQuantityFrom: self getStartDate to: self getEndDate satisfying: self queryBlock.
	report name: ('Number of Finished Tasks (', report getTotalValue printString, ')');
		description: 'Scope: User';
		seriesName: 'Tasks';
		xTitle: 'Task Name';
		yTitle: 'Number of Tasks'. 

	self renderPieChartDistribution: report on: html