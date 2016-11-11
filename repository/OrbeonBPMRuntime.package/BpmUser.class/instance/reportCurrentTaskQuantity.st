distribution report
reportCurrentTaskQuantity
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getCurrentTaskQuantityDistribution].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.