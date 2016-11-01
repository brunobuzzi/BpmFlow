distribution report
reportProcessInstancesQuantityDistribution
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getApplicationAndProcessInstanceDistribution].
 
	^(AppGlobalDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.