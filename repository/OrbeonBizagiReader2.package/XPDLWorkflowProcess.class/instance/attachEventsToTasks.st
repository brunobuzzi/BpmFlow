components creation
attachEventsToTasks
	"The receiver add attached events to task as defined in Bizagi"

	self getIntermediateAttachedEvents do: [:each |
		(self getActivityNodeWithId: each getTargetId)
		ifNotNil: [:activity | 
			activity attachEvent: each.
		].
	].