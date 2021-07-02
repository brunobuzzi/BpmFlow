fetch instances
fetchFormsInstancesOn: instances from: startIndex to: endIndex

	instances ifEmpty: [^self].

	instances indexSpec specs isEmpty
	ifFalse: [self fetchIndexedFormsInstancesOn: instances from: startIndex to: endIndex] 
	ifTrue: [self fetchUnIndexedFormsInstancesOn: instances from: startIndex to: endIndex]