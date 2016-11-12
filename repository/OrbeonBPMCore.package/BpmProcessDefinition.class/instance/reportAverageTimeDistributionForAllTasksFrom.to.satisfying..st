distribution report
reportAverageTimeDistributionForAllTasksFrom: startDate to: endDate satisfying: conditionBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForAllTasksFrom: startDate to: endDate satisfying: conditionBlock].
 
	^(BpmProcessDistributionReport processName: processName applicationName: self getApplicationName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.