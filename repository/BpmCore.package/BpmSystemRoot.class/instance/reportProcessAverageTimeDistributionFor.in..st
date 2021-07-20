statistics process
reportProcessAverageTimeDistributionFor: procName in: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getVersionsAverageTimeFor: procName in: appName].
 
	^(BpmProcessDistributionReport processName: procName applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.