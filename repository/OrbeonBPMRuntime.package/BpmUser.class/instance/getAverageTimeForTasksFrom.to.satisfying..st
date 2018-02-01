distribution
getAverageTimeForTasksFrom: startDate to: endDate satisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := self getFinishedAssignments select: [:each | ((startDate <= each creationDate) and: [each creationDate <= endDate]) and: [conditionBlock asBpmBlock value: each process]].

	^self getAverageTimeForTasksIn: filteredAssignments