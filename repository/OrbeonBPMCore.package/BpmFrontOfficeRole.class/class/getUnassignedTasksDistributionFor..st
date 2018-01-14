distribution
getUnassignedTasksDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolsInAppName: appName) do: [:eachRole | | matrix |
		matrix := self getMatrixManagerClass getMatrixForApplicationNamed: eachRole getApplicationName.
		distribution at: eachRole name put: (matrix getAvailableTasksFor: eachRole name) size].

	^distribution