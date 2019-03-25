other
createDistributionReportForAllVersions
	| report fieldInstancesCollection |

	fieldInstancesCollection := OrderedCollection new.
	self scope processes do: [:procDef | fieldInstancesCollection addAll: (procDef fieldInstancesOf: self fieldName in: self formName)].

	report := self defaultProcessDefinitionClass reportValueDistributionForFieldCollection: fieldInstancesCollection from: self startDate to: self endDate satisfying: self queryBlock.
	report 
		applicationName: self applicationName;
		processName: self processName;
		name: ('Field Value Distribution' translateFor: self user);
		description: ('Processes Distribution by Field Value' translateFor: self user);
		seriesName: ('Occurrences' translateFor: self user);
		xTitle: ('Field Value' translateFor: self user);
		yTitle: ('Value Occurrences' translateFor: self user).

	^report