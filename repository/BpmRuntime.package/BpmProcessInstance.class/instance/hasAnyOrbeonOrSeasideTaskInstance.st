other
hasAnyOrbeonOrSeasideTaskInstance
	"Answer whether or not the receiver has created any <aBpmOrbeonTaskInstance> or <aBpmSeasideTaskInstance>"

	^(currentActivities anySatisfy: [:each | each isOrbeonTask or: [each isSeasideTask]])
	or: [executedActivities anySatisfy: [:each | each isOrbeonTask or: [each isSeasideTask]]]