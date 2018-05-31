other
createRoleDistributionReport
	| role report |

	role := BpmFrontOfficeRole getRoleNamed: self roleName in: self applicationName.
	report := role reportNumberOfUsersInTimeDistributionFrom: self startDate to: self endDate.

	report name: (('Users in Time (' translateFor: self user), report getTotalValue printString, ')');
		description: (('Scope: Application Role [' translateFor: self user), self applicationName,']','[', role name, ']');
		seriesName: ('Assigned/Unassigned Users' translateFor: self user);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Time' translateFor: self user).

	^report