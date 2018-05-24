other
createDistributionReport
	| report |

	report := BpmProcessDefinition reportProcessInstancesQuantityDistribution.
	report name: (('Distribution of BPM Process Instances' translateFor: self user),  ' (' , report getTotalValue printString, ')');
		description: ('Scope: Global' translateFor: self user);
		seriesName: 'Instances';
		xTitle: ('Application Name' translateFor: self user);
		yTitle: ('Process Instances' translateFor: self user).

	^report