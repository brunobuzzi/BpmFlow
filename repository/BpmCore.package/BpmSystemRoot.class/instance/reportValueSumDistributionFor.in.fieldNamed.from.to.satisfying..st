statistics field
reportValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	| secondsToRun distribution error |

	secondsToRun := Time secondsElapsedTime: [
		distribution := self getValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock onError: [:ex | error := ex]].
 
	^(BpmFieldDistributionReport processName: procName applicationName: appName distribution: distribution)
		exception: error;
		fieldName: fieldName;
		sumSecondsToConstruct: secondsToRun;
		xAxisIsDate: true;
		yourself.