distribution
getAverageTimeForTasksSatisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := self getFinishedAssigments select: [:each | conditionBlock value: each process].

	^self getAverageTimeForTasksIn: filteredAssignments