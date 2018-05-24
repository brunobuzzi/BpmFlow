other
createDistributionReportForSpecificVersion
	| report definition |

	definition := self scope processes last.
	report := definition reportValueDistributionFor: self fieldName in: self formName from: self startDate to: self endDate satisfying: self queryBlock.
	report name: ('Processes Distribution by Field Value' translateFor: self user);
		description: ('Field Distribution', self scope scopeName translateFor: self user);
		seriesName: ('Occurrences' translateFor: self user);
		xTitle: ('Field Value' translateFor: self user);
		yTitle: ('Value Occurrences' translateFor: self user).

	^report