other
searchMatchingApplications
	| appName |

	appName := self searchValueAt: 'appName'.

	searchApplied := true.

	^searchResult := self session user getBackofficeApplications select: [:each | (appName, '*') match: each applicationName]