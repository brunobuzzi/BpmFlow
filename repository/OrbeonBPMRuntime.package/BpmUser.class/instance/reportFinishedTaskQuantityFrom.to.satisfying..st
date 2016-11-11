distribution report
reportFinishedTaskQuantityFrom: startDate to: endDate satisfying: conditionBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getFinishedTaskQuantityDistributionFrom: startDate to: endDate satisfying: conditionBlock].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.