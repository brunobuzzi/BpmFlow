other
createDistributionReport
	| report |

	report := BpmProcessDefinition reportValueSumDistributionFor: self processName 
								in: self applicationName 
								fieldNamed: (self fieldName allButLast: 3)
								from: self startDate 
								to: self endDate  
								satisfying: self queryBlock.

	report name: ('Field Value Evolution' translateFor: self user);
		description: ('Evolution in Time' translateFor: self user);
		seriesName: ('Total' translateFor: self user);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Summatory' translateFor: self user).

	^report