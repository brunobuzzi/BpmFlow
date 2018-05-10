other
showChart

	self isFinishedTaskTypeQuantityDistribution ifTrue: [self drawFinishedTaskTypeQuantityChart].

	self isCurrentTaskTypeQuantityDistribution ifTrue: [self drawCurrentTaskTypeQuantityChart].

	self isAverageTaskTimeDistribution ifTrue: [self drawAverageTaskTimeChart].