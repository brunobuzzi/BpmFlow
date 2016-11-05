distribution
getValueDistributionForFieldCollection: fieldInstancesCollection
	"Answer a Dictionary where the key is a value of field <fieldName> and value is a quantity in the whole collection <fieldInstancesCollection>"
	| distribution |
 
	distribution := OrderPreservingDictionary new.

	fieldInstancesCollection do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString] . 
		(distribution includesKey: fieldValue) ifFalse: [distribution at: fieldValue put: 0].
		count := (distribution at: fieldValue) + 1.
		distribution at: fieldValue put: count.
	].

	^distribution