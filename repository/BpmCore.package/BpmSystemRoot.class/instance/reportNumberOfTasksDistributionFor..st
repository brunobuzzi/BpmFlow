statistics role
reportNumberOfTasksDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getNumberOfTasksDistributionFor: appName].
 
	^(BpmRoleDistributionReport applicationName: appName roleName: nil distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself