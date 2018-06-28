distribution report
reportValueSumMultiDistributionFor: distributionDataCollection
	| secondsToRun distribution |

	distribution := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		distributionDataCollection do: [:dataArray | | dataDistribution procName appName fieldName startTimeStamp endTimeStamp aBlock |
			appName := dataArray at: 1.
			procName := dataArray at: 2.
			fieldName := dataArray at: 3.
			startTimeStamp := dataArray at: 4.
			endTimeStamp := dataArray at: 5.
			aBlock := dataArray at: 6.
			dataDistribution := self reportValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock.
			dataDistribution seriesName: fieldName.
			distribution add: dataDistribution.
		].
	].

	^(BpmFieldCollectionDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		canonizeXAxis;
		yourself.