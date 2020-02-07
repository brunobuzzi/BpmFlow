distribution report
reportProcessInstancesQuantityByVersionDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getTransversalByVersionQuantityFor: appName].
 
	^(BpmApplicationDistributionReport applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		categories: (self defaultApplicationManagerClass applicationNamed: appName ifNone: []) getAllProcessDefinitionsNames"processes names"
		yourself.