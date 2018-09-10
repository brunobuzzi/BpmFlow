distribution
getAverageTimeForTasksIn: aBpmEnvironment from: startDate to: endDate satisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := (self getFinishedAssignmentsIn: aBpmEnvironment) 
		select: [:each | ((startDate <= each creationDate) and: [each creationDate <= endDate]) and: [conditionBlock asBpmBlock value: each process]].

	^self getAverageTimeForTasksIn: filteredAssignments