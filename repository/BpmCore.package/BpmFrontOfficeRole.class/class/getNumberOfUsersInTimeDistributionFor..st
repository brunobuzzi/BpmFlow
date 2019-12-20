distribution
getNumberOfUsersInTimeDistributionFor: applicationName
	| distribution |

	distribution := OrderPreservingDictionary new.
	(self getRolsInAppName: applicationName)