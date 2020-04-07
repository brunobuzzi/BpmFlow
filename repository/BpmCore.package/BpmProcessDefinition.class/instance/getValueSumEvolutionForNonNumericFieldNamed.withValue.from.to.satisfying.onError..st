distribution
getValueSumEvolutionForNonNumericFieldNamed: fieldName withValue: fieldValue from: startTimeStamp to: endTimeStamp satisfying: aBlock onError: handlerBlock
	"The receiver select instances from date <startTimeStamp> to date <startTimeStamp> satifying the query <aBlock>.
	For the selected instances then Sum all values equal to <fieldValue> for the field named <fieldName>.
	Answer a Dictionary where the key is a date and the value is the sum for the field"
	| distribution processCollection stringKeyDistribution |
 
	distribution := Dictionary new.
	stringKeyDistribution := Dictionary new.

	processCollection := (self getProcessInstancesCreatedFrom: startTimeStamp asDate to: endTimeStamp asDate) asSortedCollection: [:a :b | a createdTime <= b createdTime].
	[processCollection := processCollection select: aBlock] on: Error do: [:ex | handlerBlock value: ex. ^distribution]. 

	processCollection do: [:procInstance |  | fieldValues |
		fieldValues := (procInstance getValuesOfProcessField: fieldName) asSet. "avoid the same value the be counted twice (in forms with previous fields values where values are copied from on form to another)"
		distribution at: procInstance createdTime date ifAbsentPut: [0].
		fieldValues do: [:eachValue | | sum |
			sum := distribution at: procInstance createdTime date.
			(eachValue = fieldValue) ifTrue: [distribution at: procInstance createdTime date put: (sum + 1)]
		].
	].

	distribution keys asSortedCollection do: [:key | stringKeyDistribution at: key printString put: (distribution at: key)].
	
	^stringKeyDistribution