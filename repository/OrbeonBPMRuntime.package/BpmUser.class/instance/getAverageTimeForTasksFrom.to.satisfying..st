distribution
getAverageTimeForTasksFrom: startDate to: endDate satisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := self getFinishedAssigments select: [:each | ((startDate <= each creationDate) and: [each creationDate <= endDate]) and: [conditionBlock value: each]].

	^self getAverageTimeForTasksIn: filteredAssignments