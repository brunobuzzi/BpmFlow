other
createDistributionReport
	| report |

	report := self defaultFrontOfficeRoleClass reportNumberOfUsersDistributionFor: self applicationName.
	report name: (('Users Distribution per Role (' translateFor: self user), report getTotalValue printString, ')');
		description: (('Scope: Application Role [' translateFor: self user), self applicationName,']');
		seriesName: ('Users' translateFor: self user);
		xTitle: ('Role Name' translateFor: self user);
		yTitle: ('Number of Users' translateFor: self user).

	^report