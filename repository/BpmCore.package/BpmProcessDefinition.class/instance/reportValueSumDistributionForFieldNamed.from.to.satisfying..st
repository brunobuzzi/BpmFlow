distribution report
reportValueSumDistributionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	""
	| secondsToRun distribution error |

	secondsToRun := Time secondsElapsedTime: [distribution := self getValueSumEvolutionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock onError: [:ex | error := ex]].
	
	^(BpmFieldDistributionReport processName: processName applicationName: self applicationName distribution: distribution)
			exception: error;
			sumSecondsToConstruct: secondsToRun;
			fieldName: fieldName;
			version: version;
			yourself