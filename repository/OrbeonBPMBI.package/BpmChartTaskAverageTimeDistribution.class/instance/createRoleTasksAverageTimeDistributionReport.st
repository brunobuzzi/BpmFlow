other
createRoleTasksAverageTimeDistributionReport
	| report |

	report := self scope role reportAverageTimeDistributionForAllTasks.
	report name: ('Average Time for Role Tasks' translateFor: self user);
		description: (('Scope: Application Role [' translateFor: self user), self applicationName,']');
		seriesName: ('Time (s)' translateFor: self user);
		xTitle: ('Role Name' translateFor: self user);
		yTitle: ('Time (s)' translateFor: self user). 

	^report