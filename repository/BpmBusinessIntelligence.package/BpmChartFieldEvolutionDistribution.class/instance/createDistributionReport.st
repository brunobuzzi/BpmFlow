other
createDistributionReport
	| report |

	report := self systemRoot reportValueSumDistributionFor: self processName 
								in: self applicationName 
								fieldNamed: (self fieldName allButLast: 3)
								from: self startDate 
								to: self endDate  
								satisfying: self queryBlock.

	report name: ('Field Value Evolution' translateFor: self user);
		description: (('Total: ' translateFor: self user), report getTotalValue printString);
		seriesName: report fieldName;
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Summatory' translateFor: self user);
		xAxisIsDate: true. 

	^report