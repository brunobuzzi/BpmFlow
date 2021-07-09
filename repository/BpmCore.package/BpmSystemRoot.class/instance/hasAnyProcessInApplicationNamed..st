applications
hasAnyProcessInApplicationNamed: appName

	^self getAllApplications anySatisfy: [:each | each applicationName = appName]