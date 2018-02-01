distribution
getAverageTimeForTasksSatisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := self getFinishedAssignments select: [:each | conditionBlock asBpmBlock value: each process].

	^self getAverageTimeForTasksIn: filteredAssignments