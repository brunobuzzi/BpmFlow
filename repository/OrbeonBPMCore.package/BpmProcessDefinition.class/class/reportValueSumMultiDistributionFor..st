distribution report
reportValueSumMultiDistributionFor: distributionDataCollection
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [
		distribution := self getValueSumMultiDistributionFor: distributionDataCollection].
 
	^(BpmFieldCollectionDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		xAxisIsDate: true;
		yourself.