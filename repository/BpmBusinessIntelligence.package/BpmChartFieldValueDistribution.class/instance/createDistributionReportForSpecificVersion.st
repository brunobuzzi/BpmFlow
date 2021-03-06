other
createDistributionReportForSpecificVersion
	| report definition error |

	definition := self scope processes last.
	report := definition reportValueDistributionFor: self fieldName in: self formName from: self startDate to: self endDate satisfying: self queryBlock onError: [:ex | error := ex].
	report name: ('Field Value Distribution' translateFor: self user);
		exception: error;
		description: ('Processes Distribution by Field Value' translateFor: self user);
		seriesName: ('Occurrences' translateFor: self user);
		xTitle: ('Field Value' translateFor: self user);
		yTitle: ('Value Occurrences' translateFor: self user).

	^report