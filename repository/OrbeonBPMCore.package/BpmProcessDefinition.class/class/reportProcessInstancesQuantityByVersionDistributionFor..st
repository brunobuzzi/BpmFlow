distribution report
reportProcessInstancesQuantityByVersionDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getProcessInstanceDistributionByVersionFor: appName].
 
	^(BpmApplicationDistributionReport applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		categories: distribution keys "version number"
		yourself.