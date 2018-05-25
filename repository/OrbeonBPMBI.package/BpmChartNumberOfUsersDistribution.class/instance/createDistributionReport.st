other
createDistributionReport
	| report |

	report := BpmFrontOfficeRole reportNumberOfUsersDistributionFor: self scope applicationName.
	report name: (('Users Distribution per Role (' translateFor: self user), report getTotalValue printString, ')');
		description: (('Scope: Application Role [' translateFor: self user), self scope applicationName,']');
		seriesName: ('Users' translateFor: self user);
		xTitle: ('Role Name' translateFor: self user);
		yTitle: ('Number of Users' translateFor: self user).

	^report