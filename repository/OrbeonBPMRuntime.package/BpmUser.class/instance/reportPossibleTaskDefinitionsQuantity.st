distribution report
reportPossibleTaskDefinitionsQuantity
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getPossibleTaskDefinitionsQuantityDistribution].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.