distribution report
reportValueSumDistributionForNonNumericFieldNamed: fieldName withValue: fieldValue from: startTimeStamp to: endTimeStamp satisfying: aBlock
	""
	| secondsToRun distribution error |

	secondsToRun := Time secondsElapsedTime: [distribution := self getValueSumEvolutionForNonNumericFieldNamed: fieldName withValue: fieldValue from: startTimeStamp to: endTimeStamp satisfying: aBlock onError: [:ex | error := ex]].
	
	^(BpmFieldDistributionReport processName: processName applicationName: self applicationName distribution: distribution)
			exception: error;
			sumSecondsToConstruct: secondsToRun;
			fieldName: fieldName;
			seriesName: fieldValue printString;
			version: version;
			xAxisIsDate: true;
			yourself