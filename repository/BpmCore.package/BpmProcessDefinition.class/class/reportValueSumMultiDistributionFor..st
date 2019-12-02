distribution report
reportValueSumMultiDistributionFor: distributionDataCollection
	| secondsToRun distributionCollection |

	distributionCollection := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		distributionDataCollection do: [:eachReportFieldDescriptor |  | distributionReport |
			distributionReport := self reportValueSumDistributionFor: eachReportFieldDescriptor procName 
											in: eachReportFieldDescriptor appName 
											fieldNamed: eachReportFieldDescriptor fieldName 
											from: eachReportFieldDescriptor startTimeStamp 
											to: eachReportFieldDescriptor endTimeStamp 
											satisfying: eachReportFieldDescriptor satisfyingBlock.
			distributionReport seriesName: eachReportFieldDescriptor fieldName.
			distributionCollection add: distributionReport.
		].
	].

	^(BpmFieldCollectionDistributionReport distribution: distributionCollection)
		sumSecondsToConstruct: secondsToRun;
		canonizeXAxis;
		yourself.