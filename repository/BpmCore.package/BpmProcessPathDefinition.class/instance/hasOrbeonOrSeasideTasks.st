get artifacts
hasOrbeonOrSeasideTasks
	"Answer whether or not the receiver has any Orbeon or Seaside task"

	^self getOrbeonTasks notEmpty or: [self getSeasideTasks notEmpty]