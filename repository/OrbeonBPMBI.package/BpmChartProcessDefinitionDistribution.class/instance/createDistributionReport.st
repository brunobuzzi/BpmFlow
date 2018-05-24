other
createDistributionReport
	| report |

	report := BpmProcessDefinition reportProcessDefinitionsQuantityDistribution.
	report name: (('Distribution of BPM Process Definitions' translateFor: self user),  ' (' , report getTotalValue printString, ')');
		description: ('Scope: Global' translateFor: self user);
		seriesName: 'Definitions';
		xTitle: ('Application Name' translateFor: self user);
		yTitle: ('Process Definitions' translateFor: self user).

	^report