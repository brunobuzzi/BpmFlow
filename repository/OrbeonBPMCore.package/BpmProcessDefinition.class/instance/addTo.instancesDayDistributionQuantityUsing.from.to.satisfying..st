distribution
addTo: distributionDictionary instancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock

	(processInstances select: [:each | | value |
		value := each perform: sortSelector.
		startDate <= value  and: [(value <= endDate) and: [processConditionBlock asBpmBlock value: each]]])
			do: [:each | | key value |
				value := each perform: sortSelector.
				key := value date asDays - startDate asDays.
				(distributionDictionary includesKey: key) 
					ifFalse: [distributionDictionary at: key put: 1] 
					ifTrue: [distributionDictionary at: key put: ((distributionDictionary at: (key)) + 1)]].

	^distributionDictionary