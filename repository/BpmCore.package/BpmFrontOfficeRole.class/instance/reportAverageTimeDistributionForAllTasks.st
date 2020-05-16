distribution
reportAverageTimeDistributionForAllTasks
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForTasks].
 
	^(BpmRoleDistributionReport applicationName: self getApplicationName roleName: self name distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.