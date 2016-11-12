distribution
getAverageTimeForAllTasksFrom: startDate to: endDate satisfying: conditionBlock
	| distribution |

	distribution := OrderPreservingDictionary new.

	self getOrderedTasks do: [:taskDef | 
			distribution 
				at: taskDef name 
				put: (self getAverageTimeForTaskNamed: taskDef name from: startDate to: endDate satisfying: conditionBlock) asSeconds. 
	]. 

	^distribution