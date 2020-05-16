distribution
getUnassignedTasksDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self defaultApplicationManagerClass getRolesInAppName: appName) do: [:eachRole | | matrix |
		matrix := eachRole application availableTasksMatrix.
		distribution at: eachRole name put: (matrix getAvailableTasksFor: eachRole name) size].

	^distribution