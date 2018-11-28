distribution
getNumberOfUsersDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolsInAppName: appName) do: [:eachRole | 
		distribution at: eachRole name put: eachRole numberOfUsers].

	^distribution