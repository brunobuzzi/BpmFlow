distribution report
reportProcessDefinitionsQuantityDistributionIn: aBpmEnvironment
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getApplicationAndProcessDefinitionDistributionIn: aBpmEnvironment].
 
	^(AppGlobalDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.