other
createDistributionReport
	| report processDefinition application values |

	application := self defaultApplicationManagerClass applicationNamed: self applicationName ifNone: [^nil].
	processDefinition := application getProcessesNamed: self processName version: self version ifNone: [^nil].
	values := processDefinition getAllCurrentValuesForFieldNamed: self fieldName of: self formName.

	report := processDefinition reportValueSumMultiDistributionForFieldNamed: (self fieldName allButLast: 3) values: values from: self startDate to: self endDate satisfying: self queryBlock.

	report name: ('Field Values Comparison' translateFor: self user);
		description: (('Total: ' translateFor: self user), report getTotalValue printString);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Summatory' translateFor: self user);
		xAxisIsDate: true. 

	^report