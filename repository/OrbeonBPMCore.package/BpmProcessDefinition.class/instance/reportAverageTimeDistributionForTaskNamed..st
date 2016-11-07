distribution report
reportAverageTimeDistributionForTaskNamed: taskName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForTaskNamed: taskName].
 
	^(BpmProcessDistributionReport processName: processName applicationName: self getApplicationName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.