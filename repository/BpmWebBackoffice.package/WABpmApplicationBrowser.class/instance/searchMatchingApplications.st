other
searchMatchingApplications
	| appName |

	appName := self searchValueAt: 'appName' ifAbsent: [''].

	searchApplied := true.

	^searchResult := (self session user getBackofficeApplicationsIn: self session bpmEnvironment) select: [:each | (appName, '*') match: each applicationName]