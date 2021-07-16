statistics role
getNumberOfTasksDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolesInAppName: appName) do: [:eachRole | 
		distribution at: eachRole name put: eachRole numberOfTasks].

	^distribution