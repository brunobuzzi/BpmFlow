distribution report
reportProcessDefinitionsQuantityDistribution
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getApplicationAndProcessDefinitionDistribution].
 
	^(AppGlobalDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.