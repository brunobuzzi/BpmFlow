statistics process
reportProcessInstancesQuantityDistributionFor: procName in: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getProcessInstanceDistributionFor: procName in: appName].
 
	^(BpmProcessDistributionReport processName: procName applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself.