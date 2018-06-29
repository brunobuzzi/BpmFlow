distribution report
reportValueSumMultiDistributionFor: distributionDataCollection
	| secondsToRun distribution |

	distribution := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		distributionDataCollection do: [:eachReportFieldDescriptor |  | distributionReport |
			distributionReport := self reportValueSumDistributionFor: eachReportFieldDescriptor procName 
											in: eachReportFieldDescriptor appName 
											fieldNamed: eachReportFieldDescriptor fieldName 
											from: eachReportFieldDescriptor startTimeStamp 
											to: eachReportFieldDescriptor endTimeStamp 
											satisfying: eachReportFieldDescriptor satisfyingBlock.
			distributionReport seriesName: eachReportFieldDescriptor fieldName.
			distribution add: distributionReport.
		].
	].

	^(BpmFieldCollectionDistributionReport distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		canonizeXAxis;
		yourself.