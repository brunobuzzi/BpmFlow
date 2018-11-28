distribution report
reportValueSumDistributionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	""
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getValueSumEvolutionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock].
	
	^(BpmFieldDistributionReport processName: processName applicationName: self applicationName distribution: distribution)
			sumSecondsToConstruct: secondsToRun;
			fieldName: fieldName;
			version: version;
			yourself