distribution report
reportNumberOfUsersInTimeDistributionFrom: startDate to: endDate
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self addTo: OrderPreservingDictionary new numberOfUsersInTimeDistributionFrom: startDate to: endDate].
 
	^(BpmRoleDistributionReport applicationName: self getApplicationName roleName: name distribution: distribution)
		roleName: name; 
		startDate: startDate;
		endDate: endDate;
		sumSecondsToConstruct: secondsToRun;
		yourself