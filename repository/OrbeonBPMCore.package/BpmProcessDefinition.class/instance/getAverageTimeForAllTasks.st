distribution
getAverageTimeForAllTasks
	| distribution |

	distribution := OrderPreservingDictionary new.

	"(self getOrderedTasks reject: [:each | each isSubprocessDefinition])" self getOrderedTasks do: [:taskDef | 
		distribution at: taskDef name put: (self getAverageTimeForTaskNamed: taskDef name) asSeconds. 
	]. 

	^distribution