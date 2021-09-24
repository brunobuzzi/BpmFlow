statistics
addTo: anOrderPreservingDictionary valueDistributionForFieldCollection: fieldInstancesCollection
	"Answer a Dictionary where the key is a value of field <fieldName> and value is a quantity in the whole collection <fieldInstancesCollection>"

	fieldInstancesCollection do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString] . 
		(anOrderPreservingDictionary includesKey: fieldValue) ifFalse: [anOrderPreservingDictionary at: fieldValue put: 0].
		count := (anOrderPreservingDictionary at: fieldValue) + 1.
		anOrderPreservingDictionary at: fieldValue put: count.
	].

	^anOrderPreservingDictionary