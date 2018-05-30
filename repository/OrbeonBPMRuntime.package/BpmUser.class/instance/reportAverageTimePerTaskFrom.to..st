distribution report
reportAverageTimePerTaskFrom: startDate to: endDate
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForTasksFrom: startDate to: endDate].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.