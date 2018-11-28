distribution report
reportValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [
		distribution := self getValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock].
 
	^(BpmFieldDistributionReport processName: procName applicationName: appName distribution: distribution)
		fieldName: fieldName;
		sumSecondsToConstruct: secondsToRun;
		xAxisIsDate: true;
		yourself.