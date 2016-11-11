distribution
getAverageTimeForTasksFrom: startDate to: endDate

	^self getAverageTimeForTasksFrom: startDate to: endDate satisfying: [:e | true]