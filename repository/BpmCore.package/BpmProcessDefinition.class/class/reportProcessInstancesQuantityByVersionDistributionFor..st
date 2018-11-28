distribution report
reportProcessInstancesQuantityByVersionDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getTransversalByVersionQuantityFor: appName].
 
	^(BpmApplicationDistributionReport applicationName: appName distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		categories: (self cacheAt: appName ifAbsent: [Dictionary new]) keys asSortedCollection "processes names"
		yourself.