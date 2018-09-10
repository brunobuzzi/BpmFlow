distribution
getAverageTimeForTasksIn: aBpmEnvironment from: startDate to: endDate

	^self getAverageTimeForTasksIn: aBpmEnvironment from: startDate to: endDate satisfying: [:e | true]