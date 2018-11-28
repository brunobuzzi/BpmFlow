other
createDistributionReport
	| report |

	report := BpmProcessDefinition reportProcessAverageTimeDistributionFor: self processName in: self applicationName.
	report name: (('Average Time of Process Versions: [' translateFor: self user), self applicationName ,'][',self processName,']');
		description: ('Scope: Process Versions' translateFor: self user);
		seriesName: ('Time (s)' translateFor: self user);
		xTitle: ('Version' translateFor: self user);
		yTitle: ('Time in seconds' translateFor: self user). 

	^report