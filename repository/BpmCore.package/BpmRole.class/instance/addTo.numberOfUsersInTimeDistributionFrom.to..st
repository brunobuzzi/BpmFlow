distribution
addTo: distributionDictionary numberOfUsersInTimeDistributionFrom: startDate to: endDate
	| heatMapStartDate |

	heatMapStartDate := (startDate dayOfWeek = 1) ifTrue: [startDate] ifFalse: [startDate subtractDays: (startDate dayOfWeek - 1)].

	(usersAssociations select: [:each | startDate <= each timeStamp date and:[each timeStamp date <= endDate]]) do: [:each | | key count |
		key := OrderedCollection with:  ((each timeStamp date asDays - heatMapStartDate asDays) // 7).
		key add: (each timeStamp date dayOfWeek - 1).
		count := each isGrantOperation ifTrue: [1] ifFalse: [-1].
		(distributionDictionary includesKey: key asArray)
		ifFalse: [distributionDictionary at: key asArray put: count] 
		ifTrue: [distributionDictionary at: key asArray put: ((distributionDictionary at: key asArray) + count)]
	].

	^distributionDictionary