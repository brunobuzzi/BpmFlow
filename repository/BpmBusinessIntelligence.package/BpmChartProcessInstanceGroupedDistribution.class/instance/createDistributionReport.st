other
createDistributionReport
	| report |

	report := self systemRoot reportProcessInstancesQuantityByVersionDistributionFor: self applicationName.
	report name: (('Distribution of BPM Process Instances' translateFor: self user),  ' (' , report getTotalValue printString, ')');
		description: ('Scope: ', self scope scopeName translateFor: self user);
		seriesName: 'Instances';
		xTitle: (self scope getProcessInstancesXtitle translateFor: self user);
		yTitle: ('Process Instances' translateFor: self user).

	^report