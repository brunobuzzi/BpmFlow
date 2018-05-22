other
showChart

	super showChart.

	self isAverageTaskTimeDistribution ifTrue: [self drawAverageTaskTimeChart].