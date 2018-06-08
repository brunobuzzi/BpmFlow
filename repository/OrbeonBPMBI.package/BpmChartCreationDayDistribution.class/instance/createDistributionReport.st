other
createDistributionReport
	| report |

	report := BpmProcessDefinition reportCreationDayFor: self processName 
								in: self applicationName 
								version: self version 
								from: self startDate 
								to: self endDate  
								satisfying: self queryBlock.

	report name: ('Calendar of Creations' translateFor: self user);
		description: ('Creation of Processes in Calendar' translateFor: self user);
		seriesName: ('Created Processes' translateFor: self user);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Time' translateFor: self user).

	^report