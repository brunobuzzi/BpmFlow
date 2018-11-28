import checks
getIsolatedActivitiesNodes

	^activities select: [:each | each hasNoInOrOutTransitions]