distribution
getNumberOfUsersInTimeDistributionFor: applicationName from: startDate to: endDate
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolsInAppName: applicationName) do: [:eachRole | 
		eachRole addTo: distribution numberOfUsersInTimeDistributionFrom: startDate to: endDate.
	].

	^distribution