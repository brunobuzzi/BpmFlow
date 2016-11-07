distribution report
reportAverageTimeDistributionForAllTasks
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForAllTasks].
 
	^(BpmProcessDistributionReport processName: processName applicationName: self getApplicationName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.