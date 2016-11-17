distribution report
reportAverageTimeDistributionForAllTasksFor: aBpmUser from: startDate to: endDate satisfying: conditionBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForAllTasksFrom: startDate to: endDate satisfying: conditionBlock].
 
	^(BpmProcessDistributionReport processName: processName applicationName: self getApplicationName distribution: distribution)
		name: ('Average Time for All Tasks' translateFor: aBpmUser);
		sumSecondsToConstruct: secondsToRun;
		yourself.