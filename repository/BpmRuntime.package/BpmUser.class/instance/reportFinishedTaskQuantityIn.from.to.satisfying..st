distribution report
reportFinishedTaskQuantityIn: aBpmEnvironment from: startDate to: endDate satisfying: conditionBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getFinishedTaskQuantityDistributionIn: aBpmEnvironment from: startDate to: endDate satisfying: conditionBlock].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.