distribution
getNumberOfTasksDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self defaultApplicationManagerClass getRolesInAppName: appName) do: [:eachRole | 
		distribution at: eachRole name put: eachRole numberOfTasks].

	^distribution