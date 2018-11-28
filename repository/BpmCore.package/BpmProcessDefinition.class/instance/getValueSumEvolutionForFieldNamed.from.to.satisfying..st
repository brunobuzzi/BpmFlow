distribution
getValueSumEvolutionForFieldNamed: fieldName from: startTimeStamp to: endTimeStamp satisfying: aBlock
	"The receiver select instances from date <startTimeStamp> to date <startTimeStamp> satifying the query <aBlock>.
	For the selected instances then Sum all values for the field named <fieldName>.
	Answer a Dictionary where the key is a date and the value is the sum for the field"
	| distribution processCollection |
 
	distribution := Dictionary new.

	processCollection := (self getProcessInstancesCreatedFrom: startTimeStamp asDate to: endTimeStamp asDate) asSortedCollection: [:a :b | a createdTime <= b createdTime].
	processCollection := processCollection select: aBlock.

	processCollection do: [:procInstance |  | fieldValues |
		fieldValues := procInstance getValuesOfProcessField: fieldName.
		distribution at: procInstance createdTime date ifAbsentPut: [0].
		fieldValues do: [:eachValue | | sum |
			sum := distribution at: procInstance createdTime date.
			distribution at: procInstance createdTime date put: (sum + eachValue)] 
	].

	^distribution