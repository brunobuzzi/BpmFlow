distribution
getAverageTimeForTasksSatisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := self getFinishedAssigments select: [:each | conditionBlock asBpmBlock value: each process].

	^self getAverageTimeForTasksIn: filteredAssignments