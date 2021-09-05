statistics process
reportProcessInstancesQuantityByVersionDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getTransversalByVersionQuantityFor: appName].
 
	^(BpmApplicationDistributionReport applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		categories: (self applicationNamed: appName ifNone: []) getAllProcessDefinitionsNames"processes names"
		yourself.