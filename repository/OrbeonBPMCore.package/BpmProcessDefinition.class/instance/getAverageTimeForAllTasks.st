distribution
getAverageTimeForAllTasks
	| distribution |

	distribution := OrderPreservingDictionary new.

	self getOrderedTasksNames do: [:taskName | 
		distribution at: taskName put: (self getAverageTimeForTaskNamed: taskName) asSeconds. 
	]. 

	^distribution