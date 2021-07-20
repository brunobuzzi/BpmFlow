statistics field
reportValueSumMultiDistributionFor: processesDefinitions fieldNamed: aString values: anArray from: startDate to: endDate satisfying: selectBlock
	| secondsToRun distributionCollection error appName procName |

	distributionCollection := OrderedCollection new.
	appName := processesDefinitions last applicationName.
	procName := processesDefinitions last processName.
	secondsToRun := Time secondsElapsedTime: [
		anArray do: [:fieldValue |  | distributionReport distribution sumDistribution |
			sumDistribution := Dictionary new.
			processesDefinitions do: [:procDefinition | 
				distribution := procDefinition getValueSumEvolutionForNonNumericFieldNamed: aString withValue: fieldValue from: startDate to: endDate satisfying: selectBlock onError: [:ex | error := ex].
				distribution keysAndValuesDo: [:key :value | (sumDistribution includesKey: key) 
																			ifTrue: [sumDistribution at: key put: (value + (sumDistribution at: key))] 
																			ifFalse: [sumDistribution at: key put: value]].
			].
			distributionReport := (BpmFieldDistributionReport processName: procName applicationName: appName distribution: sumDistribution)
								exception: error;
								fieldName: aString;
								seriesName: fieldValue printString;
								xAxisIsDate: true;
								yourself.
			distributionCollection add: distributionReport.
		].
	].

	^(BpmFieldCollectionDistributionReport distribution: distributionCollection)
		sumSecondsToConstruct: secondsToRun;
		canonizeXAxis;
		yourself.