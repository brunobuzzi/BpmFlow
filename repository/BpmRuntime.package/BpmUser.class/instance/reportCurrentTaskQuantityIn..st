distribution report
reportCurrentTaskQuantityIn: aBpmEnvironment
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getCurrentTaskQuantityDistributionIn: aBpmEnvironment].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.