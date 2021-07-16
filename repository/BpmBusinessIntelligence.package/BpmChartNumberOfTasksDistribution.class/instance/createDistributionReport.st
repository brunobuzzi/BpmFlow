other
createDistributionReport
	| report |

	report := self systemRoot reportNumberOfTasksDistributionFor: self applicationName.
	report name: (('Task Distribution per Role (' translateFor: self user), report getTotalValue printString, ')');
		description: (('Scope: Application Role [' translateFor: self user), self scope applicationName,']');
		seriesName: ('Instances' translateFor: self user);
		xTitle: ('Role Name' translateFor: self user);
		yTitle: ('Number of Tasks' translateFor: self user).

	^report