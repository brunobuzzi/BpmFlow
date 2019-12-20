distribution
getAverageTimeForAllTasks
	"The receiver answer the average time in seconds to execute all tasks.
	Answer <aDictionary> where the key is the name of the task and the value is the average time in seconds"
	| distribution |

	distribution := OrderPreservingDictionary new.

	self getOrderedTasks do: [:taskDef | 
		distribution 
			at: taskDef name 
			put: (self getAverageTimeForTaskNamed: taskDef name) asSeconds. 
	]. 

	^distribution