distribution
getUnassignedTasksDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self defaultApplicationManagerClass getRolesInAppName: appName) do: [:eachRole | | matrix |
		matrix := self defaultAvailableTasksMatrixClass getMatrixForApplicationNamed: eachRole getApplicationName.
		distribution at: eachRole name put: (matrix getAvailableTasksFor: eachRole name) size].

	^distribution