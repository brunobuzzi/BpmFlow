distribution
getAverageTimeForTasksIn: aBpmEnvironment satisfying: conditionBlock
	| filteredAssignments |

	filteredAssignments := (self getFinishedAssignmentsIn: aBpmEnvironment) select: [:each | conditionBlock asBpmBlock value: each process].

	^self getAverageTimeForTasksIn: filteredAssignments