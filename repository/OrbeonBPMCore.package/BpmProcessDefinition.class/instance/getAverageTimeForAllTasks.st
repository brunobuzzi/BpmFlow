distribution
getAverageTimeForAllTasks
	| distribution |

	distribution := OrderPreservingDictionary new.

	self getOrderedTasks do: [:taskDef | 
		distribution 
			at: taskDef name 
			put: (self getAverageTimeForTaskNamed: taskDef name) asSeconds. 
	]. 

	^distribution