distribution
getValueSumMultiDistributionFor: distributionDataCollection
	"Answer <aCollection> of <Dictionaries> where each <Dictionary> is Sum distribution for each element in <distributionDataCollection>.
	Check: #getValueSumDistributionFor:in:fieldNamed:from:to:satisfying:.
	<distributionDataCollection> is a collection of Arrays"
	|  distribution |

	distribution := OrderedCollection new.

	distributionDataCollection do: [:dataArray | | dataDistribution procName appName fieldName startTimeStamp endTimeStamp aBlock |
		appName := dataArray at: 1.
		procName := dataArray at: 2.
		fieldName := dataArray at: 3.
		startTimeStamp := dataArray at: 4.
		endTimeStamp := dataArray at: 5.
		aBlock := dataArray at: 6.
		dataDistribution := self getValueSumDistributionFor: procName in: appName fieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock.
		distribution add: dataDistribution.
	].

	^distribution