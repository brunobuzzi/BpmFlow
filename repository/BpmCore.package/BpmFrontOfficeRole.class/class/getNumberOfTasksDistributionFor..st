distribution
getNumberOfTasksDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolsInAppName: appName) do: [:eachRole | 
		distribution at: eachRole name put: eachRole numberOfTasks].

	^distribution