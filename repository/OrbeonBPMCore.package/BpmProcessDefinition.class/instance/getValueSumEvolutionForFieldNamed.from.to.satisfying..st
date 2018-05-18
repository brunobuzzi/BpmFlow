distribution
getValueSumEvolutionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	| distribution processCollection |
 
	distribution := OrderPreservingDictionary new.

	processCollection := (processInstances select: [:each | startTimeStamp <= each createdTime and: [each createdTime <= endTimeStamp]]) asSortedCollection: [:a :b | a createdTime <= b createdTime].
	processCollection  := processCollection  select: aBlock.

	processCollection do: [:procInstance |  | fieldValues |
		fieldValues := procInstance getValuesOfProcessField: fieldName.
		distribution at: procInstance createdTime date printString ifAbsentPut: [0].
		fieldValues do: [:eachValue | | sum |
			sum := distribution at: procInstance createdTime date printString.
			distribution at: procInstance createdTime date printString put: (sum + eachValue)] 
	].

	^distribution