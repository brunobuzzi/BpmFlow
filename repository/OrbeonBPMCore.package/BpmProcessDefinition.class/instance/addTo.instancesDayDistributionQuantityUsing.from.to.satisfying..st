distribution
addTo: distributionDictionary instancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: processConditionBlock
	| heatMapStartDate |

	heatMapStartDate := (startDate dayOfWeek = 1) ifTrue: [startDate] ifFalse: [startDate subtractDays: (startDate dayOfWeek - 1)].
	(processInstances select: [:procInstance | | value |
		value := procInstance perform: sortSelector.
		startDate <= value  and: [(value <= endDate) and: [processConditionBlock asBpmBlock value: procInstance]]])
			do: [:procInstance | | key value |
				value := procInstance perform: sortSelector.
				key := OrderedCollection with:  ((value date asDays - heatMapStartDate asDays) // 7).
				key add: (value date dayOfWeek - 1).
				(distributionDictionary includesKey: key asArray) 
					ifFalse: [distributionDictionary at: key asArray put: 1] 
					ifTrue: [distributionDictionary at: key asArray put: ((distributionDictionary at: key asArray) + 1)]].

	^distributionDictionary