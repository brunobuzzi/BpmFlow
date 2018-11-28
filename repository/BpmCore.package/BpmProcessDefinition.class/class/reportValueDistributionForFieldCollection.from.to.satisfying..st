distribution report
reportValueDistributionForFieldCollection: fieldInstancesCollection from: startDate to: endDate satisfying: formConditionBlock
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| secondsToRun distribution fieldName |

	fieldName := fieldInstancesCollection ifEmpty: ['no-instances'] ifNotEmpty: [(fieldInstancesCollection at: 1) name].

	secondsToRun := Time secondsElapsedTime: [distribution := self getValueDistributionForFieldCollection: fieldInstancesCollection from: startDate to: endDate satisfying: formConditionBlock].
	
	^BpmFieldDistributionReport new 
			rootDistribution: distribution;
			sumSecondsToConstruct: secondsToRun;
			fieldName: fieldName;
			version: nil;
			yourself