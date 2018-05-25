other
createDistributionReport
	| report |

	report := BpmFrontOfficeRole reportNumberOfUnassignedTasksFor: self scope applicationName.	
	report name: (('Unassigned Tasks per Role (' translateFor: self user), report getTotalValue printString, ')');
		description: (('Scope: Application Role [' translateFor: self user), self scope applicationName,']');
		seriesName: ('Tasks' translateFor: self user);
		xTitle: ('Role Name' translateFor: self user);
		yTitle: ('Number of Tasks' translateFor: self user). 

	^report