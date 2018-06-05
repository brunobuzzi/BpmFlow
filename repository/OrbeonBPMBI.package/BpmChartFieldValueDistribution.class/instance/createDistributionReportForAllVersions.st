other
createDistributionReportForAllVersions
	| report fieldInstancesCollection |

	fieldInstancesCollection := OrderedCollection new.
	self scope processes do: [:procDef | fieldInstancesCollection addAll: (procDef fieldInstancesOf: self fieldName in: self formName)].

	report := BpmProcessDefinition reportValueDistributionForFieldCollection: fieldInstancesCollection from: self startDate to: self endDate satisfying: self queryBlock.
	report 
		applicationName: self applicationName;
		processName: self processName;
		name: ('Processes Distribution by Field Value' translateFor: self user);
		description: ('Field Distribution', self scope scopeName translateFor: self user);
		seriesName: ('Occurrences' translateFor: self user);
		xTitle: ('Field Value' translateFor: self user);
		yTitle: ('Value Occurrences' translateFor: self user).

	^report