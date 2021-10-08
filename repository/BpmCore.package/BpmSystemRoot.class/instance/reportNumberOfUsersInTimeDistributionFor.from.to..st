statistics role
reportNumberOfUsersInTimeDistributionFor: applicationName from: startDate to: endDate
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getNumberOfUsersInTimeDistributionFor: applicationName from: startDate to: endDate].
 
	^(BpmRoleDistributionReport applicationName: applicationName roleName: nil distribution: distribution)
		startDate: startDate;
		endDate: endDate;
		sumSecondsToConstruct: secondsToRun;
		yourself