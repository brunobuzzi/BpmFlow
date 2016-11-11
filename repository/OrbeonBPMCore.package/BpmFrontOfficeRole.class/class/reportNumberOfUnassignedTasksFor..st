distribution
reportNumberOfUnassignedTasksFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getUnassignedTasksDistributionFor: appName].
 
	^(BpmRoleDistributionReport applicationName: nil roleName: nil distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself