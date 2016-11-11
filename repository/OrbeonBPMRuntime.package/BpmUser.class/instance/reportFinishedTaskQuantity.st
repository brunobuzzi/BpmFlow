distribution report
reportFinishedTaskQuantity
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getFinishedTaskQuantityDistribution].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.