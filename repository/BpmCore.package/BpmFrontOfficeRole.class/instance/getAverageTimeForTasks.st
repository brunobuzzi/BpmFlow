distribution
getAverageTimeForTasks
	| distribution totalTime |

	distribution := OrderPreservingDictionary new.
	totalTime := 0.
	self tasks do: [:task | 
		distribution at: task name put: (task processDefinition getAverageTimeForTaskNamed: task name) asSeconds.
	].

	^distribution