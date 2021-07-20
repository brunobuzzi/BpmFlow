statistics process
reportProcessInstancesQuantityDistributionIn: aBpmEnvironment
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getApplicationAndProcessInstanceDistributionIn: aBpmEnvironment].
 
	^(AppGlobalDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.