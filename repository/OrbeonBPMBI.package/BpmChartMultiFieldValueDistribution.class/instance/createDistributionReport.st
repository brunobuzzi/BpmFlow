other
createDistributionReport
	| report |

	report := BpmProcessDefinition reportValueSumMultiDistributionFor: fieldsCollection.

	report name: ('Multi Field Value Evolution' translateFor: self user);
		description: (('Total: ' translateFor: self user), report getTotalValue printString);
		xTitle: ('Time' translateFor: self user);
		yTitle: ('Summatory' translateFor: self user);
		xAxisIsDate: true. 

	^report