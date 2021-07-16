statistics role
getNumberOfUsersDistributionFor: appName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolesInAppName: appName) do: [:eachRole | 
		distribution at: eachRole name put: eachRole numberOfUsers].

	^distribution