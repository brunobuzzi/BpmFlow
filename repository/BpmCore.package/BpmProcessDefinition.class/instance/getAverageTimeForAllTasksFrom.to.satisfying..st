distribution
getAverageTimeForAllTasksFrom: startDate to: endDate satisfying: conditionBlock
	"The receiver answer the average time in seconds to execute all tasks from start date <startDate> and end date <endDate> satisfying the condition <conditionBlock>.
	Answer <aDictionary> where the key is the name of the task and the value is the average time in seconds"
	| distribution |

	distribution := OrderPreservingDictionary new.

	self getOrderedTasks do: [:taskDef | 
			distribution 
				at: taskDef name 
				put: (self getAverageTimeForTaskNamed: taskDef name from: startDate to: endDate satisfying: conditionBlock) asSeconds. 
	]. 

	^distribution