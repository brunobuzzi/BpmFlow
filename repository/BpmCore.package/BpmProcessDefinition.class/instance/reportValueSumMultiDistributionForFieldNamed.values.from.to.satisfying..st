distribution report
reportValueSumMultiDistributionForFieldNamed: aString values: anArray from: startDate to: endDate satisfying: selectBlock
	| secondsToRun distributionCollection |

	distributionCollection := OrderedCollection new.
	secondsToRun := Time secondsElapsedTime: [
		anArray do: [:fieldValue |  | distributionReport |
			distributionReport := self reportValueSumDistributionForNonNumericFieldNamed: aString withValue: fieldValue from: startDate to: endDate satisfying: selectBlock.
			distributionReport seriesName: aString.
			distributionCollection add: distributionReport.
		].
	].

	^(BpmFieldCollectionDistributionReport distribution: distributionCollection)
		sumSecondsToConstruct: secondsToRun;
		canonizeXAxis;
		yourself.