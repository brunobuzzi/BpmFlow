distribution
addTo: distributionDictionary instancesDayDistributionQuantityUsingBlock: aBlock from: startDate to: endDate satisfying: processConditionBlock onError: handler
	| heatMapStartDate |

	heatMapStartDate := (startDate dayOfWeek = 1) ifTrue: [startDate] ifFalse: [startDate subtractDays: (startDate dayOfWeek - 1)].
	(processInstances select: [:procInstance | | value |
		[value := aBlock value: procInstance] on: Error do: [:ex | handler value: ex. ^distributionDictionary].
		value notNil and: [startDate <= value  and: [(value <= endDate) and: [processConditionBlock asBpmBlock value: procInstance onError: handler]]]])
			do: [:procInstance | | key value |
				value := (aBlock value: procInstance) asTimeStamp.
				key := OrderedCollection with:  ((value date asDays - heatMapStartDate asDays) // 7).
				key add: (value date dayOfWeek - 1).
				(distributionDictionary includesKey: key asArray) 
					ifFalse: [distributionDictionary at: key asArray put: 1] 
					ifTrue: [distributionDictionary at: key asArray put: ((distributionDictionary at: key asArray) + 1)]
			].

	^distributionDictionary