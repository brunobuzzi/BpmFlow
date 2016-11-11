distribution
reportNumberOfUsersDistributionFor: appName
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getNumberOfUsersDistributionFor: appName].
 
	^(BpmRoleDistributionReport applicationName: appName roleName: nil distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself