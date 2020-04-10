other
createDistributionReport
	| report values |

	values := Set new.
	self scope processes do: [:procDef | values addAll: (procDef getAllCurrentValuesForFieldNamed: self fieldName of: self formName)].

	report := self defaultProcessDefinitionClass reportValueSumMultiDistributionFor: self scope processes fieldNamed: (self fieldName allButLast: 3) values: values from: self startDate to: self endDate satisfying: self queryBlock.

	report name: ('Field Values Comparison' translateFor: self user);
		description: (('Total: ' translateFor: self user), report getTotalValue printString);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Summatory' translateFor: self user);
		xAxisIsDate: true. 

	^report