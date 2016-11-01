distribution report
reportProcessInstancesQuantityDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getProcessInstanceDistributionFor: appName].
 
	^(BpmApplicationDistributionReport applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.