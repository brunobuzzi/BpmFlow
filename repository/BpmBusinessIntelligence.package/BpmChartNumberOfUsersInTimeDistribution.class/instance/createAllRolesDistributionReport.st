other
createAllRolesDistributionReport
	| report |

	report := self systemRoot reportNumberOfUsersInTimeDistributionFor: self applicationName from: self startDate to: self endDate.

	report name: (('Users in Time (' translateFor: self user), report getTotalValue printString, ')');
		description: (('Scope: Application Role [' translateFor: self user), self applicationName,']');
		seriesName: ('Assigned/Unassigned Users' translateFor: self user);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Time' translateFor: self user).

	^report