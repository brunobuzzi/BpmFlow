distribution
getAverageTimeForAllTasksIn: aBpmEnvironment

	^self getAverageTimeForTasksIn: (self getFinishedAssignmentsIn: aBpmEnvironment)