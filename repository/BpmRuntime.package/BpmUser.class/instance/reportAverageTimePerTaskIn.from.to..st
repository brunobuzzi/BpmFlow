distribution report
reportAverageTimePerTaskIn: aBpmEnvironment from: startDate to: endDate
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getAverageTimeForTasksIn: aBpmEnvironment from: startDate to: endDate].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.