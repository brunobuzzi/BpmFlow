distribution report
reportValueDistributionForFieldCollection: fieldInstancesCollection
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| secondsToRun distribution fieldName |

	fieldName := fieldInstancesCollection ifEmpty: ['no-instances'] ifNotEmpty: [(fieldInstancesCollection at: 1) name].

	secondsToRun := Time secondsElapsedTime: [distribution := self getValueDistributionForFieldCollection: fieldInstancesCollection].
	
	^(BpmProcessDistributionReport processName: processName applicationName: self applicationName distribution: distribution)
			sumSecondsToConstruct: secondsToRun;
			yourself