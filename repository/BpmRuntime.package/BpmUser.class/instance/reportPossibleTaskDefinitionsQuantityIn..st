distribution report
reportPossibleTaskDefinitionsQuantityIn: aBpmEnvironment
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getPossibleTaskDefinitionsQuantityDistributionIn: aBpmEnvironment].
 
	^(BpmUserDistributionReport userName: self username distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.