distribution
getNumberOfUsersDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self defaultApplicationManagerClass getRolesInAppName: appName) do: [:eachRole | 
		distribution at: eachRole name put: eachRole numberOfUsers].

	^distribution