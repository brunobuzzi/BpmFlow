other
getAvailableApplications

	^self getApplicationsCache asOrderedCollection reject: [:each | each hasBpmEnvironment and:[each bpmEnvironment ~~ self selectedEnvironment]]