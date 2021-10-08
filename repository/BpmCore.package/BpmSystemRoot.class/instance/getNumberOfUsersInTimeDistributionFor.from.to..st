statistics role
getNumberOfUsersInTimeDistributionFor: applicationName from: startDate to: endDate
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self defaultApplicationManagerClass getRolesInAppName: applicationName) do: [:eachRole | 
		eachRole addTo: distribution numberOfUsersInTimeDistributionFrom: startDate to: endDate.
	].

	^distribution